class Golfer < ApplicationRecord
    belongs_to :user
    # validates :user_id,  presence: true
    has_many :scorecards

end
