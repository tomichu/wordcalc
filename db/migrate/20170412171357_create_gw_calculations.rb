class CreateGwCalculations < ActiveRecord::Migration[5.0]
  def change
    create_table :gw_calculations do |t|
      t.string :course
      t.integer :mon
      t.integer :tue
      t.integer :wed
      t.integer :thr
      t.integer :fri

      t.timestamps
    end
  end
end
