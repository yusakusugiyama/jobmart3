class UToCLike < ActiveRecord::Base
  #association
  belongs_to :user
  belongs_to :company

  #validation
  validates :price, presence: true


end
