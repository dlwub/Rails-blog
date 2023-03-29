class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User'

  after_save :update_comment_count

  private 
  def update_comment_count
    post.update(commentscounter: post.comments.all.count)
  end
end
