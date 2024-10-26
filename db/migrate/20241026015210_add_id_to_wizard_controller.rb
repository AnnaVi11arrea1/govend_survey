class AddIdToWizardController < ActiveRecord::Migration[7.2]
  def change

    create_table :wizard_controller do |t|
      t.string :question
      t.string :answer
    end
  end
end
