class AlarmsController < ApplicationController
	def index	
	end

	def new
	@alarm = Alarm.new
		end

	def create
	@alarm = Alarm.new(comp_params)
	@alarm.user = current_user

	if @alarm.save
		UserMailer.comp_email(current_user).deliver_now

		redirect_to home_path
	else
      render template: "alarms/new"
		end
		end
end

	private 

  	def comp_params 
  		params.require(:alarm).permit(:subject, :description, :image, :notify_employer, :notify_ic, :notify_wou)
  	end


