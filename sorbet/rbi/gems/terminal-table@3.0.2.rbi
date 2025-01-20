# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `terminal-table` gem.
# Please instead update this file by running `bin/tapioca gem terminal-table`.

# source://terminal-table//lib/terminal-table/cell.rb#3
module Terminal; end

# source://terminal-table//lib/terminal-table/cell.rb#4
class Terminal::Table
  # Generates a ASCII/Unicode table with the given _options_.
  #
  # @return [Table] a new instance of Table
  #
  # source://terminal-table//lib/terminal-table/table.rb#12
  def initialize(options = T.unsafe(nil), &block); end

  # Add a row.
  #
  # source://terminal-table//lib/terminal-table/table.rb#39
  def <<(array); end

  # Check if _other_ is equal to self. _other_ is considered equal
  # if it contains the same headings and rows.
  #
  # source://terminal-table//lib/terminal-table/table.rb#204
  def ==(other); end

  # Add a row.
  #
  # source://terminal-table//lib/terminal-table/table.rb#39
  def add_row(array); end

  # Add a separator.
  #
  # source://terminal-table//lib/terminal-table/table.rb#49
  def add_separator(border_type: T.unsafe(nil)); end

  # Align column _n_ to the given _alignment_ of :center, :left, or :right.
  #
  # source://terminal-table//lib/terminal-table/table.rb#29
  def align_column(n, alignment); end

  # source://terminal-table//lib/terminal-table/table.rb#57
  def cell_padding; end

  # source://terminal-table//lib/terminal-table/table.rb#53
  def cell_spacing; end

  # Return column _n_.
  #
  # source://terminal-table//lib/terminal-table/table.rb#64
  def column(n, method = T.unsafe(nil), array = T.unsafe(nil)); end

  # Return length of column _n_.
  #
  # source://terminal-table//lib/terminal-table/table.rb#96
  def column_width(n); end

  # Return _n_ column including headings.
  #
  # source://terminal-table//lib/terminal-table/table.rb#82
  def column_with_headings(n, method = T.unsafe(nil)); end

  # Return columns.
  #
  # source://terminal-table//lib/terminal-table/table.rb#89
  def columns; end

  # Elaborate rows to form an Array of Rows and Separators with adjacency properties added.
  #
  # This is separated from the String rendering so that certain features may be tweaked
  # before the String is built.
  #
  # source://terminal-table//lib/terminal-table/table.rb#126
  def elaborate_rows; end

  # Returns the value of attribute headings.
  #
  # source://terminal-table//lib/terminal-table/table.rb#7
  def headings; end

  # Set the headings
  #
  # source://terminal-table//lib/terminal-table/table.rb#111
  def headings=(arrays); end

  # Return length of column _n_.
  # for legacy support
  #
  # source://terminal-table//lib/terminal-table/table.rb#96
  def length_of_column(n); end

  # Return total number of columns available.
  #
  # source://terminal-table//lib/terminal-table/table.rb#104
  def number_of_columns; end

  # Render the table.
  #
  # source://terminal-table//lib/terminal-table/table.rb#169
  def render; end

  # Return rows without separator rows.
  #
  # source://terminal-table//lib/terminal-table/table.rb#178
  def rows; end

  # source://terminal-table//lib/terminal-table/table.rb#182
  def rows=(array); end

  # source://terminal-table//lib/terminal-table/table.rb#191
  def style; end

  # source://terminal-table//lib/terminal-table/table.rb#187
  def style=(options); end

  # Returns the value of attribute title.
  #
  # source://terminal-table//lib/terminal-table/table.rb#6
  def title; end

  # source://terminal-table//lib/terminal-table/table.rb#195
  def title=(title); end

  # Render the table.
  #
  # source://terminal-table//lib/terminal-table/table.rb#169
  def to_s; end

  private

  # source://terminal-table//lib/terminal-table/table.rb#367
  def column_widths; end

  # source://terminal-table//lib/terminal-table/table.rb#212
  def columns_width; end

  # Return headings combined with rows.
  #
  # source://terminal-table//lib/terminal-table/table.rb#346
  def headings_with_rows; end

  # source://terminal-table//lib/terminal-table/table.rb#216
  def recalc_column_widths; end

  # source://terminal-table//lib/terminal-table/table.rb#363
  def require_column_widths_recalc; end

  # source://terminal-table//lib/terminal-table/table.rb#359
  def title_cell_options; end

  # source://terminal-table//lib/terminal-table/table.rb#350
  def yield_or_eval(&block); end
