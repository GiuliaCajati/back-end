class RelationshipsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        
        @relationship = Relationship.create(
            user_id: params[:relationship][:user_id],
            character_id: params[:relationship][:character_id],
            level: 0
        )
        render json: @relationship.to_json
    end 

    def update # changes relationship level based on dialogue outcome
        # find the relationship
        @relationship = Relationship.find(params[:id])
        # get the player's response from params
        responseIndex = params[:response_index] 
        # change relationship level based on point value of answer
            # calculate point value of answer
            # get the missing metadata from the question
                # get the question again
                    # get interest so we have access to correct questions array
                    interest = Interest.find(params[:interest_id])
                    # get question index
                    questionId = params[:question_id] 
                    # find question based on index
                    question = JSON.parse(interest.questions).find { |question|
                        question[-1] == questionId
                    }
            # determine point value of response from question metadata
            pointValue = question[responseIndex + 4]
        # change relationship level based on point value of answer
        @relationship.level += pointValue
        # update user points by relationship change
                    # get user
                    user = User.find(@relationship.user_id)
                    # change pts
                    user.points += pointValue
        # save to database
        @relationship.save
        user.save
        # render updated relationship as response
        render json: pointValue.to_json
    end

    private

    def strong_params
        params.require[:relationship].permit[:user_id, :character_id]
    end
end
