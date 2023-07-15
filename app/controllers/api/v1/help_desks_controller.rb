class Api::V1::HelpDesksController < Api::ApiController
    def chathistory
        help_desks = HelpDesk.all
       
        render json: {"data": data}
    end

    def food_managements
        # food_managements = FoodManagement.all
       
        render json: {"data": FoodManagement.all}
    end

    def create_food_managements 
        render json: {"data": HelpDesk.save(params)}
    end

end