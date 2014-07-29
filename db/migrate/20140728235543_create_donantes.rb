class CreateDonantes < ActiveRecord::Migration
  def change
    create_table :donantes do |t|
      t.string :codigo
      t.string :donante

      t.timestamps
    end
  end
end
