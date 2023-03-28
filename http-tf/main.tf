# The following example shows how to issue an HTTP GET request supplying
# an optional request header.
data "http" "char" {
  url = "https://pokeapi.co/api/v2/pokemon/charizard"      // API to send HTTP GET to

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}
