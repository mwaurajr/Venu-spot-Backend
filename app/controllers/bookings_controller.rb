class BookingsController < ApplicationController
    def index
        render json: Booking.all

    end

    def show
        booking = Booking.find_by(id: params[:id]) 
        render json: booking
       

    end

    def create
        render json: Booking.create!(booking_params), status: :created
    end

    def destroy
        booking = Booking.find(params[:id])
        booking.destroy
        head :no_content
      end
end
