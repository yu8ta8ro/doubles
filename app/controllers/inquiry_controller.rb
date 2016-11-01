class InquiryController < ApplicationController

  def index
  end

  def new
    @inquiry = Inquiry.new
  end

  def confirmation
      @inquiry = Inquiry.new(inquiry_params)
      if @inquiry.valid?
        render :action => 'confirmation'
      else
        render :action => 'index'
      end
  end

  def thanks
    @inquiry = Inquiry.new(inquiry_params)
    # send mail
    InquiryMailer.received_email(@inquiry).deliver

    flash[:notice] = "お問い合わせ頂き、ありがとうございました。"
    render :action => 'thanks'
  end

  private
  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :message)
  end

end
