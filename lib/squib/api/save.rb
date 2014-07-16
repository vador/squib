module Squib
  class Deck
  
    def save(range: :all, format: :png, prefix: "card_")
      format = [format].flatten
      save_png(range: range, prefix: prefix) if format.include? :png
      save_pdf if format.include? :pdf
    end
    
    def save_png(range: :all, dir: "_img", prefix: 'card_')
      range = rangeify(range)
      range.each { |i| @cards[i].save_png(i, dir, prefix) }
    end

  end
end