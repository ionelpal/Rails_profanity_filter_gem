
  class ProfanityWords

    def self.dictionary
    @words =Array.new
 
    #import file
    $filepath = File.expand_path('../../lib/profanity_filter/badwords.txt', __FILE__)

   @words =  IO.foreach($filepath).map { |line| line.strip}
    return @words
  end

    def self.dic_hsh
    @wordSub = Hash[dictionary.map {|k| [k, k] }]

    @wordSub.each do |k, v|
      @wordSub[k] = "#{k.slice(0,1) +'*'*(k.length-2)+ k.slice(k.length-1)}"
    end
    return  @wordSub
  end

def self.isProfane(str)
    isProfane = false
    dictionary.each {|x|
      if str.downcase.include?(x)
        isProfane = true
      end
    }
    return isProfane
  end


  def self.swapProfanity(str)
    words = dic_hsh.keys
    str.split(" ").each {|y|
      words.each {|x|
      if y.downcase == x.downcase
        str.gsub! y, y.slice(0,1) +'*'*(y.length-2)+ y.slice(y.length-1)
      end
    }
  }
    return str
  end
  end

