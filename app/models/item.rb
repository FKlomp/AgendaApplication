class Item < ActiveRecord::Base
  belongs_to :format, :class_name => "Format",
    :foreign_key => "id_format";
  belongs_to :location, :class_name => "Location",
    :foreign_key => "id_location";
end