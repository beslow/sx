class User < ActiveRecord::Base
  validates_uniqueness_of :name
  validates :password,confirmation: true
  validates :password_confirmation, presence: true
  def self.login(name, password)
    hashed_password = hash_password(password || "")
    find(:first,:conditions => ["name = ? and hashed_password = ?",name, hashed_password])
  end
  def try_to_login
    User.login(self.name, self.password)
  end
end