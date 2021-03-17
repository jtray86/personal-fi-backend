User.create(
    username: "sara",
    password: "123",
    name: "Sara",
    email: "fake@email.com"
)

Income.create(
    income_type: "w2 Job",
    name: "Sara google",
    projected: 1238
)

Earning.create(
    user_id: 1,
    income_id: 1,
    pay_day: '2021-03-15',
    actual: 1225
)

Saving.create(
    saving_type: "Regular Savings",
    name: "Sara's Savings",
    amount: 200
)

Deposit.create(
    user_id: 1,
    saving_id: 1,
    deposit_date: '2021-03-15',
    amount: 1225
)

Outgoing.create(
    outgoing_type: "Utilities",
    name: "Phone", 
    projected: 74.98,
    due_date: '2021-03-25'
)

Bill.create(
    user_id: 1,
    outgoing_id: 1,
    paid_date: '2021-03-25',
    actual: 75.00
)

Debt.create(
    debt_type: "Credit Card",
    name: "BOA Visa",
    inital_amount: 2580,
    current_amount: 2500,
    interest: 17,
    in_collection: true
)

Transaction.create(
    user_id: 1,
    debt_id: 1,
    transaction_date: '2021-03-25',
    amount: 80
)

puts "✨✨✨✨✨✨SEEDED✨✨✨✨✨✨"