class CreateItemmodels < ActiveRecord::Migration[5.2]
  def change
    create_table :itemmodels do |t|
      t.string :category
      t.string :name

      t.timestamps
    end
  end
end
