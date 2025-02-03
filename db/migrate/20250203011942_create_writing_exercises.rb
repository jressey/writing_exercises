class CreateWritingExercises < ActiveRecord::Migration[8.0]
  def change
    create_table :writing_exercises do |t|
      t.integer :duration_in_minutes
      t.string :category
      t.string :prompt
      t.text :output

      t.timestamps
    end
  end
end