end

# source://terminal-table//lib/terminal-table/style.rb#39
class Terminal::Table::AsciiBorder < ::Terminal::Table::Border
  # @return [AsciiBorder] a new instance of AsciiBorder
  #
  # source://terminal-table//lib/terminal-table/style.rb#44
  def initialize; end

  # Get horizontal border elements
  #
  # @return [Array] a 6 element list of: [i-left, horizontal-bar, i-up/down, i-right, i-down, i-up]
  #
  # source://terminal-table//lib/terminal-table/style.rb#57
  def horizontal(_type); end

  # Get vertical border elements
  #
  # @return [Array] 3-element list of [left, center, right]
  #
  # source://terminal-table//lib/terminal-table/style.rb#51
  def vertical; end
end

# source://terminal-table//lib/terminal-table/style.rb#40
Terminal::Table::AsciiBorder::HORIZONTALS = T.let(T.unsafe(nil), Array)

# source://terminal-table//lib/terminal-table/style.rb#42
Terminal::Table::AsciiBorder::INTERSECTIONS = T.let(T.unsafe(nil), Array)

# source://terminal-table//lib/terminal-table/style.rb#41
Terminal::Table::AsciiBorder::VERTICALS = T.let(T.unsafe(nil), Array)

# source://terminal-table//lib/terminal-table/style.rb#7
class Terminal::Table::Border
  # @return [Border] a new instance of Border
  #
  # source://terminal-table//lib/terminal-table/style.rb#10
  def initialize; end

  # source://terminal-table//lib/terminal-table/style.rb#16
  def [](key); end

  # source://terminal-table//lib/terminal-table/style.rb#13
  def []=(key, val); end

  # Returns the value of attribute bottom.
  #
  # source://terminal-table//lib/terminal-table/style.rb#9
  def bottom; end

  # Sets the attribute bottom
  #
  # @param value the value to set the attribute bottom to.
  #
  # source://terminal-table//lib/terminal-table/style.rb#9
  def bottom=(_arg0); end

  # Returns the value of attribute data.
  #
  # source://terminal-table//lib/terminal-table/style.rb#9
  def data; end

  # Sets the attribute data
  #
  # @param value the value to set the attribute data to.
  #
  # source://terminal-table//lib/terminal-table/style.rb#9
  def data=(_arg0); end

  # Returns the value of attribute left.
  #
  # source://terminal-table//lib/terminal-table/style.rb#9
  def left; end

  # Sets the attribute left
  #
  # @param value the value to set the attribute left to.
  #
  # source://terminal-table//lib/terminal-table/style.rb#9
  def left=(_arg0); end

  # If @left, return the edge else empty-string.
  #
  # source://terminal-table//lib/terminal-table/style.rb#32
  def maybeleft(key); end

  # If @right, return the edge else empty-string.
  #
  # source://terminal-table//lib/terminal-table/style.rb#35
  def mayberight(key); end

  # source://terminal-table//lib/terminal-table/style.rb#27
  def remove_horizontals; end

  # source://terminal-table//lib/terminal-table/style.rb#23
  def remove_verticals; end

  # Returns the value of attribute right.
  #
  # source://terminal-table//lib/terminal-table/style.rb#9
  def right; end

  # Sets the attribute right
  #
  # @param value the value to set the attribute right to.
  #
  # source://terminal-table//lib/terminal-table/style.rb#9
  def right=(_arg0); end

  # Returns the value of attribute top.
  #
  # source://terminal-table//lib/terminal-table/style.rb#9
  def top; end

  # Sets the attribute top
  #
  # @param value the value to set the attribute top to.
  #
  # source://terminal-table//lib/terminal-table/style.rb#9
  def top=(_arg0); end

  private

  # source://terminal-table//lib/terminal-table/style.rb#19
  def initialize_dup(other); end
end

