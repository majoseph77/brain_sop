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

  def edit
    @vocabularies = Vocabulary.all
    @vocabulary = Vocabulary.find_by(params[:word])
  end

  def update
    @vocabulary = Vocabulary.find(params[:id])
    @vocabulary.update_attributes(params[:id])
      redirect_to vocabularies_path(@vocabulary)
  end

  def show
    @vocabulary = Vocabulary.find_by(params[:word])
  end


  def destroy
    vocabulary = Vocabulary.find_by(params[:id])
    vocabulary.destroy
    redirect_to vocabularies_path(@vocabulary)
  end

private
  def vocabulary_params
    params.require(:vocabulary).permit(:word, :definition,:topic
      )
  end
end


