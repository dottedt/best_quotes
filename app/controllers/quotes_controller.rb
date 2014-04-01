class QuotesController < DottedRulers::Controller
  def a_quote
    "Hell hath no furrey like a cat" +
      "shooed off your keyboard" +
      "\n<pre>\n#{env}\n</pre>"
  end

  def exception
    raise "Holy flocking snitz this is bad!"
  end
end