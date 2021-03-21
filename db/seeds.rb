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
    pay_day: '2021-03-06',
    actual: 1225
)

Earning.create(
    user_id: 1,
    income_id: 1,
    pay_day: '2021-03-15',
    actual: 1230
)

Saving.create(
    saving_type: "Emergancy Savings",
    name: "Sara's Savings",
    amount: 1225
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

Outgoing.create(
    outgoing_type: "Utilities",
    name: "electric", 
    projected: 104.00,
    due_date: '2021-03-15'
)

Outgoing.create(
    outgoing_type: "Rent",
    name: "rent", 
    projected: 1565.00,
    due_date: '2021-03-01'
)

Outgoing.create(
    outgoing_type: "Transportation",
    name: "car Payment", 
    projected: 235.00,
    due_date: '2021-03-08'
)

Outgoing.create(
    outgoing_type: "Transportation",
    name: "gas", 
    projected: 80.00,
    due_date: '2021-03-29'
)

Outgoing.create(
    outgoing_type: "Insurance",
    name: "car", 
    projected: 133.00,
    due_date: '2021-03-01'
)

Outgoing.create(
    outgoing_type: "Insurance",
    name: "health Insurance", 
    projected: 456.00,
    due_date: '2021-03-01'
)
Outgoing.create(
    outgoing_type: "Insurance",
    name: "rental", 
    projected: 15.00,
    due_date: '2021-03-10'
)
Outgoing.create(
    outgoing_type: "Debt",
    name: "BOA", 
    projected: 105.00,
    due_date: '2021-03-14'
)
Outgoing.create(
    outgoing_type: "Debt",
    name: "Capital One", 
    projected: 85.00,
    due_date: '2021-03-20'
)

Outgoing.create(
    outgoing_type: "Living",
    name: "Groceries", 
    projected: 125.00,
    due_date: '2021-03-29'
)
Outgoing.create(
    outgoing_type: "Living",
    name: "Eating Out", 
    projected: 250.00,
    due_date: '2021-03-29'
)
Outgoing.create(
    outgoing_type: "Living",
    name: "Cloths", 
    projected: 100.00,
    due_date: '2021-03-29'
)




Bill.create(
    user_id: 1,
    outgoing_id: 1,
    paid_date: '2021-03-25',
    actual: 75.00
)
Bill.create(
    user_id: 1,
    outgoing_id: 2,
    paid_date: '2021-03-25',
    actual: 104.00
)
Bill.create(
    user_id: 1,
    outgoing_id: 3,
    paid_date: '2021-03-25',
    actual: 1565.00
)
Bill.create(
    user_id: 1,
    outgoing_id: 4,
    paid_date: '2021-03-08',
    actual: 235.00
)
Bill.create(
    user_id: 1,
    outgoing_id: 5,
    paid_date: '2021-03-29',
    actual: nil
)
Bill.create(
    user_id: 1,
    outgoing_id: 6,
    paid_date: '2021-03-01',
    actual: 133.00
)
Bill.create(
    user_id: 1,
    outgoing_id: 7,
    paid_date: '2021-03-01',
    actual: 456.00
)
Bill.create(
    user_id: 1,
    outgoing_id: 8,
    paid_date: '2021-03-10',
    actual: 15.00
)
Bill.create(
    user_id: 1,
    outgoing_id: 9,
    paid_date: '2021-03-14',
    actual: 105.00
)
Bill.create(
    user_id: 1,
    outgoing_id: 10,
    paid_date: '2021-03-2',
    actual: nil
)
Bill.create(
    user_id: 1,
    outgoing_id: 11,
    paid_date: '2021-03-25',
    actual: nil
)
Bill.create(
    user_id: 1,
    outgoing_id: 12,
    paid_date: '2021-03-25',
    actual: nil
)
Bill.create(
    user_id: 1,
    outgoing_id: 13,
    paid_date: '2021-03-25',
    actual: nil
)

Debt.create(
    debt_type: "Credit Card",
    name: "BOA Visa",
    inital_amount: 2580,
    current_amount: 2500,
    interest: 17,
    in_collection: true
)
Debt.create(
    debt_type: "Credit Card",
    name: "Capital One",
    inital_amount: 5000,
    current_amount: 3250,
    interest: 18,
    in_collection: true
)

Transaction.create(
    user_id: 1,
    debt_id: 2,
    transaction_date: '2021-03-25',
    amount: nil
)

Transaction.create(
    user_id: 1,
    debt_id: 1,
    transaction_date: '2021-03-25',
    amount: 80
)

puts "✨✨✨✨✨✨SEEDED✨✨✨✨✨✨"