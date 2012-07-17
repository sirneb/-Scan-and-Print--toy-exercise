# Convert inputted string of numbers to words mapped from inputted hash
#
class ScanAndPrint
  attr_accessor :input_string, :input_hash

  def initialize(args)
    @input_string = args[:input_string] 
    @input_hash = args[:input_hash]
  end

  ## Print the final output
  def print
    number_array.map { |element| @input_hash[element] }.join(' ')

    ## DO NOT LIKE(but works)
    # number_array.each_index.inject("") do |return_string, n|
    #   return_string += @input_hash[number_array[n]]
    #   return_string += " " unless (number_array.size-1) == n
    #   
    #   # need b/c "unless" clause returns nil when done
    #   return_string 
    # end

  end

  private

  ## Scan the string and gives the array in order
  #
  # Example: ['58', '24', '44']
  def number_array
    @input_string.split(' ')
  end
end
