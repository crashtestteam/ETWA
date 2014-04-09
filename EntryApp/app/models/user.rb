class User < ActiveRecord::Base
	belongs_to :role
	has_many :attempts

  
  before_save { self.email = email.downcase }
  before_create :create_remember_token
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
 # validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
   #                 uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }


  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def admin?
    logger.debug "IMPORTANT INFO COMING NEXT"
    logger.debug self.role_id
    return self.role.name=="admin"
  end

	private
	
		def create_remember_token
     	self.remember_token = User.hash(User.new_remember_token)
		end
end
