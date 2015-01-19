# Feel free to delete the instructions once you get going
puts instructions(__FILE__)

class Bottles
  def verse(num)
    case(num)
    when(2)
      "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
    when(1)
      "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    when(0)
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\nTake one down and pass it around, #{num-1} bottles of beer on the wall.\n"
    end
  end

  def verses(start, stop)
    v = []
    start.downto(stop) do |i|
      v << verse(i)
    end

    return v.join("\n")
  end
end
