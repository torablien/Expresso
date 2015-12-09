class UserMailer < ApplicationMailer
    default :from => "peterExpresso@gmail.com"
    
    def order_accepted(id)
        @user = User.find(id)
        mail(:to => @user.email, :subject => "Order has been Accepted")
    end
end
