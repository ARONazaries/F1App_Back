module Api
    module V1
        class DriversController < ApplicationController
            def index
                drivers = Driver.all

                render json: DriverSerializer.new(drivers).serialized_json
            end

            def show
                driver = Driver.find_by(id: params[:id])
                    
                render json: DriverSerializer.new(driver).serialized_json
            end

            def create
            end

            private
                
        end
    end
end