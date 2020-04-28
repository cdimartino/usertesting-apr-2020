class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    <<~EOL
    #{how_many(number).capitalize} #{container(number)} of beer on the wall, #{how_many(number)} #{container(number)} of beer.
    #{action(number)}, #{how_many(successor(number))} #{container(successor(number))} of beer on the wall.
    EOL
  end

  def successor(number)
    number == 0 ? 99 : number - 1
  end

  def action(number)
    number == 0 ? "Go to the store and buy some more" : "Take #{pronoun(number)} down and pass it around"
  end

  def container(number)
    number == 1 ? "bottle" : "bottles"
  end

  def pronoun(number)
    number == 1 ? "it" : "one"
  end

  def how_many(number)
    number == 0 ? "no more" : number.to_s
  end
end
