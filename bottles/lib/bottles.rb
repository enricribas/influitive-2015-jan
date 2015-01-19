# Feel free to delete the instructions once you get going
puts instructions(__FILE__)

class Bottles
  def verse(number)
    verse = <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
    return verse if number == 0

    current      = "#{number} bottle"
    current      = current + "s" if number > 1

    number_after = number -1
    after        = "#{ number_after } bottle"
    after        = after + "s" if number_after > 1
    after        = "no more bottles" if number_after == 0

    pronoun      = "one"
    pronoun      = "it" if number_after == 0

    <<-VERSE
#{current} of beer on the wall, #{current} of beer.
Take #{pronoun} down and pass it around, #{after} of beer on the wall.
VERSE
  end

  def verses(first, second)
    str = []

    (second..first).to_a.reverse.each do |number|
      str << verse(number)
    end

    str.join("\n")
  end
end
