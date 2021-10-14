class AddStatusForComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comment, :status, :string
  end
end
