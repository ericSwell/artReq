class UserMailer < ActionMailer::Base
  default :from => 'dev@swellny.com'
 
  def request_email(request)
  	@request = request

if(request.type == "Wireframe")    
mail(:to => 'eric@swellny.com', :subject => 'Art Request for wireframe artwork received.')
end

if(request.type == "Final Art")
mail(:to => 'eric@swellny.com', :subject => 'Art Request for final artwork received.')
end

if(request.type == "Mock-Up")
mail(:to => 'eric@swellny.com', :subject => 'Art Request for a mock-up received.')
end

if(request.type == "Rough Art")
mail(:to => 'eric@swellny.com', :subject => 'Art Request for rough artwork received.')
end

end

def update_email_contact(request)
	@request = request
mail(:to => request.contact, :subject => 'Art Request updated!')
end

def update_email(request)
	@request = request
mail(:to => 'eric@swellny.com', :subject => 'Art Request updated!')
end

end
