class CreateRituals < ActiveRecord::Migration[5.2]
  def change
    create_table :rituals do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
