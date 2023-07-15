class TaskGroup < ApplicationRecord
    belongs_to :user, foreign_key: 'rollnumber'
    belongs_to :project, foreign_key: 'id'
end
