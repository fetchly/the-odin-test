class User < ApplicationRecord
  acts_as_voter
  before_create :enroll_in_foundations

  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: %i[github google]

end
