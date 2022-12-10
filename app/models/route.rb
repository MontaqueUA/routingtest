class Route < ApplicationRecord
  belongs_to :organization
  belongs_to :driver, optional: true
  belongs_to :vehicle, optional: true
end
