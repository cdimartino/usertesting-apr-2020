# frozen_string_literal: true

class Bottles
  def song
    verses 99, 0
  end

  def verse(count)
    case count
    when 0
      <<~EOL
        No more bottles of beer on the wall,
        No more bottles of beer.
        Go to the store and buy some more,
        99 bottles of beer on the wall.
      EOL
    when 1
      <<~EOL
        1 bottle of beer on the wall,
        1 bottle of beer.
        Take it down and pass it around,
        No bottles of beer on the wall.
      EOL
    when 2
      <<~EOL
        2 bottles of beer on the wall,
        2 bottles of beer.
        Take one down and pass it around,
        1 bottle of beer on the wall.
      EOL
    else
      <<~EOL
        #{count} bottles of beer on the wall,
        #{count} bottles of beer.
        Take one down and pass it around,
        #{count - 1} bottles of beer on the wall.
      EOL
    end
  end

  def verses(max, min)
    max.downto(min).map { |count| verse count }.join("\n")
  end
end
