class MessagesController < ApplicationController

	def create
		
		@message = Message.new(message_params)
		@message.sender_id = current_user.id
		@message.recipient_id = params[:recipient_id]
		@message.save

		redirect_back fallback_location: articles_path

	end 

	def index
		@messages = Message.where(recipient_id: current_user.id).or(Message.where(sender_id: current_user.id)).order(created_at: :desc)
		@array = []
	end

	def new
		@messages = Message.where({recipient_id: current_user.id, sender_id: params[:user_id]}).or(Message.where(sender_id: current_user.id, recipient_id: params[:user_id])).order(created_at: :asc)
		@message = Message.new
	end

	def second_create
		@message = Message.new(message_params)
		@message.sender_id = current_user.id
		@message.recipient_id = params[:recipient_id]
		@message.save

		redirect_back fallback_location: articles_path

	end

	private
		def message_params
			params.require(:message).permit(:content)
		end

end