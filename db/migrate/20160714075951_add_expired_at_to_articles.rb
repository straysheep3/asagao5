class AddExpiredAtToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :expired_at, :datetime
  end
end
