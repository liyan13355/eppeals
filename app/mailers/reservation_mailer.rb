class ReservationMailer < ApplicationMailer

	def contact_lawyer(email)
		mail(to: email, subject: "Request for Legal Advice from Epeals")
	end

	def contact_user(email)

		mail(to: email, subject: "Invitation for Further Contact from Epeals")

	end

end