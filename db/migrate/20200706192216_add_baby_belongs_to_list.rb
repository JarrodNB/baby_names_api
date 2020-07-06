class AddBabyBelongsToList < ActiveRecord::Migration[5.2]
  def change
    add_reference :babies, :list, index: true
  end
end
