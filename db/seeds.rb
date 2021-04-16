# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

ChatroomMessage.destroy_all
Conversation.destroy_all
DirectMessage.destroy_all
ChatroomMember.destroy_all
WorkspaceMember.destroy_all
Chatroom.destroy_all
Workspace.destroy_all
User.destroy_all

u1 = User.create!(username: 'harry', password: '123', email: 'hogwarts@gmail.com', display_name: 'Harry Potter', bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u2 = User.create!(username: 'ron', password: '123', email: 'hogwarts@gmail.com', display_name: 'Ron Weasley', bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u3 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u4 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u5 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u6 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u7 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u8 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u9 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u10 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')

w1 = Workspace.create!(name: 'Hogwarts', join_code: '123')
w2 = Workspace.create!(name: 'Order of the Pheonix', join_code: 'deathlyhallows')

m1 = WorkspaceMember.create!(workspace_id: w1.id, user_id: u1.id)
m2 = WorkspaceMember.create!(workspace_id: w1.id, user_id: u2.id)
m3 = WorkspaceMember.create!(workspace_id: w1.id, user_id: u3.id)
m4 = WorkspaceMember.create!(workspace_id: w1.id, user_id: u4.id)
m5 = WorkspaceMember.create!(workspace_id: w1.id, user_id: u5.id)
m6 = WorkspaceMember.create!(workspace_id: w1.id, user_id: u6.id)
m7 = WorkspaceMember.create!(workspace_id: w2.id, user_id: u7.id)
m8 = WorkspaceMember.create!(workspace_id: w2.id, user_id: u8.id)
m9 = WorkspaceMember.create!(workspace_id: w2.id, user_id: u9.id)
m10 = WorkspaceMember.create!(workspace_id: w2.id, user_id: u10.id)

c1 = Chatroom.create!(name: Faker::Movies::HarryPotter.unique.house, workspace_id: w1.id)
c2 = Chatroom.create!(name: Faker::Movies::HarryPotter.unique.house, workspace_id: w1.id)
c3 = Chatroom.create!(name: Faker::Movies::HarryPotter.unique.house, workspace_id: w1.id)
c4 = Chatroom.create!(name: Faker::Movies::HarryPotter.unique.house, workspace_id: w1.id)
c5 = Chatroom.create!(name: Faker::Movies::HarryPotter.unique.location, workspace_id: w2.id)
c6 = Chatroom.create!(name: Faker::Movies::HarryPotter.unique.location, workspace_id: w2.id)

cm1 = ChatroomMember.create!(user_id: u1.id, chatroom_id: c1.id)
cm2 = ChatroomMember.create!(user_id: u1.id, chatroom_id: c2.id)
cm3 = ChatroomMember.create!(user_id: u1.id, chatroom_id: c3.id)
cm4 = ChatroomMember.create!(user_id: u1.id, chatroom_id: c4.id)
cm5 = ChatroomMember.create!(user_id: u2.id, chatroom_id: c1.id)
cm6 = ChatroomMember.create!(user_id: u2.id, chatroom_id: c3.id)
cm7 = ChatroomMember.create!(user_id: u3.id, chatroom_id: c1.id)
cm8 = ChatroomMember.create!(user_id: u4.id, chatroom_id: c1.id)
cm9 = ChatroomMember.create!(user_id: u5.id, chatroom_id: c1.id)
cm10 = ChatroomMember.create!(user_id: u6.id, chatroom_id: c1.id)
cm11 = ChatroomMember.create!(user_id: u6.id, chatroom_id: c2.id)
cm12 = ChatroomMember.create!(user_id: u6.id, chatroom_id: c4.id)
cm13 = ChatroomMember.create!(user_id: u6.id, chatroom_id: c3.id)
cm14 = ChatroomMember.create!(user_id: u7.id, chatroom_id: c5.id)
cm15 = ChatroomMember.create!(user_id: u7.id, chatroom_id: c6.id)
cm16 = ChatroomMember.create!(user_id: u8.id, chatroom_id: c5.id)
cm17 = ChatroomMember.create!(user_id: u8.id, chatroom_id: c6.id)
cm18 = ChatroomMember.create!(user_id: u9.id, chatroom_id: c6.id)
cm19 = ChatroomMember.create!(user_id: u10.id, chatroom_id: c5.id)
cm20 = ChatroomMember.create!(user_id: u10.id, chatroom_id: c6.id)

cmsg1 = ChatroomMessage.create!(user_id: u1.id, chatroom_id: c1.id, body: 'sample text')


# conv1 = Conversation.create!(sender_id: u1.id, receiver_id: u2.id)
# dm1 = DirectMessage.create!(user_id: u1.id, conversation_id: conv1.id, body: 'sample text')
