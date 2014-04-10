class QuotesController < DottedRulers::Controller
  def a_quote
    render :a_quote, verb: :shooed
  end

  def exception
    raise "Holy flocking snitz this is bad!"
  end
  def quote_1
    quote_1 = FileModel.find(1)
    render :quote, :obj => quote_1

  end


end