
100.times do |n|
  LevelSetting.create(:level => n  , :experience_point => n *= 50)
end