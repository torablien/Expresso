class Order < ActiveRecord::Base
        default_scope{order('id ASC')}
        validates :name, presence: true
        validates :location, presence: true
        validates :time, presence: true
        validates :content, presence: true
end
