class WordsController < ApplicationController
  layout 'application'

  def index
      @words = Word.all.newest_first
  end

  def show
      @word =  Word.find(params[:id])
  end

  def new
      @word =  Word.new
  end

  def create
      @word =  Word.new(word_params)
    if  @word.save
      flash[:notice] = "Creation Success!"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
      @word =  Word.find(params[:id])
  end

  def update
      @word =  Word.find(params[:id])
    if @word.update_attributes(word_params)
      flash[:notice] = "Update Success!"
      redirect_to(:action => 'show', :id => @word.id)
    else
      render('edit')
    end
  end

  def delete
    @word = Word.find(params[:id]).destroy
    flash[:notice] =  "Destruction Success!"
    redirect_to(:action => 'index')
  end

private

def word_params
  params.require(:word).permit(:content, :originator, :category)
end

end
