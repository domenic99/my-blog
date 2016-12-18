class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" },
    default_url: "/images/kit.jpg",
    bucket: '******'
  validates :avatar, attachment_presence: true
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  validates :username,
  :presence => true,
  :uniqueness => {
    :case_sensitive => false
  }
  has_many :articles
end
