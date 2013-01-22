# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20120819150105) do

  create_table "h2s", :force => true do |t|
    t.string   "mac",        :limit => 17,  :null => false
    t.string   "ip",         :limit => 15,  :null => false
    t.string   "fio",        :limit => 128
    t.string   "adress",     :limit => 128
    t.string   "tp",         :limit => 128
    t.integer  "ip_sw",      :limit => 8
    t.string   "def_gw",     :limit => 13
    t.integer  "vlan"
    t.string   "netmask",    :limit => 13
    t.string   "dns1",       :limit => 14
    t.string   "dns2",       :limit => 14
    t.integer  "sw_port"
    t.boolean  "blocked"
    t.text     "comment"
    t.text     "oldips"
    t.integer  "homenet",    :limit => 1,   :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

end
