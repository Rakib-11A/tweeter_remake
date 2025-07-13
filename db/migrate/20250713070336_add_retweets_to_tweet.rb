class AddRetweetsToTweet < ActiveRecord::Migration[8.0]
  def change
    add_column :tweets, :retweets, :integer
  end
end
