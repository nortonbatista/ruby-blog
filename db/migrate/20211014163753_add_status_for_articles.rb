class AddStatusForArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :article, :status, :string
  end
end
