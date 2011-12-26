class Developer < ActiveRecord::Base
has_and_belongs_to_many :projects
validates :name,:platform,:date_of_joining,:image_path, :presence => true
validates :email, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => true,
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
end
