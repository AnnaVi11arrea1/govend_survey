class CreateSurveys < ActiveRecord::Migration[7.2]
  def change
    create_table :surveys do |t|
      t.timestamps
      t.text :question1
      t.text :question2
      t.text :question3
      t.text :question4
      t.text :question5
      t.text :question6
      t.text :question7
      t.text :question8
      t.text :question9
      t.text :question10
      t.text :question11
      t.text :question12
      
    end
  end
end
