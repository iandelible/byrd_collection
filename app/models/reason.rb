class Reason < ActiveRecord::Base
  validates :advantage, presence: true, length: {maximum: 7, minimum: 4}
  validates :reason, presence: true
end
