class InquiryMailer < ApplicationMailer
  default from: "otonanogoiryokudrill@gmail.com"  #送信元のアドレス
  
  def recieved_email(inquiry)
    @inquiry = inquiry
    mail(:to => inquiry.email, :subject => "お問合せを承りました")
  end  
end