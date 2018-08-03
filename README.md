# README

**Technology**

Rails 5.2.0

Postgresql


**Testing**

Rest Client (for api testing)

Rspec


**Installation**

run Rails db:create && rails db:migrate
run Rails S

**Usage**

After user creation, the user enters all the fields and submits, the frontend gets all the information, stores them in different variables, and sends multiples post fetches to `/api/v1/rolls/:id`, `/api/v1/expenses/:id` and `/api/v1/capitalizations/:id` to the backend and stores in the database. The frontend sends a get fetch to `/api/v1/solutions/:id` to get the calculated Loan amount and Debt rate, process the JSON, and display it to user.
