Dado('que informe o cep {string}') do |cep|                                    
  @cep = cep 
end                                                                              
                                                                                   
Quando('realizar a requisição via API get') do                                   
  $response = HTTParty.get("https://viacep.com.br/ws/#{@cep}/json/")
end                                                                              
                                                                                  
Entao('é retornado os dados referente ao cep') do                                
  expect($response.code).to eq(200)
  printf "response code:    #{$response.code}"
  printf "response headers: #{$response.header}"
  printf "response body:    #{$response.body}"
end                                                                              