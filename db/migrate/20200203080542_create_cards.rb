class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|

      t.string      :title, null: false, limit: 10
      t.text        :memo, null: false, limit: 100
      t.references  :list, null:false
      t.references  :complete
      t.timestamps
    end
  end
end
