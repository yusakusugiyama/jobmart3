class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #association
  has_many :u_to_c_likes
  has_many :company, through: :u_to_c_likes

  def name_method
    "#{last_name} #{first_name}"
  end

  def name_kana_method
    "#{last_name_kana} #{first_name_kana}"
  end

  def birthday_method
    "#{birth_y}年 #{birth_m}月 #{birth_d}日"
  end
end
