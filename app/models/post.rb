class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, foreign_key: :post_id
  has_many :likes, foreign_key: :post_id

  after_save :update_post_counter

  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end

  private
  def update_post_counter
    author.update(postscounter: author.posts.all.count)
  end
end
