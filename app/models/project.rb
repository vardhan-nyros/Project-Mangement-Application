class Project < ActiveRecord::Base
has_and_belongs_to_many :developers
validates :Title,:description,:start_date,:end_date,:Client_name,:platform, :presence => true
has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
