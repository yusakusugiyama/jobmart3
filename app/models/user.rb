class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def name_method
    "#{last_name} #{first_name}"
  end

  def name_kana_method
    "#{last_name_kana} #{first_name_kana}"
  end
end
