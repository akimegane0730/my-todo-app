class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer     :clock 
      t.string      :title, null: false, limit: 10
      t.text        :memo, null: false, limit: 100
      t.references  :list, null:false
      t.references  :complete
      t.references   :like
      t.timestamps
    end
  end
end
