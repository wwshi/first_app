class CreateUssers < ActiveRecord::Migration
  def change
    create_table :ussers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
