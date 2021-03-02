# DesafioLendico
Teste prático para o processo seletivo da Lendico 
Utilizei as gems Rspec/Capybara/Cucumber/SitePrism/Faker/Ffake/Selenium-Web-Driver/HTTParty
Tempo de espera = 10

Cadastro Cliente;
Localizei os seletores e atribui variáveis a elas.
Utilizando as Gems Ffaker e Faker consegui gerar massa de dados para o preenchimento do formulário (*OBS: Não consegui converter a data de nascimento em formato DD/MM/AAAA)
Declarei dois metodos adicionais com a ação de click e por fim, realizei com a verificação (have_content) após a mensagem ficar visivel e a comparo com a msg esperada.

API:
Declarei o CEP na feature, usei para fazer o get e validei que está retornando status 200 e o response com as informações do endereço

Instruções para rodar as automações:
Se rodar somente o comando "cucumber" vão rodar todos os cenários escritos, desafio 1, 2 e 3. 
Porém, no desafio 1 só fiz o mapeamento dos cenários (já em formato BDD) então ao rodar eles vão gerar os steps que não estão construídos 
Para rodar o desafio 2 utilize o comando "cucumber -t@cadastro"
Para rodar o desafio 3 utilize o comando "cucumber -t@consultacep"
