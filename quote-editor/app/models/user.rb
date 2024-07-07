class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # ORIG
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable

  # Tutorial:
  devise :database_authenticatable, :validatable

  belongs_to :company

  def name
    email.split("@").first.capitalize
  end

end
