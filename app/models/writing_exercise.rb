class WritingExercise < ApplicationRecord
    has_many :comments
    
    validates :duration_in_minutes, :category, :prompt, :output, presence: true
end
