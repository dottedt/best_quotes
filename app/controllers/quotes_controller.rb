class QuotesController < DottedRulers::Controller
  def a_quote
    render :a_quote, verb: :shooed
  end

  def exception
    raise "Holy flocking snitz this is bad!"
  end
end