# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
%w(A銀行 C信用金庫 E銀行).each do |name|
  Bank.create(name: name)
end

%w(Alice Bob Judy).each do |name|
  user = User.create(name: name)

  Bank.all.each do |bank|
    Account.create(user_id: user.id, bank_id: bank.id, name: "#{bank.name[0]}カード")
  end
end