# source://terminal-table//lib/terminal-table/cell.rb#5
class Terminal::Table::Cell
  # Initialize with _options_.
  #
  # @return [Cell] a new instance of Cell
  #
  # source://terminal-table//lib/terminal-table/cell.rb#19
  def initialize(options = T.unsafe(nil)); end

  # source://terminal-table//lib/terminal-table/cell.rb#46
  def align(val, position, length); end

  # source://terminal-table//lib/terminal-table/cell.rb#33
  def alignment; end

  # source://terminal-table//lib/terminal-table/cell.rb#37
  def alignment=(val); end

  # @return [Boolean]
  #
  # source://terminal-table//lib/terminal-table/cell.rb#29
  def alignment?; end

  # Column span.
  #
  # source://terminal-table//lib/terminal-table/cell.rb#14
  def colspan; end

  # source://terminal-table//lib/terminal-table/cell.rb#85
  def inspect; end

  # source://terminal-table//lib/terminal-table/cell.rb#50
  def lines; end

  # Render the cell.
  #
  # source://terminal-table//lib/terminal-table/cell.rb#57
  def render(line = T.unsafe(nil)); end

  # Render the cell.
  #
  # source://terminal-table//lib/terminal-table/cell.rb#57
  def to_s(line = T.unsafe(nil)); end

  # Cell value.
  #
  # source://terminal-table//lib/terminal-table/cell.rb#9
  def value; end

  # Returns the longest line in the cell and
  # removes all ANSI escape sequences (e.g. color)
  #
  # source://terminal-table//lib/terminal-table/cell.rb#70
  def value_for_column_width_recalc; end

  # Returns the width of this cell
  #
  # source://terminal-table//lib/terminal-table/cell.rb#77
  def width; end
end

# source://terminal-table//lib/terminal-table/style.rb#63
class Terminal::Table::MarkdownBorder < ::Terminal::Table::AsciiBorder
  # @return [MarkdownBorder] a new instance of MarkdownBorder
  #
  # source://terminal-table//lib/terminal-table/style.rb#64
  def initialize; end
end

# source://terminal-table//lib/terminal-table/row.rb#3
class Terminal::Table::Row
  # Initialize with _width_ and _options_.
  #
  # @return [Row] a new instance of Row
  #
  # source://terminal-table//lib/terminal-table/row.rb#15
  def initialize(table, array = T.unsafe(nil), **_kwargs); end

  # source://terminal-table//lib/terminal-table/row.rb#22
  def <<(item); end

  # source://terminal-table//lib/terminal-table/row.rb#30
  def [](index); end

  # source://terminal-table//lib/terminal-table/row.rb#22
  def add_cell(item); end

  # Row cells
  #
  # source://terminal-table//lib/terminal-table/row.rb#8
  def cells; end

  # used to find indices where we have table '+' crossings.
  # in cases where the colspan > 1, then we will skip over some numbers
  # if colspan is always 1, then the list should be incrementing by 1.
  #
  # skip 0 entry, because it's the left side.
  # skip last entry, because it's the right side.
  # we only care about "+/T" style crossings.
  #
  # source://terminal-table//lib/terminal-table/row.rb#58
  def crossings; end

  # source://terminal-table//lib/terminal-table/row.rb#34
  def height; end

  # source://terminal-table//lib/terminal-table/row.rb#47
  def number_of_columns; end

  # source://terminal-table//lib/terminal-table/row.rb#38
  def render; end

  # Returns the value of attribute table.
  #
  # source://terminal-table//lib/terminal-table/row.rb#10
  def table; end
end

# source://terminal-table//lib/terminal-table/separator.rb#3
class Terminal::Table::Separator < ::Terminal::Table::Row
  # `prevrow`, `nextrow` contain references to adjacent rows.
  #
  # `border_type` is a symbol used to control which type of border is used
  # on the separator (:top for top-edge, :bot for bottom-edge,
  # :div for interior, and :strong for emphasized-interior)
  #
  # `implicit` is false for user-added separators, and true for
  # implicit/auto-generated separators.
  #
  # @return [Separator] a new instance of Separator
  #
  # source://terminal-table//lib/terminal-table/separator.rb#15
  def initialize(*args, border_type: T.unsafe(nil), implicit: T.unsafe(nil)); end

  # Returns the value of attribute border_type.
  #
  # source://terminal-table//lib/terminal-table/separator.rb#22
  def border_type; end

  # Sets the attribute border_type
  #
  # @param value the value to set the attribute border_type to.
  #
  # source://terminal-table//lib/terminal-table/separator.rb#22
  def border_type=(_arg0); end

  # Returns the value of attribute implicit.
  #
  # source://terminal-table//lib/terminal-table/separator.rb#23
  def implicit; end

  # source://terminal-table//lib/terminal-table/separator.rb#25
  def render; end

  # Save off neighboring rows, so that we can use them later in determining
  # which types of table edges to use.
  #
  # source://terminal-table//lib/terminal-table/separator.rb#59
  def save_adjacent_rows(prevrow, nextrow); end
