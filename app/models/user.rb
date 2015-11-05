class User < ActiveRecord::Base
        validates :username, presence: true
        validates :name, presence: true
        validates :email, presence: true
        validates :address, presence: true
end
