class Sala < ApplicationRecord
    belongs_to :user
    has_one :user
    validates :title, presence: true
    validades :initial_date, presence: true, length: {8..18}
    validates :final_date, presence: true, lenght: {8..18}
end
