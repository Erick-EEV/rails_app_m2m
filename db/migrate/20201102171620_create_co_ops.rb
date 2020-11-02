class CreateCoOps < ActiveRecord::Migration[6.0]
  def change
    create_table :co_ops do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
