class CountWordsController < ApplicationController
  before_action :set_count_word, only: [:show, :edit, :update, :destroy]

  # GET /count_words
  # GET /count_words.json
  def index
    @count_words = CountWord.all
  end

  # GET /count_words/1
  # GET /count_words/1.json
  def show
  end

  # GET /count_words/new
  def new
    @count_word = CountWord.new
  end

  # GET /count_words/1/edit
  def edit
  end

  # POST /count_words
  # POST /count_words.json
  def create
    @count_word = CountWord.new(count_word_params)

    respond_to do |format|
      if @count_word.save
        format.html { redirect_to @count_word, notice: 'Count word was successfully created.' }
        format.json { render :show, status: :created, location: @count_word }
      else
        format.html { render :new }
        format.json { render json: @count_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /count_words/1
  # PATCH/PUT /count_words/1.json
  def update
    respond_to do |format|
      if @count_word.update(count_word_params)
        format.html { redirect_to @count_word, notice: 'Count word was successfully updated.' }
        format.json { render :show, status: :ok, location: @count_word }
      else
        format.html { render :edit }
        format.json { render json: @count_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /count_words/1
  # DELETE /count_words/1.json
  def destroy
    @count_word.destroy
    respond_to do |format|
      format.html { redirect_to count_words_url, notice: 'Count word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_count_word
      @count_word = CountWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def count_word_params
      params.require(:count_word).permit(:title, :text_to_count)
    end
end
