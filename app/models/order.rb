class Order < ActiveRecord::Base
        validates :name, presence: true
        validates :location, presence: true
        validates :time, presence: true
        validates :content, presence: true

end
