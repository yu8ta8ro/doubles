class InquiryMailer < ApplicationMailer
  default from: "yu8ta8ro@gmail.com"   # 送信元アドレス
  default to: "yu8ta8ro@gmail.com"     # 送信先アドレス

  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'お問い合わせを承りました')
  end

end
