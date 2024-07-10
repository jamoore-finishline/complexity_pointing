class User < ApplicationRecord
    # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :votes
  has_many :comments
  belongs_to :role

  validates :name, presence: true
  validates :role, presence: true

  def developer?
    role.name == 'developer'
  end

  def qa?
    role.name == 'qa'
  end

  def admin?
    role.name == 'admin'
  end
end


