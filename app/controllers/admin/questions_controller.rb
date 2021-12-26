class Admin::QuestionsController < ApplicationController
  before_action :authenticate_admin!

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.save
    redirect_to admin_questions_path
  end

  def show
    @question = Question.find(params[:id])

  end

  def index
    @questions = Question.all
    @filtered_questions = []
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    render "show"
  end

  def search
    @questions = Question.all
    @filtered_questions = Question.search(params[:keyword])
    @keyword = params[:keyword]
    render "admin/questions/index"
  end

  private
    def question_params
      params.require(:question).permit(:question, :choice_1, :choice_2, :choice_answer, :explanation, :genre_id)
    end

end