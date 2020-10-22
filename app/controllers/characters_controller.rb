class CharactersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @characters = Character.all
        render json: @characters.to_json(include: :interest)
    end
    
    def show
    end
end
