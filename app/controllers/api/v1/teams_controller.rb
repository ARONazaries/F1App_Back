module Api
    module V1
        class TeamsController < ApplicationController
            def index
                teams = Team.all

                render json: TeamSerializer.new(teams).serialized_json
            end

            def show
                team = Team.find_by(id: params[:id])

                render json: TeamSerializer.new(team).serialized_json
            end
        end
    end
end