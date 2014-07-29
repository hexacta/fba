class CreateHorarioEntregas < ActiveRecord::Migration
  def change
    create_table :horario_entregas do |t|
      t.string :horario

      t.timestamps
    end
  end
end
