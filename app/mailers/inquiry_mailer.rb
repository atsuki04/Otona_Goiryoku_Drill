class InquiryMailer < ApplicationMailer
  default from: "otonanogoiryokudrill@gmail.com"  #送信元のアドレス
  default to: "otonanogoiryokudrill@gmail.com"  #送信先のアドレス
  
  def received_email(inquiry)
    @inquiry = inquiry
    mail(:to => inquiry.email, :subject => "お問合せを承りました")
  end  
  
end