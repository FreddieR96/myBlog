class Updateemails < ActiveRecord::Migration[5.2]
  def change
  change_table :emails do |f|
  f.rename :email, :emailstring
  end
end
end
