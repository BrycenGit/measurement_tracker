class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.belongs_to :user
      t.decimal :weight, precision: 10, scale: 2
      t.decimal :neck, precision: 10, scale: 2
      t.decimal :arm, precision: 10, scale: 2
      t.decimal :chest, precision: 10, scale: 2
      t.decimal :waist, precision: 10, scale: 2
      t.decimal :belly, precision: 10, scale: 2
      t.decimal :hips, precision: 10, scale: 2
      t.decimal :thighs, precision: 10, scale: 2
      t.decimal :calves, precision: 10, scale: 2
      t.decimal :ankles, precision: 10, scale: 2
      
      t.timestamps
    end
  end
end
