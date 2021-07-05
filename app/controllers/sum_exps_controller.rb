class SumExpsController < ApplicationController
  def index
    @skill = Skill.find(params[:skill_id])
  end
end
