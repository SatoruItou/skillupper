class SumExpsController < ApplicationController
  before_action :authenticate_user!, except: [:new]
 
  def new
    
    @skill = Skill.find(params[:skill_id])
    @sum_exp = SumExp.new
    unless @skill.user_id == current_user.id
      redirect_to root_path
    end
  
  end

  def create
    @sum_exp = SumExp.new(exp_params)
    @skill = Skill.find(params[:skill_id])

    sum_minute
    if  @sum_exp.save 
      redirect_to root_path
    else
      render 'sum_exps/new'
    end
  end




  private

  def exp_params
    params.require(:sum_exp).permit(:minute).merge(skill_id: params[:skill_id])
  end

  def sum_minute
    skill = Skill.find(params[:skill_id])
    

    totalMinute = skill.total_minute

    totalMinute += @sum_exp.minute

    skill.total_minute = totalMinute
    skill.update(total_minute: totalMinute)
    

  end



end

