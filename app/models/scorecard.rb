class Scorecard < ApplicationRecord
    # belongs_to :user
    # belongs_to :golfer, class_name: 'User'
    belongs_to :golfer
    
end
