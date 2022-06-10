# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn

  def initialize(name)

    @name = name
    @color = "silver"

  end

  def say(speech)

    puts "*~* #{speech} *~*"

  end
end

uni = Unicorn.new("Barbra")

uni.say("hello world")



#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire

  def initialize(name, pet = "bat")

    @name = name
    @pet = pet
    @thirsty = true

  end

  def drink

    @thristy = false

  end

end

drac = Vampire.new("Dracula", "thrall")

psych = Vampire.new("Collin Robinson",)


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon

  attr_reader :hunger
  attr_reader :is_hungry

  def initialize(name, rider, color)
    if (name.is_a?(String) && rider.is_a?(String) && color.is_a?(String))

      @name = name
      @rider = rider
      @color = color
      @is_hungry = true
      @hunger = 4

    else

      raise "Input must be in the form of a string"

    end
  end

  def eat
    if @hunger == 0

      @is_hungry = false
      puts "#{@name} is stuffed!"

    else

      @hunger = @hunger - 1

      if @hunger == 0

        puts "#{@name} is full!"

      end
    end

  end
end

saph = Dragon.new("Sapphira", "Eragon", "Blue")

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit

  attr_reader :age
  attr_reader :is_adult
  attr_reader :is_old

    def initialize(name, disp, age = 0)
      if (name.is_a?(String) && disp.is_a?(String))

          @name = name
          @disp = disp
          @age = age
          @has_ring = false
          @is_adult = false
          @is_old = false

          if name.capitalize == "Frodo"
              @has_ring = true
          end

          if age > 101
            @is_old = true
          elsif age > 33
            @is_adult = true
          end

      else

          raise "Input must be correct datatype"

      end
    end



    def celebrate_birthday

      @age = @age + 1

      if @age > 101

        @is_old = true
        elsif age > 33
        @is_adult = true

      end

    end


end


fro = Hobbit.new("FRODO", "adventurous", 31)

bilb = Hobbit.new("Bilbo", "(Re)tired", 99)

baby = Hobbit.new("Tiny man", "Cranky")


p fro
p bilb
p baby

puts "\n"


    fro.celebrate_birthday
    bilb.celebrate_birthday
    puts "frodo:"
    p fro.age
    p fro.is_adult

    puts "\n"

    puts "bilbo:"
    p bilb.age
    p bilb.is_old
    puts "\n"



    fro.celebrate_birthday
    bilb.celebrate_birthday
    puts "frodo:"
    p fro.age
    p fro.is_adult

    puts "\n"

    puts "bilbo:"
    p bilb.age
    p bilb.is_old
    puts "\n"



    fro.celebrate_birthday
    bilb.celebrate_birthday
    puts "frodo:"
    p fro.age
    p fro.is_adult

    puts "\n"

    puts "bilbo:"
    p bilb.age
    p bilb.is_old
    puts "\n"
