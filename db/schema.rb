# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 0) do

  create_table "addresses", :force => true do |t|
    t.integer "id_location",               :null => false
    t.string  "streetname",  :limit => 45
    t.string  "housenumber", :limit => 45
    t.string  "postal_code", :limit => 45
    t.string  "city",        :limit => 45
    t.string  "telephone",   :limit => 45
  end

  add_index "addresses", ["id_location"], :name => "fk_addresses_locations1"

  create_table "agendas", :force => true do |t|
    t.string "name", :limit => 45
  end

  create_table "agendas_items", :id => false, :force => true do |t|
    t.integer "id",        :null => false
    t.integer "id_agenda", :null => false
    t.integer "id_item",   :null => false
  end

  add_index "agendas_items", ["id_agenda"], :name => "fk_agendas_items_agenda1"
  add_index "agendas_items", ["id_item"], :name => "fk_agendas_items_items1"

  create_table "contacts", :id => false, :force => true do |t|
    t.integer "id",         :null => false
    t.integer "id_user",    :null => false
    t.integer "id_contact", :null => false
  end

  add_index "contacts", ["id_contact"], :name => "fk_contacts_users1"
  add_index "contacts", ["id_user"], :name => "fk_contacts_users"

  create_table "developers", :force => true do |t|
    t.integer "id_user",                   :null => false
    t.integer "id_address",                :null => false
    t.string  "name",        :limit => 45
    t.string  "image"
    t.string  "description", :limit => 45
  end

  add_index "developers", ["id_address"], :name => "fk_developers_address"
  add_index "developers", ["id_user"], :name => "fk_developers_users1"

  create_table "formats", :force => true do |t|
    t.integer "id_developer",               :null => false
    t.string  "name",         :limit => 45
    t.text    "format"
  end

  add_index "formats", ["id_developer"], :name => "id_developer"

  create_table "items", :force => true do |t|
    t.integer  "id_format",                 :null => false
    t.integer  "id_location",               :null => false
    t.string   "title",       :limit => 45
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
  end

  add_index "items", ["id_format"], :name => "fk_items_format"
  add_index "items", ["id_location"], :name => "fk_items_location"

  create_table "locations", :force => true do |t|
    t.string "name",      :limit => 45
    t.float  "langitude", :limit => 10
    t.float  "latitude",  :limit => 10
  end

  create_table "users", :force => true do |t|
    t.integer "id_address",               :null => false
    t.string  "username",   :limit => 45
    t.string  "password",   :limit => 45
    t.string  "email",      :limit => 45
    t.string  "firstname",  :limit => 45
    t.string  "lastname",   :limit => 45
  end

  add_index "users", ["id_address"], :name => "fk_users_addresses1"

  create_table "users_agendas", :id => false, :force => true do |t|
    t.integer "id",        :null => false
    t.integer "id_user",   :null => false
    t.integer "id_agenda", :null => false
  end

  add_index "users_agendas", ["id_agenda"], :name => "fk_users_agendas_agenda1"
  add_index "users_agendas", ["id_user"], :name => "fk_users_agendas_users1"

  create_table "users_locations", :id => false, :force => true do |t|
    t.integer "id",           :null => false
    t.integer "users_id",     :null => false
    t.integer "locations_id", :null => false
  end

  add_index "users_locations", ["locations_id"], :name => "fk_users_has_locations_locations1"
  add_index "users_locations", ["users_id"], :name => "fk_users_has_locations_users1"

end
