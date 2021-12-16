class Public::FavoritesController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @favorite = current_customer.favorites.create(question_id: @question.id)
    redirect_to question_answer_path(@question)
  end

  def destroy
   @question = Question.find(params[:question_id])
    @favorite = current_customer.favorites.find_by(question_id: @question.id)
    @favorite.destroy
    redirect_to question_answer_path(@question)
  end


end