class Order < ActiveRecord::Base
        default_scope{order('created_at DESC')}
        validates :name, presence: true
        validates :location, presence: true
        validates :time, presence: true
        validates :content, presence: true
end
