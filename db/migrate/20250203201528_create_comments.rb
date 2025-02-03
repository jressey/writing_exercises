class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.references :writing_exercise, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
