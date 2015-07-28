class VocabulariesController < ApplicationController

  def index
    @vocabularies = Vocabulary.all
  end

  def new
    @vocabulary = Vocabulary.new
  end

  def create
    @vocabulary = Vocabulary.new(vocabulary_params)
    if @vocabulary.save
      redirect_to vocabularies_path(@vocabulary)
    else
      render 'users_profile'
    end
  end

  def show
    @vocabulary = Vocabulary.find_by(params[:word])
  end


  def edit
    @vocabulary = Vocabulary.find_by(params[:word])
  end

  def destroy
  end

  private
  def vocabulary_params
    params.require(:vocabulary).permit(
      :word,
      :definition,
      :topic
      )
  end
end

