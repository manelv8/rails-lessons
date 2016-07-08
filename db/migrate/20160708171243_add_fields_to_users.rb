class AddFieldsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :name
      t.string :username, unique: true, index: true
      t.boolean :gender, default: true # tem pinto?
    end
  end
end
