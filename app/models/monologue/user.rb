class Monologue::User < ActiveRecord::Base
  has_many :posts

  has_secure_password

  validates_presence_of :password, on: :create, unless: :guest_author
  validates_presence_of :name
  validates :email , presence: true, uniqueness: true

  attr_accessor :guest_author

  def can_delete?(user)
    return false if self==user
    return false if user.posts.any?
    true
  end
end
