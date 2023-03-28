# produces an output value named "charizard"
output "charizard" {
  description = "API that documents pokemon"
  value       = data.http.char.response_body
}

# produces legal JSON output value named "charizard"
output "charizard_json" {
  description = "API that documents pokemon"
  value       = jsondecode(data.http.char.response_body)    // note the jsondecode()
}
