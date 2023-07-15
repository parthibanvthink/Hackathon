class Api::V1::MasterTypesController < Api::ApiController
    def masterData
        snacks = SnacksOption.all
        drinks = HotDrinkType.all
        render json: {"data": {"snacks": snacks, "drinks": drinks}}
    end
end