end

# A Style object holds all the formatting information for a Table object
#
# To create a table with a certain style, use either the constructor
# option <tt>:style</tt>, the Table#style object or the Table#style= method
#
# All these examples have the same effect:
#
#     # by constructor
#     @table = Table.new(:style => {:padding_left => 2, :width => 40})
#
#     # by object
#     @table.style.padding_left = 2
#     @table.style.width = 40
#
#     # by method
#     @table.style = {:padding_left => 2, :width => 40}
#
# To set a default style for all tables created afterwards use Style.defaults=
#
#     Terminal::Table::Style.defaults = {:width => 80}
#
# source://terminal-table//lib/terminal-table/style.rb#190
class Terminal::Table::Style
  extend ::Forwardable

  # @return [Style] a new instance of Style
  #
  # source://terminal-table//lib/terminal-table/style.rb#248
  def initialize(options = T.unsafe(nil)); end

  # Returns the value of attribute alignment.
  #
  # source://terminal-table//lib/terminal-table/style.rb#243
  def alignment; end

  # Sets the attribute alignment
  #
  # @param value the value to set the attribute alignment to.
  #
  # source://terminal-table//lib/terminal-table/style.rb#243
  def alignment=(_arg0); end

  # Returns the value of attribute all_separators.
  #
  # source://terminal-table//lib/terminal-table/style.rb#245
  def all_separators; end

  # Sets the attribute all_separators
  #
  # @param value the value to set the attribute all_separators to.
  #
  # source://terminal-table//lib/terminal-table/style.rb#245
  def all_separators=(_arg0); end

  # source://terminal-table//lib/terminal-table/style.rb#252
  def apply(options); end

  # Accessor for instance of Border
  #
  # source://terminal-table//lib/terminal-table/style.rb#210
  def border; end

  # source://terminal-table//lib/terminal-table/style.rb#211
  def border=(val); end

  # source://terminal-table//lib/terminal-table/style.rb#232
  def border_bottom; end

  # source://terminal-table//lib/terminal-table/style.rb#227
  def border_bottom=(val); end

  # source://terminal-table//lib/terminal-table/style.rb#205
  def border_i=(val); end

  # source://terminal-table//lib/terminal-table/style.rb#233
  def border_left; end

  # source://terminal-table//lib/terminal-table/style.rb#228
  def border_left=(val); end

  # source://terminal-table//lib/terminal-table/style.rb#234
  def border_right; end

  # source://terminal-table//lib/terminal-table/style.rb#229
  def border_right=(val); end

  # source://terminal-table//lib/terminal-table/style.rb#231
  def border_top; end

  # source://terminal-table//lib/terminal-table/style.rb#226
  def border_top=(val); end

  # settors/gettor for legacy ascii borders
  #
  # source://terminal-table//lib/terminal-table/style.rb#203
  def border_x=(val); end

  # source://terminal-table//lib/terminal-table/style.rb#206
  def border_y; end

  # source://terminal-table//lib/terminal-table/style.rb#204
  def border_y=(val); end

  # source://terminal-table//lib/terminal-table/style.rb#207
  def border_y_width; end

  # source://forwardable/1.3.2/forwardable.rb#229
  def horizontal(*args, **_arg1, &block); end

  # Returns the value of attribute margin_left.
  #
  # source://terminal-table//lib/terminal-table/style.rb#240
  def margin_left; end

  # Sets the attribute margin_left
  #
  # @param value the value to set the attribute margin_left to.
  #
  # source://terminal-table//lib/terminal-table/style.rb#240
  def margin_left=(_arg0); end

  # source://terminal-table//lib/terminal-table/style.rb#273
  def on_change(attr); end

  # Returns the value of attribute padding_left.
  #
  # source://terminal-table//lib/terminal-table/style.rb#237
  def padding_left; end

  # Sets the attribute padding_left
  #
  # @param value the value to set the attribute padding_left to.
  #
  # source://terminal-table//lib/terminal-table/style.rb#237
  def padding_left=(_arg0); end

  # Returns the value of attribute padding_right.
  #
  # source://terminal-table//lib/terminal-table/style.rb#238
  def padding_right; end

  # Sets the attribute padding_right
  #
  # @param value the value to set the attribute padding_right to.
  #
  # source://terminal-table//lib/terminal-table/style.rb#238
  def padding_right=(_arg0); end

  # source://forwardable/1.3.2/forwardable.rb#229
  def remove_horizontals(*args, **_arg1, &block); end

  # source://forwardable/1.3.2/forwardable.rb#229
  def remove_verticals(*args, **_arg1, &block); end

  # source://forwardable/1.3.2/forwardable.rb#229
  def vertical(*args, **_arg1, &block); end

  # Returns the value of attribute width.
  #
  # source://terminal-table//lib/terminal-table/style.rb#242
  def width; end

  # Sets the attribute width
  #
  # @param value the value to set the attribute width to.
  #
  # source://terminal-table//lib/terminal-table/style.rb#242
  def width=(_arg0); end

  class << self
    # source://terminal-table//lib/terminal-table/style.rb#259
    def defaults; end

    # source://terminal-table//lib/terminal-table/style.rb#267
    def defaults=(options); end
  end
