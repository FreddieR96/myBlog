class EmailController < ApplicationController
def addemail
@emailstriing = ActionController::Base.helpers.sanitize(params[:emailstring])

unless Email.find_by(emailstring: @emailstriing).blank?
@theemail = Email.find_by(emailstring: params[:emailstring])
@theemail.destroy
render :deleteemail
else
@theemail = Email.create(emailstring: @emailstriing)
if @theemail.save
render :addemail
else
render :bademail
end
end
end

private
def email_params
params.require(:email).permit(:emailstring)
end
end