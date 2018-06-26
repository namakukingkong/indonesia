class District < ApplicationRecord
  has_many :villages
  belongs_to :regency
end
