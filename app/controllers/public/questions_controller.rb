class Public::QuestionsController < ApplicationController

  def index
    @genre = Genre.find_by(name: params[:genre])

    if params[:que_id].blank? # first time
      @que = QuestionQue.new(question_ids: Question.where(genre_id: @genre.id).ids.join(','))
      @que.save
    else
      @que = QuestionQue.find(params[:que_id])
    end

    random_pick_up(@que)
  end

  def answer
    @question = Question.find(params[:question_id])
    @que_id = params[:que_id]
  end

  private

  def random_pick_up(que)
    # randam pick up question
    question_random_id = que.question_ids.split(',').map(&:to_i).sample
    @question = Question.find_by(id: question_random_id)
    if @question.nil? # quesiton end
      redirect_to root_path, notice: "お疲れ様でした！"
    else
      update_que(que, @question.id)
    end
  end

  def update_que(que, question_id)
    # update que
    old_que = que.question_ids.split(',').map(&:to_i) # "1,2,3" => [1,2,3]
    old_que.delete(question_id)
    new_que = old_que.join(',')
    # create new_que
    que.update(question_ids: new_que)
  end

end
