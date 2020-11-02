class CreateCoOpWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :co_op_workers do |t|
      t.integer :co_op_id
      t.integer :worker_id

      t.timestamps
    end
  end
end
