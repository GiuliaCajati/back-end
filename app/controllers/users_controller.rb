class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def show 
        @user = User.find(params[:id])
        render json: @user.to_json(include: [:characters, :relationships, :gifts])
    end 

    def create 
        #create user account 
        @user = User.new(user_params)
        if @user.save 
            #upon success... render json response 
            render json: @user.to_json 
        else 
            #upon failure... render json response 
        end
        
    end 

    def login
        @user = User.find_by(name: params[:user][:name])
        if @user && @user.authenticate(params[:user][:password])
            #upon success... render json response  
            render json: @user.to_json(include: [:characters, :relationships, :gifts])
        else
            flash.now[:message] = "Invalid username or password. For your security we are not disclosing which is incorrect. You're welcome :)"
            #upon failure... render json response 
        end  
    end 

    def destroy 
    end 

    def buy
        # get user from params
        @user = User.find(params[:id])
        # get gift from params
        gift = Gift.find(params[:gift_id])
        # add gift to user
        @user.gifts << gift
        # remove points from user
        @user.points -= gift.price
        # save updated user to database
        @user.save
        # return updated user to front end
        render json: @user.to_json(include: [:characters, :relationships, :gifts])
    end

    def give
        # get user from params
        @user = User.find(params[:id])
        # get gift from params
        gift = Gift.find(params[:gift_id])
        # remove gift from user
        @user.gifts = @user.gifts - [gift]
        # save updated user to database
        @user.save
        # get relationship from char id + user id
        relationship = Relationship.where(character_id: params[:character_id], user_id: @user.id).first
        # get relationship lvl change from params
        change = params[:change]
        # change relationship lvl
        relationship.level += change
        # save updated relationship to database
        relationship.save
        # render updated user as response
        render json: @user.to_json(include: [:characters, :relationships, :gifts])
    end

    private 

    def user_params
        params.require(:user).permit(:name, :password, :picture_url)
    end 

end
