class Public::QuestionsController < ApplicationController

  def index
    @genre = Genre.find_by(name: params[:genre])
    if params[:exclude_q_ids].try(:count) == Question.where(genre_id:@genre.id).count
      redirect_to root_path, alert: "finish"
    end
    if params[:exclude_q_ids]
      questions = Question.where(genre_id:@genre.id).pluck(:id)
      params[:exclude_q_ids].each do |id|
        questions.delete(id)
      end
       @question = Question.find(questions.sample)
       @exclude_q_ids  = params[:exclude_q_ids].push(@question.id)
    else
       @question = Question.find(Question.where(genre_id:@genre.id).pluck(:id).sample)
       @exclude_q_ids = [@question.id]
    end
  end

  def answer

    @question = Question.find(params[:question_id])
    @exclude_q_ids = params[:exclude_q_ids]

  end

end
