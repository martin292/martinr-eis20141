class CharCounter

  def self.count(palabra)
  	dic = Hash.new

  	if(palabra != nil)
  	  palabra.each_char{|caracter|
  	    if(dic[caracter] != nil)
  	  	  dic[caracter] = dic[caracter] + 1
  	    else
  	  	  dic[caracter] = 1
  	    end
  	  }
  	end
  	
  	dic
  end

end