class AddCrossedOutToBaby < ActiveRecord::Migration[5.2]
  def change
    add_column :babies, :crossed_out, :boolean, :default => false
  end
end
