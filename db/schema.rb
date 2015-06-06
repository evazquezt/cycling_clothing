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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150603224732) do

  create_table "apparels", force: :cascade do |t|
    t.string "section"
    t.string "item"
    t.string "description"
    t.float  "min1"
    t.float  "max1"
    t.float  "min2"
    t.float  "max2"
    t.float  "min3"
    t.float  "max3"
    t.float  "min4"
    t.float  "max4"
    t.float  "min5"
    t.float  "max5"
    t.float  "min6"
    t.float  "max6"
    t.float  "min7"
    t.float  "max7"
    t.float  "min8"
    t.float  "max8"
    t.float  "min9"
    t.float  "max9"
  end

end
