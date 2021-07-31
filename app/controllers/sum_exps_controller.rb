class SumExpsController < ApplicationController
  
  def new
    @skill = Skill.find(params[:skill_id])
    @sum_exp = SumExp.new
  end

  def create
    @sum_exp = SumExp.new(exp_params)
 
    #sum_minute
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

  # def sum_minute
  #   skill = Skill.find(params[:skill_id])
  #   sum_exp = SumExp.find(params[:sum_exp_id])

  #   totalMinute = skill.total_minute

  #   totalMinute = sum_exp.minute

  #   skill.total_minute = totalMinute
  #   skill.update(total_minute: totalMinute)
    

  # end
  

  
end

