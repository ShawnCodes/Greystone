class User < ApplicationRecord
  has_one :roll
  has_one :expense
  has_one :capitalization 
end
