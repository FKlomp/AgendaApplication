class User < ActiveRecord::Base
  belongs_to :address, :class_name => "Address",
    :foreign_key => "id_address";
  has_one :developer, :class_name => "Developer",
    :foreign_key => "id_user";
  has_many :agendas, :class_name => "Agenda",
    :foreign_key => "id_agenda";
end