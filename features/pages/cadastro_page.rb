class CadastroPage < SitePrism::Page
    set_url '/cadastro'
    element :in_nome, '#name'
    element :in_nascimento, '#account__birth_dt'
    element :in_cpf, '#account__cpf'
    element :in_ocupacao, '#occupation'
    element :in_salario, '#account__salary'
    element :in_tenhorendaextra, '.styled__CheckboxWrapper-sc-13kbxox-0.buUXUh.null'
    element :in_valorendaextra, '#account__extra_income'
    element :in_serasa, 'label[data-test="rdo_declared_credit_restrictions_no"]' 
    element :in_motivoemprestimo, '#lending_purpose'
    element :in_valoremprestimo, '#account__desired_lending_amount'
    element :in_email, '#account__email'
    element :in_telefone, '#account__mobile_number'
    element :in_senha, '#account__password'
    element :in_exibesenha, '.styled__ShowPassword-axfwqr-4.bniEzW'
    element :in_termopolitica, 'label[for="account__accepts_terms"]'
    element :in_veranalise, 'button[data-test="btn_submit_form"]'
    element :in_msg_analise, '.styled__TypographyWrapper-klmri9-0.jONcil'

    def preencher_form
        in_nome.set FFaker::NameBR.name
        in_nascimento.set "23/06/1994"
        in_cpf.set FFaker::IdentificationBR.cpf
        in_ocupacao.select 'Estudante'
        in_salario.set Faker::Number.number(digits: 4)
        in_tenhorendaextra.set true
        in_valorendaextra.set Faker::Number.number(digits: 4)
        in_serasa.click 
        in_motivoemprestimo.select 'Educação'
        in_valoremprestimo. set Faker::Number.number(digits: 5)
        in_email.set Faker::Internet.email
        in_telefone.set Faker::Base.numerify('119########')
        in_senha.set Faker::Number.number(digits: 8)
        in_exibesenha.click
    end 

    def aceitar_termos
       in_termopolitica.click
    end

    def ver_analise
        in_veranalise.click
    end

end 