class SumExpsController < ApplicationController
  
  def new
    @skill = Skill.find(params[:skill_id])
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @sum_exp = SumExp.new(exp_params)
    if  @sum_exp.save 
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def exp_params
  params.permit(:minute).merge(skill_id: params[:skill_id], user_id: current_user.id )
  end

  def level_up
    skill = Skill.find(params[:skill_id])
    sum_exp = SumExp.find(params[:skill_id])
    totalExp = skill.exp
    totalExp += sum_exp.exp_point
    
    skill.exp = totalExp
    
    skill.update(exp: totalExp)
    
    levelSetting = LevelSetting.find_by(level: skill.level + 1);
      if levelSetting.experience_point <= skill.exp
        skill.level = skill.level + 1
        skill.update(level: skill.level)
      else
        render :new
      end
  end
end

