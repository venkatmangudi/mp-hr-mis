class CreateSpecialCadres < ActiveRecord::Migration
  def change
    create_table :special_cadres do |t|
      t.string :Special_Cadre_Type

      t.timestamps
    end
  end
end
