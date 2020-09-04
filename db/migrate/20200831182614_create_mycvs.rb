class CreateMycvs < ActiveRecord::Migration[6.0]
  def change
    create_table :mycvs do |t|

      t.timestamps
    end
  end
end
