require "test_helper"

class ProfanityTest < Test::Unit::TestCase


  def test_profanity
    #this should failed
   #assert_equal("I had sex with orgasm", ProfanityWords.swapProfanity("I had sex with orgasm"))

    #this should pass
    assert_equal("I had s*x with o****m", ProfanityWords.swapProfanity("I had sex with orgasm"))

  end

  
end