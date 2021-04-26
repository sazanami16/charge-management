class User < ApplicationRecord
  has_many :charges

  with_options presence: true do
    validates :name
    validates :email, uniqueness: true
  end

  has_secure_password
end
