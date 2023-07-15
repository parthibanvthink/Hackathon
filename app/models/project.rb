class Project < ApplicationRecord
    belongs_to :user, foreign_key: 'rollnumber'
end
