# typed: false
# frozen_string_literal: true

require "dependabot/npm_and_yarn/package_manager"
require "spec_helper"

RSpec.describe Dependabot::NpmAndYarn::PackageManagerDetector do
  let(:npm_lockfile) do
    instance_double(
      Dependabot::DependencyFile,
      name: "package-lock.json",
      content: <<~LOCKFILE
        {
          "name": "example-npm-project",
          "version": "1.0.0",
          "lockfileVersion": 2,
          "requires": true,
          "dependencies": {
            "lodash": {
              "version": "4.17.21",
              "resolved": "https://registry.npmjs.org/lodash/-/lodash-4.17.21.tgz",
              "integrity": "sha512-abc123"
            }
          }
        }
      LOCKFILE
    )
  end

  let(:yarn_lockfile) do
    instance_double(
      Dependabot::DependencyFile,
      name: "yarn.lock",
      content: <<~LOCKFILE
        # THIS IS AN AUTOGENERATED FILE. DO NOT EDIT THIS FILE DIRECTLY.
        # yarn lockfile v1

        lodash@^4.17.20:
          version "4.17.21"
          resolved "https://registry.yarnpkg.com/lodash/-/lodash-4.17.21.tgz#abc123"
          integrity sha512-abc123
      LOCKFILE
    )
  end

  let(:pnpm_lockfile) do
    instance_double(
      Dependabot::DependencyFile,
      name: "pnpm-lock.yaml",
      content: <<~LOCKFILE
        lockfileVersion: 5.4

        dependencies:
          lodash:
            specifier: ^4.17.20
            version: 4.17.21
            resolution:
              integrity: sha512-abc123
              tarball: https://registry.npmjs.org/lodash/-/lodash-4.17.21.tgz
      LOCKFILE
    )
  end

  let(:lockfiles) { { npm: npm_lockfile, yarn: yarn_lockfile, pnpm: pnpm_lockfile } }
  let(:package_json) { { "packageManager" => "npm@7" } }
  let(:detector) { described_class.new(lockfiles, package_json) }

  describe "#detect_package_manager" do
    context "when npm lockfile exists" do
      it "returns npm as the package manager" do
        expect(detector.detect_package_manager).to eq("npm")
      end
    end

    context "when yarn lockfile exists and npm lockfile is absent" do
      let(:lockfiles) { { yarn: yarn_lockfile } }

      it "returns yarn as the package manager" do
        expect(detector.detect_package_manager).to eq("yarn")
      end
    end

    context "when pnpm lockfile exists and other lockfiles are absent" do
      let(:lockfiles) { { pnpm: pnpm_lockfile } }

      it "returns pnpm as the package manager" do
        expect(detector.detect_package_manager).to eq("pnpm")
      end
    end

    context "when no lockfile but packageManager attribute exists in package.json" do
      let(:lockfiles) { {} }

      it "returns npm from packageManager attribute" do
        expect(detector.detect_package_manager).to eq("npm")
      end
    end

    context "when no lockfile and packageManager attribute, but engines field exists" do
      let(:lockfiles) { {} }

      context "when there is single package manager in engines" do
        let(:lockfiles) { {} }
        let(:package_json) { { "engines" => { "yarn" => "1" } } }

        it "returns yarn from engines field" do
          expect(detector.detect_package_manager).to eq("yarn")
        end
      end

      context "when there are multiple package managers (npm, yarn, pnpm) in engines" do
        let(:lockfiles) { {} }
        let(:package_json) { { "engines" => { "npm" => "1", "yarn" => "1", "pnpm" => "1", "node" => "2" } } }

        it "returns first (npm) found valid package manager in order of (npm, yarn, pnpm)" do
          expect(detector.detect_package_manager).to eq("npm")
        end
      end

      context "when there are multiple package managers (npm, yarn, pnpm) in engines" do
        let(:lockfiles) { {} }
        let(:package_json) { { "engines" => { "node" => "2", "yarn" => "1", "pnpm" => "1" } } }

        it "returns first (yarn) found valid package manager in order of (npm, yarn, pnpm)" do
          expect(detector.detect_package_manager).to eq("yarn")
        end
      end

      context "when there are multiple package managers in engines" do
        let(:lockfiles) { {} }
        let(:package_json) { { "engines" => { "npm" => "1", "yarn" => "1", "pnpm" => "1", "unknown" => "2" } } }

        it "returns npm from engines field" do
          expect(detector.detect_package_manager).to eq("npm")
        end
      end

      context "when there is zero package manager in engines" do
        let(:lockfiles) { {} }
        let(:package_json) { { "engines" => {} } }

        it "returns default (npm) when no package manager can be detected" do
          expect(detector.detect_package_manager).to eq("npm")
        end
      end

      context "when there are unknown keys in the engines" do
        let(:lockfiles) { {} }
        let(:package_json) { { "engines" => { "node" => "1" } } }

        it "returns default (npm)" do
          expect(detector.detect_package_manager).to eq("npm")
        end
      end
    end

    context "when neither lockfile, packageManager, nor engines field exists" do
      let(:lockfiles) { {} }
      let(:package_json) { {} }

      it "returns default (npm)" do
        expect(detector.detect_package_manager).to eq("npm")
      end
    end
  end
end
