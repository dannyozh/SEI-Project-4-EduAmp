class CreateEducatorProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :educator_profiles do |t|

      t.timestamps
    end
  end
end
