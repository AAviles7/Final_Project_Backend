# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 11) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chatmessage_likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "chatroom_message_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chatroom_message_id"], name: "index_chatmessage_likes_on_chatroom_message_id"
    t.index ["user_id"], name: "index_chatmessage_likes_on_user_id"
  end

  create_table "chatroom_members", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "chatroom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chatroom_id"], name: "index_chatroom_members_on_chatroom_id"
    t.index ["user_id"], name: "index_chatroom_members_on_user_id"
  end

  create_table "chatroom_messages", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "chatroom_id", null: false
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chatroom_id"], name: "index_chatroom_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_chatroom_messages_on_user_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.string "name"
    t.bigint "workspace_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["workspace_id"], name: "index_chatrooms_on_workspace_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.bigint "workspace_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["receiver_id"], name: "index_conversations_on_receiver_id"
    t.index ["sender_id", "receiver_id"], name: "index_conversations_on_sender_id_and_receiver_id", unique: true
    t.index ["sender_id"], name: "index_conversations_on_sender_id"
    t.index ["workspace_id"], name: "index_conversations_on_workspace_id"
  end

  create_table "direct_messages", force: :cascade do |t|
    t.text "body"
    t.bigint "conversation_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conversation_id"], name: "index_direct_messages_on_conversation_id"
    t.index ["user_id"], name: "index_direct_messages_on_user_id"
  end

  create_table "directmessage_likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "direct_message_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["direct_message_id"], name: "index_directmessage_likes_on_direct_message_id"
    t.index ["user_id"], name: "index_directmessage_likes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "display_name"
    t.text "bio"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "workspace_members", force: :cascade do |t|
    t.bigint "workspace_id", null: false
    t.bigint "user_id", null: false
    t.boolean "remember"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_workspace_members_on_user_id"
    t.index ["workspace_id"], name: "index_workspace_members_on_workspace_id"
  end

  create_table "workspaces", force: :cascade do |t|
    t.string "name"
    t.string "join_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "chatmessage_likes", "chatroom_messages"
  add_foreign_key "chatmessage_likes", "users"
  add_foreign_key "chatroom_members", "chatrooms"
  add_foreign_key "chatroom_members", "users"
  add_foreign_key "chatroom_messages", "chatrooms"
  add_foreign_key "chatroom_messages", "users"
  add_foreign_key "chatrooms", "workspaces"
  add_foreign_key "conversations", "workspaces"
  add_foreign_key "direct_messages", "conversations"
  add_foreign_key "direct_messages", "users"
  add_foreign_key "directmessage_likes", "direct_messages"
  add_foreign_key "directmessage_likes", "users"
  add_foreign_key "workspace_members", "users"
  add_foreign_key "workspace_members", "workspaces"
end
