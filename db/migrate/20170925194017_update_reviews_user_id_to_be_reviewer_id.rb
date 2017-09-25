class UpdateReviewsUserIdToBeReviewerId < ActiveRecord::Migration[5.1]
  def change
    rename_column :reviews, :user_id, :reviewer_id
  end
end
