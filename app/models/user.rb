class User < ApplicationRecord
    has_many :events #events that the user created 
    has_many :joined_events
    has_many :rsvp, through: :joined_events, :source => :event #events that the user has joined


    has_many :active_follows, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followees, through: :active_follows

    has_many :being_followed, foreign_key: :followee_id, class_name: 'Follow'
    has_many :followers, through: :being_followed

    # validates :username, uniqueness: true
    # validates_presence_of :name, :username, :password
end
