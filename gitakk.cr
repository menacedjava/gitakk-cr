require "http/client"
require "json"

user = "octocat"
url = "https://api.github.com/users/#{user}"

response = HTTP::Client.get(url)
data = JSON.parse(response.body)

login = data["login"].to_s
repos = data["public_repos"].to_i
followers = data["followers"].to_i

puts "User: #{login}"
puts "Repos: #{repos}"
puts "Followers: #{followers}"
