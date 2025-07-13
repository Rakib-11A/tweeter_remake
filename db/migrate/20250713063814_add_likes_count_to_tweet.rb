class AddLikesCountToTweet < ActiveRecord::Migration[8.0]
  def change
    add_column :tweets, :likes_count, :integer
  end
end
