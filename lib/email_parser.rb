# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailAddressParser
  def initialize(string)
    @string = string
  end

  def parse
    split_array = @string.split(/[, ]/)
    split_array.each do |element|
      if element == ""
        split_array.delete(element)
      end
    end
    split_array.uniq!
    return split_array
  end
end

# binding.pry