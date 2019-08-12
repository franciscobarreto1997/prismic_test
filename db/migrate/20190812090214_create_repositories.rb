class CreateRepositories < ActiveRecord::Migration[5.2]
  def change
    create_table :repositories do |t|
      t.datetime :timestamp
      t.string :http_host
      t.integer :bytes

      t.timestamps
    end
  end
end
