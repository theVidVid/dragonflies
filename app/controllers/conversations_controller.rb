class ConversationsController < ApplicationController
	before_action :authenticate_user!

#Need a method to pull current freelancer, 
#Find freelancer with a certain id 
#Find_by, .find(#)


	def index
		@conversations = current_user.mailbox.conversations
	end

	def show
		#current_user.freelancer.id
		# current_user = Freelancer.find(current_user.freelancer.id)
		@conversation = current_user.mailbox.conversations.find(params[:id])
	end

	def new
		@recipients = User.all - [current_user]
	end 

	def create
		# current_user = Freelancer.find(current_user.freelancer.id)

		recipient = User.find(params[:user_id])
		receipt = current_user.send_message(recipient, params[:body], params[:subject])
		redirect_to conversation_path(receipt.conversation)
	end

end