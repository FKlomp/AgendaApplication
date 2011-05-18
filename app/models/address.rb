class Address < ActiveRecord::Base
  has_one :user, :class_name => "User",
    :foreign_key => "id_address";
  belongs_to :location, :class_name => "Location",
    :foreign_key => "id_location";
end