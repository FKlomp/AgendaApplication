class Format < ActiveRecord::Base
  belongs_to :developer, :class_name => "Developer",
    :foreign_key => "id_developer";
end