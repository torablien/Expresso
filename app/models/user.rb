class User < ActiveRecord::Base
        default_scope{order('id ASC')}
        validates :name, presence: true
        validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 15 }
        validates :email, presence: true, uniqueness: true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "is not valid" }
        validates :address, presence: true
end
