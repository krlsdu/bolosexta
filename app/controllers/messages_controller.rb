class MessagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def reply
    message_body = params["Body"]
    from_number = params["From"]
    boot_twilio
    sms = @client.messages.create(
      from: Rails.application.secrets.twilio_number,
      to: cellphone,
      body: "Hello there, your time to buy the cake."
    )
  end

  private

  def boot_twilio
    account_sid = Rails.application.secrets.twilio_sid
    auth_token = Rails.application.secrets.twilio_token
    @client = Twilio::REST::Client.new account_sid, auth_token
  end

  def cellphone
    sexta = Meeting.where(date:Date.tomorrow)
    person_id = sexta[0].person_id
    cellphone_person = Person.find(person_id).cellphone
    "+55".concat(cellphone_person)
  end
end
