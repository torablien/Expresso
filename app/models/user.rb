class User < ActiveRecord::Base
        validates :username, presence: true
        validates_uniqueness_of :username
        validates :name, presence: true
        validates :email, presence: true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "is not valid" }
        validates_uniqueness_of :email
        validates :address, presence: true
end
