class CreateTssks < ActiveRecord::Migration
  def change
    create_table :tssks do |t|
      t.string :title
      t.string :detail

      t.timestamps
    end
  end
end
