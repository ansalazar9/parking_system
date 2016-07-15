class AddOccupiedToSlot < ActiveRecord::Migration
  def change
    add_column :slots, :occupied, :boolean
  end
end
