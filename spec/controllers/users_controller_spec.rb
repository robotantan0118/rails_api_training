require 'rails_helper'

RSpec.describe UsersController, type: :request do
  let(:banks) do
    %i(bank_a bank_b bank_c).each { |type| create(type) }
  end
  let(:user) { create(:user) }
  let(:accounts) do
    Bank.all.each do |bank|
      create(:account, user_id: user.id, bank_id: bank.id, name: "#{bank.name[0]}カード")
    end
  end
  before do
    banks
    user
    accounts
  end

  describe "GET /users/:user_id/accounts" do
    before { get "/users/#{user.id}/accounts" }
    it do
      binding.pry
      expect(response).to have_http_status(200)
    end
  end
end
