class Billing < ApplicationRecord
    belongs_to :unit
    has_many :history_rents
end