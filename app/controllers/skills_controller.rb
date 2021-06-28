class SkillsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @skill = Skill.all.order('created_at DESC')
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

  private

  def skill_params
    params.require(:skill).permit(:image, :name, :genre, :level, :can).merge(user_id: current_user.id)
  end

end
