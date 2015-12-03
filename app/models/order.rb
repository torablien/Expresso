class Order < ActiveRecord::Base
        default_scope{order('created_at DESC')}
        validates :name, presence: true, length: { maximum: 100 }
        validates :location, presence: true, length: { maximum: 100 }
        validates :time, presence: true, length: { maximum: 100 }
        validates :content, presence: true, length: { maximum: 500 }
end
