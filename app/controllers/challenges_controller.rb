class ChallengesController < ApplicationController

    def index 
        challenges = Challenge.all 
        render json: challenges, include: [:users, :statistics]
    end
        
    def show 
        challenge = Challenge.find_by(id: params[:id])
        # render json: Challenge.to_json, include: [:users, :statistics]
    end 
    
end
