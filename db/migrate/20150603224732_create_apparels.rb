class CreateApparels < ActiveRecord::Migration
  def change
    create_table :apparels do |t|
      t.string :section
      t.string :item
      t.string :description
      t.float :min1
      t.float :max1
      t.float :min2
      t.float :max2
      t.float :min3
      t.float :max3
      t.float :min4
      t.float :max4
      t.float :min5
      t.float :max5
      t.float :min6
      t.float :max6
      t.float :min7
      t.float :max7
      t.float :min8
      t.float :max8
      t.float :min9
      t.float :max9
    end
  end
end
