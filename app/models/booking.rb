class Booking < ApplicationRecord
  belongs_to :toilet, :user
end
