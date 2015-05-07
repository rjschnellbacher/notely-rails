class User < ActiveRecord::Base
  has_secure_password
  validates :password, length: { minimum: 8 }
  validate :require_password_confirmation
  has_many :notes

  def display_name
    name.presence || username
  end
  
  private

  def require_password_confirmation
    if password.present? && password != password_confirmation
      errors.add :password_confirmation, 'is required when setting your password'
    end
  end
end
