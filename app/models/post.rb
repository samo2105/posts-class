class Post < ApplicationRecord
  validates :content, :user, :photo_url, presence: true
  validate :email_syntax, :photo_content, :chilenismos

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  VALID_URL = URI::regexp(%w(http https))

  def email_syntax
    errors.add(:user, 'Email no válido') if !self.user.match?(VALID_EMAIL_REGEX)
  end

  def photo_content
    errors.add(:photo_url, 'Invalid URL') if !self.photo_url.match?(VALID_URL)
  end

  def chilenismos
    errors.add(:content, 'Valida loh campos po wn') if !self.content.include?('weon')
  end
end
