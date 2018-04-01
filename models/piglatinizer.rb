class PigLatinizer

  def piglatinize(text)

    if text.split(", ").size == 1
      if text[0].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).size > 0
        result = text[1..-1] + text[0] + "ay"
      elsif text[0].downcase.scan(/[aeoui]/).size > 0
        result = text + "way"
      end
    end
    binding.pry
    result
  end

end
