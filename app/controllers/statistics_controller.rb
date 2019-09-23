class StatisticsController < ApplicationController

    def index 
        statistics = Statistic.all 
        render json: statistics, include: [:challenges, :users]
    end

    # def update
    #     statistics = Statistics.find_by(id: params[:id])
    #     statistics.update(statistics_params)
    #     render json: statistics
    # end
        
    def show 
        statistic = Statistic.find_by(id: params[:id])
        render json: Statistic.to_json, include: [:users, :challenges]
    end 
    
end
