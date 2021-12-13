class Admin::QuestionsController < ApplicationController
  
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
  end
  
  def edit
    @question = Question.find(params[:id])
  end
  
  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    
  end
  
  
  private
    def question_params
      params.require(:question).permit(:question, :choice_1, :choice_2, :choice_answer, :explanation)
    end

end