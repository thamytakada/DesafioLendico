Dado('que o usuario esteja na tela de cadastro') do
  @cadastro_page = CadastroPage.new
  @cadastro_page.load
end
  
E('preencher os dados solicitados no formulario de cadastro') do 
  @cadastro_page.preencher_form
end

E('aceitar os termos') do
  @cadastro_page.aceitar_termos
end

Quando('clicar em Ver minha analise') do
  @cadastro_page.ver_analise  
end

Entao('a analise deve ser gerada') do
  @cadastro_page.wait_until_in_msg_analise_visible
  expect(@cadastro_page).to have_content 'Pedido em análise'
end