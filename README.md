Gems utilizadas: Rspec/Capybara/Cucumber/SitePrism/Faker/Ffake/Selenium-Web-Driver
Tempo de espera = 10

Cadastro Cliente;
Inicialmente localizei os seletores e atribui variáveis a eles, utilizando Page Object para uma melhor organização e versionamento dos testes.
Utilizando as Gems Ffaker e Faker consegui gerar massa de dados para o preenchimento do formulário (*OBS: Não consegui converter a data de nascimento em formato DD/MM/AAAA). Utilizei o have_content para realizar a verificação da msg, após ela ficar visivel a comparo com a msg esperada.

API;
Declarei o CEP na feature, a interpolei na URL e solicitei que a comparesse que declarei (to eq 200).


Instruções para rodar as automações:
Se rodar somente o comando "cucumber" vão rodar todos os cenários escritos, desafio 1, 2 e 3. 
Porém, no desafio 1 só fiz o mapeamento dos cenários (já em formato BDD) então ao rodar eles vão gerar os steps que não estão construídos 
Para rodar o desafio 2 utilize o comando "cucumber -t@cadastro"
Para rodar o desafio 3 utilize o comando "cucumber -t@consultacep"
