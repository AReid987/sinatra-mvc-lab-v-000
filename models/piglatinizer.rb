class PigLatinizer

  def piglatinize(text)
    text_arr = text.split(" ")

    text_arr.each do |word|
      word_arr = word.scan(/\w/)
      if word_arr.first.downcase.scan(/[bcdfghjklmnpqrstvwxyz]+/).size > 0
        c_arr = word.downcase.scan(/[bcdfghjklmnpqrstvwxyz]+/)
        v_arr = word.downcase.scan(/[aeoui]/)
        result = v_arr.first + c_arr.last + c_arr.first + "ay"
      else
        result = word + "way"
      end

      #binding.pry
    end
    result 

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
