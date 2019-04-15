class Account < ApplicationRecord
  belongs_to :user
  belongs_to :bank

  validates :user_id, presence: true
  validates :bank_id, presence: true

  def to_detail
    {
      attributes: {
        id: self.id,
        user_id: self.user_id,
        name: self.name,
        balance: self.balance
      }
    }
  end
end
