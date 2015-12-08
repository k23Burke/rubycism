class Phrase
  VERSION = 1

  attr_accessor :word_count

  def initialize(s)
    @word_array = s.split(/\s|,|\.|:|!|@|#|\$|%|\^|&/)
    fix_word_array
    @word_count = { }
    determine_word_count
  end

  def fix_word_array
    @word_array.each_index do |i|
      @word_array[i] = @word_array[i].downcase
      if @word_array[i][0] == "'" && @word_array[i][@word_array[i].length - 1] == "'"
        @word_array[i] = @word_array[i][1..@word_array[i].length - 2]
      end
    end

    @word_array.delete_if do |word|
      if word == ""
        true
      end
    end
  end

  def determine_word_count
    @word_array.each do |word|
      total = 0
      @word_array.each do |word2|
        if word == word2
          total += 1
        end
      end
      @word_count[word] = total
    end
  end

end