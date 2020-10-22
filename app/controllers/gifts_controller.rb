class GiftsController < ApplicationController
    def index
        @gifts = Gift.all
        render json: @gifts.to_json
    end
end
