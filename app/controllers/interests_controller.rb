class InterestsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def dialogue 
        # get interest from params
        interest = Interest.find(params[:id])
        # use interest to get correct questions from db
        questions = JSON.parse(interest.questions)
        # do logic to calculate which question is appropriate
            # factors to consider:
                # difficulty of question
                # relationship level
                # stretch: drunk? repetition?
            # 1) select all possible questions based on relationship level + difficulty
                # get character id
                character_id = interest.character.id
                # get user id
                user_id = params[:user_id]
              
                # get relationship from character + user
                relationship = Relationship.where(character_id: character_id, user_id: user_id).first
                # get relationship level
                relationshipLvl = relationship.level
                # select from questions where difficulty <= relationshipLvl
                filteredQuestions = questions.select { |question|
                    question[9] <= relationshipLvl
                }
            # 2) randomly select 1 question
                @questionArray = filteredQuestions.sample
            # 3) cut out metadata except question id
                @questionArray = @questionArray.slice(0..4) + [@questionArray[-1]]
        # render json response with that question
        render json: @questionArray.to_json
    end 
end