end

# source://terminal-table//lib/terminal-table/table_helper.rb#3
module Terminal::Table::TableHelper
  # source://terminal-table//lib/terminal-table/table_helper.rb#4
  def table(headings = T.unsafe(nil), *rows, &block); end
end

# source://terminal-table//lib/terminal-table/style.rb#71
class Terminal::Table::UnicodeBorder < ::Terminal::Table::Border
  # @return [UnicodeBorder] a new instance of UnicodeBorder
  #
  # source://terminal-table//lib/terminal-table/style.rb#89
  def initialize; end

  # Get horizontal border elements
  #
  # @raise [ArgumentError]
  # @return [Array] a 6 element list of: [i-left, horizontal-bar, i-up/down, i-right, i-down, i-up]
  #
  # source://terminal-table//lib/terminal-table/style.rb#112
  def horizontal(type); end

  # Get vertical border elements
  #
  # @return [Array] 3-element list of [left, center, right]
  #
  # source://terminal-table//lib/terminal-table/style.rb#106
  def vertical; end
end

# source://terminal-table//lib/terminal-table/style.rb#73
Terminal::Table::UnicodeBorder::ALLOWED_SEPARATOR_BORDER_STYLES = T.let(T.unsafe(nil), Array)

# source://terminal-table//lib/terminal-table/style.rb#82
Terminal::Table::UnicodeBorder::HORIZONTALS = T.let(T.unsafe(nil), Array)

# source://terminal-table//lib/terminal-table/style.rb#84
Terminal::Table::UnicodeBorder::INTERSECTIONS = T.let(T.unsafe(nil), Array)

# source://terminal-table//lib/terminal-table/style.rb#83
Terminal::Table::UnicodeBorder::VERTICALS = T.let(T.unsafe(nil), Array)

# Unicode Border With rounded edges
#
# source://terminal-table//lib/terminal-table/style.rb#143
class Terminal::Table::UnicodeRoundBorder < ::Terminal::Table::UnicodeBorder
  # @return [UnicodeRoundBorder] a new instance of UnicodeRoundBorder
  #
  # source://terminal-table//lib/terminal-table/style.rb#144
  def initialize; end
end

# Unicode Border with thick outer edges
#
# source://terminal-table//lib/terminal-table/style.rb#151
class Terminal::Table::UnicodeThickEdgeBorder < ::Terminal::Table::UnicodeBorder
  # @return [UnicodeThickEdgeBorder] a new instance of UnicodeThickEdgeBorder
  #
  # source://terminal-table//lib/terminal-table/style.rb#152
  def initialize; end
end

# source://terminal-table//lib/terminal-table/util.rb#3
module Terminal::Table::Util
  private

  # removes all ANSI escape sequences (e.g. color)
  #
  # source://terminal-table//lib/terminal-table/util.rb#5
  def ansi_escape(line); end

  class << self
    # removes all ANSI escape sequences (e.g. color)
    #
    # source://terminal-table//lib/terminal-table/util.rb#5
    def ansi_escape(line); end
  end
end

# source://terminal-table//lib/terminal-table/version.rb#3
Terminal::Table::VERSION = T.let(T.unsafe(nil), String)
