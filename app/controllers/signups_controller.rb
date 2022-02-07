class SignupsController < ApplicationController

    def create
        signup = Signup.create!(camper_params)
        render json: signup.activity

    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors.full_messages}, status: :unprocessable_entity

    end


    private
    def camper_params
        params.permit (:time, :activity, :camper)
    end

end
