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

ActiveRecord::Schema.define(version: 20161116164901) do

  create_table "average_caches", force: :cascade do |t|
    t.integer  "rater_id"
    t.string   "rateable_type"
    t.integer  "rateable_id"
    t.float    "avg",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.integer  "type"
    t.integer  "user_id"
    t.integer  "review_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "parent_id"
    t.string   "commentable_type"
    t.integer  "commentable_id"
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"
    t.index ["parent_id"], name: "index_comments_on_parent_id"
    t.index ["review_id"], name: "index_comments_on_review_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "mobile_brands", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "mobile_id"
    t.integer  "company_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["company_id"], name: "index_mobile_brands_on_company_id"
    t.index ["mobile_id"], name: "index_mobile_brands_on_mobile_id"
  end

  create_table "mobile_reviews", force: :cascade do |t|
    t.string   "description"
    t.integer  "review_id"
    t.integer  "mobile_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["mobile_id"], name: "index_mobile_reviews_on_mobile_id"
    t.index ["review_id"], name: "index_mobile_reviews_on_review_id"
  end

  create_table "mobiles", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "mobile_brand_id"
    t.string   "network_technology"
    t.string   "launch_announced"
    t.string   "launch_status"
    t.string   "body_dimensions"
    t.integer  "body_weight"
    t.string   "body_sim"
    t.string   "display_type"
    t.string   "display_size"
    t.string   "display_resolution"
    t.string   "display_multitouch"
    t.string   "platform_os"
    t.string   "platform_chipset"
    t.string   "platform_CPU"
    t.string   "platform_GPU"
    t.string   "memory_cardslot"
    t.string   "memory_internal"
    t.string   "camera_primary"
    t.string   "camera_features"
    t.string   "camera_video"
    t.string   "camera_secondary"
    t.string   "sound_alerttypes"
    t.string   "sound_loudspeakers"
    t.string   "sound_35mmjack"
    t.string   "comms_wlan"
    t.string   "comms_bluetooth"
    t.string   "comms_gps"
    t.string   "comms_nfc"
    t.string   "comms_radio"
    t.string   "comms_usb"
    t.string   "features_sensors"
    t.string   "features_messaging"
    t.string   "features_browser"
    t.string   "features_java"
    t.string   "features_misc"
    t.string   "battery"
    t.string   "misc_colors"
    t.string   "price_groups"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "thickness"
    t.string   "os"
    t.string   "storage"
    t.string   "display"
    t.string   "camera"
    t.string   "ram"
    t.string   "battery_spec"
    t.float    "price"
    t.index ["mobile_brand_id"], name: "index_mobiles_on_mobile_brand_id"
  end

  create_table "overall_averages", force: :cascade do |t|
    t.string   "rateable_type"
    t.integer  "rateable_id"
    t.float    "overall_avg",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rates", force: :cascade do |t|
    t.integer  "rater_id"
    t.string   "rateable_type"
    t.integer  "rateable_id"
    t.float    "stars",         null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["rateable_id", "rateable_type"], name: "index_rates_on_rateable_id_and_rateable_type"
    t.index ["rater_id"], name: "index_rates_on_rater_id"
  end

  create_table "rating_caches", force: :cascade do |t|
    t.string   "cacheable_type"
    t.integer  "cacheable_id"
    t.float    "avg"
    t.integer  "qty",            null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["cacheable_id", "cacheable_type"], name: "index_rating_caches_on_cacheable_id_and_cacheable_type"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.string   "mobile"
    t.integer  "user_id"
    t.integer  "mobile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["mobile_id"], name: "index_reviews_on_mobile_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string  "keywords"
    t.integer "mobile_brand_id"
    t.float   "minimum_price"
    t.float   "maximum_price"
    t.float   "minimum_rate"
    t.float   "maximum_rate"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
