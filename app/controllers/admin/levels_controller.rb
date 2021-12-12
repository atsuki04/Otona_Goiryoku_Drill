class Admin::LevelsController < ApplicationController
  
  def create
    @level = Level.new(level_params)
    
    if @level.save
      flash[:notice] = 'You have created level successfully.'
      redirect_to admin_levels_path
    else
      @levels = Level.all
      render :index
    end

  end

  def index
    @levels = Level.page(params[:page]).reverse_order
    @level = Level.new
  end

  def edit
    @level = Level.find(params[:id])
  end

  def update
    @level = Level.find(params[:id])
    if @level.update(level_params)
       flash[:notice] = 'You have updated level successfully.'
       redirect_to admin_levels_path
    else
       render :edit
    end
    
  end

  private

  def level_params
    params.require(:level).permit(:name)
  end
  
end