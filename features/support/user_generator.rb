require 'faker'

def generateFakeEmail
  name = Faker::String.random(length: [5, 12])
  final_name = "#{name}@test.com"
  return final_name
end

def generatePassword
  pass = Faker::Alphanumeric.alphanumeric(number: 10)
  return pass
end