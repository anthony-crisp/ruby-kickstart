# This problem is based off of example 2
# Modify it so that it also tracks a person's age and a quote
# Allow any of these to be set with a hash as well, but the block should overwrite the hash
#
#
# EXAMPLE:
#
# artist = Person.new :name => 'Prince' do |person|
#   person.age   = 47
#   person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
# end
#
# artist.name   # => "Prince"
# artist.age    # => 47
#
# artist.name = 'The Artist Formarly Known As Prince'
# artist.age  = 1999
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 1999
#
# artist.reinit
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 47


class Person

  attr_accessor :name, :age, :quote #getter and setter methods

  def initialize(options=Hash.new, &initializer) #Initializes a new instance of Person with a hash and a block.
    self.name    = options[:name] #sets a key in the hash to name and a value to name passed on initialize.
    self.age     = options[:age] #sets the next key in the hash to age and a value to age passed on initialize.
    self.quote   = options[:quote] #sets the next key in the hash to quote and a value to quote passed on initialize.
    @initializer = (initializer || Proc.new { |person| }) #Either a block is passed or a new Proc is created that re-calls the Person initialize method.
    reinit #Returns the result of the reinit method defined bellow.
  end


  def reinit
    @initializer.call self #Either calls the block passed or calls the Proc and re-initializes the instance of Person.
  end
end
