class CreateWizards < ActiveRecord::Migration[7.2]
  def change
    create_table :wizards do |t|
      t.timestamps
    end
  end
end
