class ChannelMember < ApplicationRecord
    belongs_to :channel
    # has_one :workspace_members 
    belongs_to :user #, through: :workspace_members
end
