require 'unirest'

response = Unirest.get("http://localhost:3000/api/contacts")
puts JSON.pretty_generate(response.body)

response = Unirest.get("http://localhost:3000/api/contacts/1")
puts JSON.pretty_generate(response.body)

response = Unirest.post(
                        "http://localhost:3000/api/contacts", 
                        parameters: {
                                      first_name: "John",
                                      last_name: "Doe",
                                      email: "jdoe@gmail.com",
                                      
                                    }
                          )
puts JSON.pretty_generate(response.body)

contact_id = 1 
runner_params = {
                  name: "John Doe"

                }

response = Unirest.patch(
                         "http//localhost3000/api/contacts/#{contact_id}",
                         parameters: runner_params
                        )
contact_hash = response.body
puts JSON.pretty_generate(contact_hash)

contact_id = 5
response = Unirest.delete("http://localhost3000/api/contacts/#{contact_id}")
data = response.body
puts JSON.pretty_generate(data)