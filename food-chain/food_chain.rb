class FoodChain
  VERSION = 2;

  def self.song
    @items = {
      fly:    "I don't know why she swallowed the fly. Perhaps she'll die.",
      spider: "It wriggled and jiggled and tickled inside her.",
      bird:   "How absurd to swallow a bird!",
      cat:    "Imagine that, to swallow a cat!",
      dog:    "What a hog, to swallow a dog!",
      goat:   "Just opened her throat and swallowed a goat!",
      cow:    "I don't know how she swallowed a cow!",
      horse:  "She's dead, of course!"
    }

    @order = [:fly, :spider, :bird, :cat, :dog, :goat, :cow, :horse]
    count = @order.count - 1
    str = ""
    newline = "\n"
    # item.keys.each_with_index do |key, i|
    @order.each_with_index do |item, i|
      str += "I know an old lady who swallowed a #{item.to_s}.#{newline}"
      if i != 0
        str += @items[@order[i].to_sym]
        if i != @order.count - 1
          str += newline
        end
      end
      if i != 0 && i != @order.count - 1
        j = i
        while j > 0 do
          if j == 2
            str += "She swallowed the #{@order[j].to_sym} to catch the #{@order[j-1].to_sym} that wriggled and jiggled and tickled inside her.#{newline}"
          else
            str += "She swallowed the #{@order[j].to_sym} to catch the #{@order[j-1].to_sym}.#{newline}"
          end
          j -= 1
        end
      end
      if i != @order.count - 1
        str += @items[:fly] + newline
      end
      str += newline
    end
    puts str
    str
  end

end