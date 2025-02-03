require 'rails_helper'

RSpec.describe WritingExercise, type: :model do
  it "does" do
    expect(build(:writing_exercise, duration_in_minutes: nil)).to_not be_valid
    expect(build(:writing_exercise, category: nil)).to_not be_valid
    expect(build(:writing_exercise, prompt: nil)).to_not be_valid
    expect(build(:writing_exercise, output: nil)).to_not be_valid
  end

end
