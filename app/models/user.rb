class User < ActiveRecord::Base
<<<<<<< HEAD
  def self.omniauth(auth)
    
    where(provider: auth.provider,uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.image = auth.info.image
      user.token = auth.credentials.token
      user.expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
=======
        default_scope{order('id ASC')}
        # validates :name, presence: true
        # validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 15 }
        # validates :email, presence: true, uniqueness: true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "is not valid" }
        # validates :address, presence: true
        
        def self.omniauth(auth)
            where(provider: auth.provider,uid: auth.uid).first_or_initialize.tap do |user|
              user.provider = auth.provider
              user.uid = auth.uid
              user.name = auth.info.name
              user.image = auth.info.image
              user.email = auth.info.email
              user.token = auth.credentials.token
              user.expires_at = Time.at(auth.credentials.expires_at)
              user.save!
            end
        end
>>>>>>> eda1b488f595cb1a0daa15ab14d2740ca1de2f2d
end
