class QuotesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  # GET /quotes
  # GET /quotes.json
  def index
    if current_user.try(:admin?)
      @quotes = Quote.all
    else
      @quotes = current_user.quotes
    end
  end

  # GET /quotes/1
  # GET /quotes/1.json
  def show
    #@total = @quote.choices.map { |choice| choice.answer.value }.map { |answer| answer.value }.sum
    #@total = @quote.choices.map { |choice| choice.answer.value }.sum
    #@total = @quote.answers.map { |answer| answer.value }.sum
    @total = @quote.answers.map(&:value).sum
    # @question =Question.find(@quote.answers.question_id)
  end

  # GET /quotes/new
  def new
    @quote = Quote.new
    @questions = Question.all
    # @users = User.all
    # @answer = Answer.all
  end


  # GET /quotes/1/edit
  def edit
    @quote = Quote.find(params[:id])
    @questions = Question.all
  end

  # POST /quotes
  # POST /quotes.json
  def create
    @quote = Quote.new(quote_params)

    @quote.user = current_user

    params[:quote][:questions].each do |question_id, answer_id|
      @quote.choices << Choice.new(:answer_id => answer_id)
    end

    respond_to do |format|
      if @quote.save
        format.html { redirect_to @quote, notice: 'Quote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @quote }
      else
        format.html { render action: 'new' }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotes/1
  # PATCH/PUT /quotes/1.json
  def update
    respond_to do |format|
      if @quote.update(quote_params)
        format.html { redirect_to @quote, notice: 'Quote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote.destroy
    respond_to do |format|
      format.html { redirect_to quotes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_params
      params.require(:quote).permit(:questions)
    end
end
