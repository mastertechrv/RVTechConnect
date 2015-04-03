class CreateRvmodels < ActiveRecord::Migration
  def change
    create_table :rvmodels do |t|
      t.string :modelname
      t.integer :make_id

      t.timestamps
    end
  end
end
