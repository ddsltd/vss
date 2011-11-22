class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name , :email , :security_question,:password,:security_answer, 
  :password_confirmation,:salt,:encrypted_passwords, :security_answer_confirmation , :encrypted_security_answer
  attr_accessor :password,:security_answer
  
  validates :password, :confirmation => true
  validates :first_name , :presence=>true , :length=>{ :maximum => 30 }
  validates :last_name ,  :presence=>true ,  :length=>{ :maximum => 30 }
  validates :email , :presence=>true , :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => :create } ,
            :uniqueness => true
  validates :security_question ,:presence=>true ,
        :numericality => { :greater_than => 0 ,:message => "can't be left blank" }
  validates :security_answer , :confirmation=>true , :presence=>true  , :if => "security_question != 0" 
  
  before_save :encrypt_password , :encrypt_security_answer
  
  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end   
  
  def has_password?(submitted_password)
     encrypted_passwords == encrypt(submitted_password)
   end
  
  private
  
  def encrypt_security_answer
    self.encrypted_security_answer = encrypt(security_answer)
  end
  
  def encrypt_password
    self.salt = make_salt unless has_password?(password)
    self.encrypted_passwords = encrypt(password)
  end
  
  def encrypt(string)
    secure_hash("#{salt}--#{string}")
  end
  
  def secure_hash(string)
    Digest::SHA2.hexdigest(string)
  end
  
  def make_salt
    secure_hash("#{Time.now.utc}--#{password}")
  end

end
