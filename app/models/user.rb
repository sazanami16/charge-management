class User < ApplicationRecord
  has_many :charges

  with_options presence: true do
    validates :name
    validates :email
    validates :password
  end
end
