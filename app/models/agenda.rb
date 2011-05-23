class Agenda < ActiveRecord::Base
  has_many :items, :class_name => "Item",
    :foreign_key => "id_item";
  has_many :users, :class_name => "User",
    :foreign_key => "id_user";
end