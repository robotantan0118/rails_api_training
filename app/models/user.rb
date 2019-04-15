class User < ApplicationRecord
  has_many :accounts

  validates :name, presence: true

  def to_detail
    {
      attributes: {
        id: self.id,
        name: self.name,
        account_ids: self.accounts.ids
      }
    }
  end

  def accounts_json
    [].tap do |res|
      accounts.each do |account|
        res << {
          attributes: {
            id: self.id,
            user_id: self.id,
            name: account.name,
            balance: account.balance
          }
        }
      end
    end
  end
end
