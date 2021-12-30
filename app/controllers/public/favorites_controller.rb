class Public::FavoritesController < ApplicationController
  before_action :authenticate_customer!

  def create
    @question = Question.find(params[:question_id])
    @favorite = current_customer.favorites.create(question_id: @question.id)
  end

  def destroy
    @question = Question.find(params[:question_id])
    @favorite = current_customer.favorites.find_by(question_id: @question.id)
    @favorite.destroy
  end

  def my_favorites
    @favorites = current_customer.favorites
  end  

end