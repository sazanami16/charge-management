class Charge < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :tax_name
    validates :money
    validates :deadline
  end
end
