class PigLatinizer

  def piglatinize(text)
    text_arr = text.split(" ")
    result = []
    text_arr.each do |word|
      word_arr = word.scan(/\w/)
      if word_arr.first.downcase.scan(/[bcdfghjklmnpqrstvwxyz]+/).size > 0
        c_str = word.downcase.scan(/[bcdfghjklmnpqrstvwxyz]+/).first
        word_str = word.split(c_str).last
        result << word_str + c_str + "ay"
        #binding.pry
      else
        result << word + "way"
      end


    end
    result.join(' ')
    #binding.pry
  end

end



    #if text.split(", ").size == 1
    #  if text[0].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).size > 0 #begins with constant
    #    result = text[1..-1] + text[0] + "ay"
    #  elsif text[0].downcase.scan(/[aeoui]/).size > 0 #begins with vowel
    #    result = text + "way"
    #  end
    #end

    #result
