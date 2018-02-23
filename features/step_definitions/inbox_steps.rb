Given("Kalle have sent an message to Holger") do
  sender = User.find_by(name: 'Kalle')
  receiver = User.find_by(name: 'Holger')
  sender.send_message(receiver, "Heia Northug", "Heia Norge")
end