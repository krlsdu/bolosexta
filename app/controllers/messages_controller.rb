class MessagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def reply
    boot_twilio
    person_id = recovery_person_id
    sms = @client.messages.create(
      from: Rails.application.secrets.twilio_number,
      to: '+55'+Person.find(person_id).cellphone,
      body: "Hello there, your time to buy the cake."
    )
  end

  def recovery_person_id
    Meeting.order(:date).first.person_id
  end

  private

  def boot_twilio
    account_sid = Rails.application.secrets.twilio_sid
    auth_token = Rails.application.secrets.twilio_token
    @client = Twilio::REST::Client.new account_sid, auth_token
  end


end
