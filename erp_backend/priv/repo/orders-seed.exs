# Script for populating the database. You can run it as:
#
#     mix run priv/repo/orders-seed.exs
#

alias Erp.Repo
alias Erp.Sales.Order

data = [
  %{
    "price" => 2334.95,
    "userEmail" => "nic@mail.com",
    "time" => ~N[2021-02-01 23:00:07],
    "bikesAmount" => 22
  },
  %{
    "price" => 900000.99,
    "userEmail" => "test@mail.com",
    "time" => ~N[2021-02-01 23:00:07],
    "bikesAmount" => 3000
  },
]

Enum.each data, fn(order) ->

  userEmail = Map.get(order, "userEmail")
  price = Map.get(order, "price")
  time = Map.get(order, "time")
  bikesAmount = Map.get(order, "bikesAmount")

  Repo.insert! %Order{
    userEmail: userEmail,
    price: price,
    time: time,
    bikesAmount: bikesAmount
  }
end