class BookingsController < ApplicationController

  def create
    @bike = Bike.find(params[:bike_id])
    if current_user.nil?
      flash[:alert] = "You must be signed in to create a booking!"
      redirect_to @bike
    else
      @booking = Booking.new
      @booking.start_date = DateTime.parse(params[:booking][:start_date])
      @booking.end_date = DateTime.parse(params[:booking][:end_date])
      @booking.user = current_user
      @booking.bike = @bike
      if @booking.save
        flash[:notice] = "Booking successfully created!"
        redirect_to @bike
      else
        render "bikes/show"
      end
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end

