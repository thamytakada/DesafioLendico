#language: pt
@login
Funcionalidade: Fluxo de login
Acessar com sucesso, valição de campos obrigatórios, exibição de senha e recuperação de senha

Contexto:
    Dado que Julia esteja na tela de login


Cenário: Acesso com sucesso
    E preencher usuario e senha validos
    Quando clicar em entrar  
    Entao ela deve acessar a área logada 

Cenário: Acesso com cpf invalido
    Quando preencher usuario com cpf invalido
    E passar para o próximo campo 
    Entao um alerta de CPF inválido é exibido 

Cenário: Acesso negado com cpf valido senha invalida 
    E preencher usuario com cpf valido
    E preencher senha invalida
    Quando clicar em entrar
    Entao sistema exibe mensagem de dados inválidos 

Cenário: Acesso negado com cpf não cadastrado
    E preencher usuario com cpf não cadastrado 
    E preencher senha 
    Quando clicar em entrar  
    Entao sistema exibe mensagem de dados inválidos 

Cenário: Acesso negado com email invalido 
    Quando preencher usuario com email invalido
    E passar para o próximo campo
    Entao um alerta de email inválido é exibido

Cenário: Acesso negado com email valido e senha invalida
    E preencher usuario com email valido 
    E preencher senha invalida
    Quando clicar em entrar  
    Entao sistema exibe mensagem de dados inválidos 

Cenário: Acesso negado com email não cadastrado
    E preencher usuario com email não cadastrado 
    E preencher senha 
    Quando clicar em entrar  
    Entao sistema exibe mensagem de dados inválidos 

Cenário: Exibir senha
    E preencher usuário com dados válidos 
    E preencher senha de acesso
    Quando clicar em exibir senha
    Entao sistema exibirá senha digitada 

Cenário: Campo email/cpf obrigatorio
    E preencher senha de acesso
    Quando clicar em entrar 
    Entao o sistema solicitará preenchimento do campo email/cpf

Cenário: Campo senha obrigatorio
    E preencher email/cpf
    Quando clicar em entrar 
    Entao o sistema solicitará preenchimento do campo senha de acesso
 
Cenário: Recuperação de senha com cpf válido
    E clicar em esqueceu a senha
    E inserir cpf valido
    Quando clicar em resetar senha
    Entao sistema exibe mensagem de encaminhando de reset de senha

Cenário: Recuperação de senha com email válido
    E clicar em esqueceu a senha
    E inserir email invalido
    Quando clicar em resetar senha
    Entao sistema exibe mensagem de encaminhando de reset de senha

Cenário: recuperação de senha com cpf invalido
    E clicar em esqueceu a senha
    E inserir cpf invalido
    Quando clicar em resetar senha
    Entao um alerta de CPF inválido é exibido 

Cenário: recuperação de senha com email invalido
    E clicar em esqueceu a senha
    E inserir email invalido
    Quando clicar em resetar senha
    Entao um alerta de email inválido é exibido
    
Cenário: Lembrei minha senha
    E clicar em esqueceu a senha
    E inserir email valido
    Quando clicar em lembrei minha senha
    Entao sistema retorna para tela inicial
