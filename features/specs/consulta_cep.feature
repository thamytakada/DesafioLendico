#language: pt

@consultacep
Funcionalidade: Consulta endereço
Obter dados de um endereço via cep

Cenário: Consultar endereço via cep
    Dado que informe o cep "05718310"
    Quando realizar a requisição via API get
    Entao é retornado os dados referente ao cep