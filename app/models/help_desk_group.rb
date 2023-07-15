class HelpDeskGroup < ApplicationRecord
    has_one :help_desk, :class_name => "HelpDesk", foreign_key: 'help_desk_id'
    belongs_to :user, foreign_key: 'rollnumber'
end
