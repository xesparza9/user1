class CreateBibs < ActiveRecord::Migration
  def change
    create_table :bibs do |t|
      t.string :url
      t.string :name
      t.string :bio

      t.timestamps
    end
  end
end
