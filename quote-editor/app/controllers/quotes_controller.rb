
class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]


  def index
    #flash[:notice] = "toglila quando funge."

    @quotes = current_company.quotes.ordered
  end

  def show
  end

  def new
    @quote = Quote.new
  end

  def create
    # Only this first line changes to make sure the association is created
    @quote = current_company.quotes.build(quote_params)

    if @quote.save
      respond_to do |format|
        format.html { redirect_to quotes_path, notice: "Quote was successfully created." }
        format.turbo_stream { flash.now[:notice] = "Quote was successfully created (turbo)." }
      end
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @quote.update(quote_params)
      respond_to do |format|
        format.html { redirect_to quotes_path, notice: "Quote was successfully updated (normal)." }
        format.turbo_stream { flash.now[:notice] = "Quote was successfully updated (turbo)." }
      end
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @quote.destroy

    respond_to do |format|
      format.html { redirect_to quotes_path, notice: "Quote was successfully destroyed." }
      format.turbo_stream { flash.now[:notice] = "Quote was successfully destroyed (turbo)." }
    end
  end

  private

  def set_quote
#    @quote = Quote.find(params[:id])
    @quote = current_company.quotes.find(params[:id])

  end

  def quote_params
    params.require(:quote).permit(:name)
  end
end
