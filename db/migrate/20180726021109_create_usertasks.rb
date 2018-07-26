class CreateUsertasks < ActiveRecord::Migration[5.2]
  def change
    create_table :usertasks do |t|
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true
      t.boolean :done, default: false

      t.timestamps
    end
    add_index :usertasks, [:user_id, :task_id], unique: true
  end
end
