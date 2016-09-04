class MessageMailer < ApplicationMailer
  # use your own email address here
  default :to => "rucinski@aol.com"

  def message_me(msg)
    @msg = msg

    mail from: @msg.email, subject: "TLCshare Information Request: #{@msg.subject}", body: @msg.content

  end
end