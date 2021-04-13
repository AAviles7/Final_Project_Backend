# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

ChannelMember.destroy_all
WorkspaceMember.destroy_all
Channel.destroy_all
Workspace.destroy_all
User.destroy_all

u1 = User.create!(username: 'harry', password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u2 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u3 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u4 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u5 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u6 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u7 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u8 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u9 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')
u10 = User.create!(username: Faker::Movies::HarryPotter.unique.character, password: '123', email: 'hogwarts@gmail.com', display_name: Faker::Movies::HarryPotter.unique.character, bio: Faker::Movies::HarryPotter.unique.quote, phone_number: '123-456-7890')

w1 = Workspace.create!(name: 'Hogwarts', join_code: '4houses')
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

c1 = Channel.create!(name: Faker::Movies::HarryPotter.unique.house, workspace_id: w1.id)
c2 = Channel.create!(name: Faker::Movies::HarryPotter.unique.house, workspace_id: w1.id)
c3 = Channel.create!(name: Faker::Movies::HarryPotter.unique.house, workspace_id: w1.id)
c4 = Channel.create!(name: Faker::Movies::HarryPotter.unique.house, workspace_id: w1.id)
c5 = Channel.create!(name: Faker::Movies::HarryPotter.unique.location, workspace_id: w2.id)
c6 = Channel.create!(name: Faker::Movies::HarryPotter.unique.location, workspace_id: w2.id)

cm1 = ChannelMember.create!(user_id: u1.id, channel_id: c1.id)
cm2 = ChannelMember.create!(user_id: u1.id, channel_id: c2.id)
cm3 = ChannelMember.create!(user_id: u1.id, channel_id: c3.id)
cm4 = ChannelMember.create!(user_id: u1.id, channel_id: c4.id)
cm5 = ChannelMember.create!(user_id: u2.id, channel_id: c1.id)
cm6 = ChannelMember.create!(user_id: u2.id, channel_id: c3.id)
cm7 = ChannelMember.create!(user_id: u3.id, channel_id: c1.id)
cm8 = ChannelMember.create!(user_id: u4.id, channel_id: c1.id)
cm9 = ChannelMember.create!(user_id: u5.id, channel_id: c1.id)
cm10 = ChannelMember.create!(user_id: u6.id, channel_id: c1.id)
cm11 = ChannelMember.create!(user_id: u6.id, channel_id: c2.id)
cm12 = ChannelMember.create!(user_id: u6.id, channel_id: c4.id)
cm13 = ChannelMember.create!(user_id: u6.id, channel_id: c3.id)
cm14 = ChannelMember.create!(user_id: u7.id, channel_id: c5.id)
cm15 = ChannelMember.create!(user_id: u7.id, channel_id: c6.id)
cm16 = ChannelMember.create!(user_id: u8.id, channel_id: c5.id)
cm17 = ChannelMember.create!(user_id: u8.id, channel_id: c6.id)
cm18 = ChannelMember.create!(user_id: u9.id, channel_id: c6.id)
cm19 = ChannelMember.create!(user_id: u10.id, channel_id: c5.id)
cm20 = ChannelMember.create!(user_id: u10.id, channel_id: c6.id)