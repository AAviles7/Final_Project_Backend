class User < ApplicationRecord
    has_many :workspace_members
    has_many :workspaces, through: :workspace_members
    has_many :channel_members, through: :workspace_members
    has_many :channels, through: :channel_members
    has_many :channel_messages, through: :channel_members
    has_many :direct_messages

    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
end
