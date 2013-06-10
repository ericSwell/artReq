class UserMailer < ActionMailer::Base
  default :from => Settings.email.from
 
  def request_email(request)
  	@request = request

if(request.type == "Wireframe")    
mail(:to => Settings.email.send, :subject => 'Art request for a wireframe received.')
end

if(request.type == "Final Art")
mail(:to => Settings.email.send, :subject => 'Art Request for final artwork received.')
end

if(request.type == "Mock-Up")
mail(:to => Settings.email.send, :subject => 'Art Request for a mock-up received.')
end

if(request.type == "Rough Art")
mail(:to => Settings.email.send, :subject => 'Art Request for rough artwork received.')
end

end

def update_email_contact(request)
	@request = request
mail(:to => request.contact, :subject => 'Art Request Updated!')
end

def update_email(request)
	@request = request
mail(:to => Settings.email.send, :subject => 'Art Request Updated!')
end

end
