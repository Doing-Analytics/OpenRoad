class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :email, uniqueness: true

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

end
