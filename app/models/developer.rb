class Developer < ActiveRecord::Base
  has_many :formats, :class_name => "Format",
    :foreign_key => "id_developer";
  belongs_to :address, :class_name => "Address",
    :foreign_key => "id_address";
end