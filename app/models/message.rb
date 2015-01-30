class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :comments, as: :table

  validates :author, :message, presence: true, length: { minimum: 2 }
end
