class SumExpsController < ApplicationController
  
  def new
    @skill = Skill.find(params[:skill_id])
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @sum_exp = SumExp.new(exp_params)
    if @sum_exp.save 
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def exp_params
  params.permit(:minute_id, :concentration_id, :technique_id, :out_put_id, :exp_point).merge(skill_id: params[:skill_id], user_id: current_user.id )
  end
end

