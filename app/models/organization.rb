class Organization < ApplicationRecord
  has_many :drivers, dependent: :delete_all
  has_many :vehicles, dependent: :delete_all
  has_many :routes, dependent: :delete_all
  has_many :users, dependent: :delete_all
end
