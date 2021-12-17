# Dependency Updater

A *dependency updater* is responsible for updating a dependent package
according to a set of requirements.
It provides a minimal interface for languages to add Dependabot support
by delegating responsibilities to a package manager for that language.

## Public API

Each `Dependabot::DependencyUpdaters` class inherits from `Base` 
and implements the following methods:

### `#update(dependency:, requirements:)`

Updates a dependency according to the provided requirements.
This method is called within the root directory of a project.

#### Arguments

| Argument       | Type                     | Description                      |
| -------------- | ------------------------ | -------------------------------- |
| `dependency`   | `Dependabot::Dependency` | The package dependency to update |
| `requirements` | `VersionRange`           | The updated version constraints  |

#### Return

Returns `true` if the dependency was successfully updated 
to satisfy the new requirements.

#### Raise

This method should raise an exception to communicate underlying errors
in the package manager.

#### Example

```ruby
require 'dependabot/dependency_updaters'

# Creating and registering a dependency updater

module Dart
  class Pub < Dependabot::DependencyUpdaters::Base
    class Error < StandardError; end

    def update(dependency:, requirements:)      
      system "dart pub upgrade #{dependency.name} --requirements #{requirements}"
    rescue => e
      raise Error.new(e.message)
    end
  end
end

Dependabot::DependencyUpdaters.register("pub", Dart::Pub)

# Updating a dependency

dependency = Dependency.new(package_url: "pkg://pub/http_parser")
requirements = VersionRange.parse(">=4.0.0")

dependency_updater = Dependabot::DependencyUpdaters.for(dependency.package_manager)
dependency_updater.update(dependency: dependency, requirements: requirements)
```