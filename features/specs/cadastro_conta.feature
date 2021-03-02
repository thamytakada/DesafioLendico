# language: pt

Funcionalidade: Criar conta
cadastrar novo usuario 

Contexto:
    Dado que Gael esteja na tela de cadastro

@cadastro
Cenario: Criar analise com sucesso
    E preencher os dados solicitados no formulario de cadastro    
    E aceitar os termos 
    Quando clicar em Ver minha analise
    Entao a analise deve ser gerada