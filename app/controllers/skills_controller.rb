class SkillsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_skill, only: [:show, :edit, :update, :destroy]
  before_action :unless_skill, only:[:edit, :update, :destroy]
  def index
    @skills = Skill.all.order('created_at DESC')

  end

  def new
    @skill = Skill.new
   
  end

  def create 
    @skill = Skill.new(skill_params)
    if @skill.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show 
  end

  def edit
  end

  def update
    if @skill.update(skill_params)
      redirect_to skill_path(@skill.id)
    else
      render :edit
    end
  end 
   
  def destroy
    @skill.destroy
    redirect_to root_path
  end

  
    

  private

  def skill_params
    params.require(:skill).permit(:image, :name, :genre, :can, :total_minute).merge(user_id: current_user.id)
  end

  def set_skill
    @skill = Skill.find(params[:id])
  end

  def unless_skill
    redirect_to action: :index unless current_user.id == @skill.user_id
  end
end
