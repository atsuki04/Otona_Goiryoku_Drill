class Public::QuestionsController < ApplicationController

  def index
    @genre = params[:genre]
    @questions = Question.where('id', rand(Question.first.id..Question.last.id))
  end
  
  def answer
  end

end
