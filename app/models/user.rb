class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :leave_events

  ROLES = %i(
    manager employee contractor intern resigned pending admin
  ).freeze

  def admin?
    role == 'admin'
  end

  def manager?
    role == 'manager'
  end
end
