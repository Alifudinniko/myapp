class HistoryRent < ApplicationRecord
    belongs_to :billing
    belongs_to :unit
    belongs_to :customer
end