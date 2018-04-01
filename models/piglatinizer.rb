class PigLatinizer

  def piglatinize(text)
    suffix = "ay"
    if text.split(", ").size == 1
      result = text[1..-1] + text[0] + "ay"
    end
    binding.pry
    result
  end

end
