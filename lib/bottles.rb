require "pry"
class Bottles
  def verse(verse_number)
    case verse_number
    when 2
      verse_for_two_bottles
    when 1
      verse_for_one_bottle
    when 0
      verse_for_no_bottles
    else
      standard_verse(verse_number)
    end
  end

  def standard_verse(num_of_bottles)
    "#{num_of_bottles} bottles of beer on the wall, " +
    "#{num_of_bottles} bottles of beer.\n" +
    "Take one down and pass it around, " +
    "#{num_of_bottles-1} bottles of beer on the wall.\n"
  end

  def verse_for_two_bottles
    "2 bottles of beer on the wall, " +
    "2 bottles of beer.\n" +
    "Take one down and pass it around, " +
    "1 bottle of beer on the wall.\n"
  end

  def verse_for_one_bottle
    "1 bottle of beer on the wall, " +
    "1 bottle of beer.\n" +
    "Take it down and pass it around, " +
    "no more bottles of beer on the wall.\n"
  end

  def verse_for_no_bottles
    "No more bottles of beer on the wall, " +
    "no more bottles of beer.\n" +
    "Go to the store and buy some more, " +
    "99 bottles of beer on the wall.\n"
  end

  def verses(verse_start, verse_stop)
    verses_to_sing = []
    (verse_start).downto(verse_stop) { |v| verses_to_sing << "#{verse(v)}" }
    verses_to_sing.join("\n")
  end

  def song
    song_lyrics = []
    (99).downto(0) { |v| song_lyrics << "#{verse(v)}" }
    song_lyrics.join("\n")
  end
end

