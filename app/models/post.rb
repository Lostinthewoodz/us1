class Post < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('created_at DESC') }
	validates :user_id, presence: true 
	validates :content, presence: true
	validates :title, presence: true
	validates_inclusion_of :sabre, :in => [true, false]
	validates_inclusion_of :nongds, :in => [true, false]
end
