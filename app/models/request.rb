class Request < ActiveRecord::Base
after_initialize :default_values

self.inheritance_column = nil

 attr_accessible :status, :accountname, :artreview, :asap, :comments, :contact, :contentreview, :description, :duedate, :references, :requestname, :specifications, :type
validates :accountname, :presence => true
validates :requestname, :presence => true
validates :contact, :presence => true
validates :duedate, :presence => true
validates :description, :presence => true
validates :contact, :email => true


private
  def default_values
  self.status ||="Initial Request"
  end
end
