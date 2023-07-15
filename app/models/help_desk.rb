class HelpDesk < ApplicationRecord

    def self.save(params = "")
        if params[:rollnumber].blank?
            return failure_message("rollnumber is missing")
        elsif params[:type].blank?
            return failure_message("date is missing")
        elsif params[:selected_option].blank?
            return failure_message("selected_option is missing")
        else
            help_desk = FoodManagement.create!(rollnumber: params[:rollnumber], date: params[:date], selected_option: params[:selected_option])
            
            return help_desk
        end
    end
end
