class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Username validations
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 20 }
  validates :username, format: { with: /\A[a-zA-Z0-9_]+\z/, message: "can only contain letters, numbers, and underscores" }
  
  # Ensure username is saved in lowercase for consistency
  before_save :downcase_username

  private

  def downcase_username
    self.username = username.downcase if username.present?
  end
end
