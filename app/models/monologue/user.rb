class Monologue::User < ActiveRecord::Base
  has_many :posts

  has_secure_password validations: false

  validates_presence_of :password, on: :create, unless: :guest_author
  validates_presence_of :name
  validates :email , presence: true, uniqueness: true

  attr_reader :guest_author
  def guest_author=(value)
	  @guest_author = (value == '1')
  end

  def can_delete?(user)
    return false if self==user
    return false if user.posts.any?
    true
  end
end
