# PLSQL Chalange 20250617
Criar scripts para as tabelas de forma a permitir a extração das informações necessárias para este teste
para o banco de dados da Empresa Bike Stores Inc.


## Introdução

Nesse desafio trabalharemos utilizando a base de dados da empresa Bike Stores Inc com o objetivo de obter métricas relevantes para equipe de Marketing e Comercial.

Com isso, teremos que trabalhar com várioas consultas utilizando conceitos como `INNER JOIN`, `EXISTS`, `GROUP BY` e `SUM`.

## O projeto

- Criar as consultas utilizando Oracle SQL - PL/SQL;

### Modelo de Dados:

Para entender o modelo, revisar o diagrama a seguir:

![<img src="samples/model.png" height="500" alt="Modelo" title="Modelo"/>](samples/model.png)


## Selects

Construir as seguintes consultas:

- Listar todos Clientes que não tenham realizado uma compra;
    q1_customer_sem_compra.sql

- Listar os Produtos que não tenham sido comprados;
    q2_products_sem_compra.sql

- Listar os Produtos sem Estoque;
    q3_products_sem_estoque.sql

- Agrupar a quantidade de vendas que uma determinada Marca por Loja.
    q4_vendas_por_marca_loja_x.sql

- Listar os Funcionarios que não estejam relacionados a um Pedido.
    q5_staff_nao_relacionado_pedido.sql

## Instalação
# Utilizar uma ferramenta como o SQLPlus* ou SQLDeveloper.
# SQLPLUS
Baixar o arquivo data_model.sql em um diretório de sua máquina local 
Abrir o sqlplus: sqlplus user/password@banco e executar o script da seguinte forma
@data_model.sql;
Abrir as queries q1, q2, q3, q4, q5 e executá-las com o bando de dados populado para verificar os respectivos retornos.

# SQLDeveloper
Executar o SQLDeveloper
Abrir o arquivo data_model.sql
E Executar com o botão <run>
Abrir as queries q1, q2, q3, q4, q5 e executá-las com o bando de dados populado para verificar os respectivos retornos.


[.gitignore][def]

- Este é um challenge by coodesh:  

>  This is a challenge by [Coodesh](https://coodesh.com/)

## Finalização e Instruções para a Apresentação

1. Adicione o link do repositório com a sua solução no teste
2. Verifique se o Readme está bom e faça o commit final em seu repositório;
3. Envie e aguarde as instruções para seguir. Caso o teste tenha apresentação de vídeo, dentro da tela de entrega será possível gravar após adicionar o link do repositório. Sucesso e boa sorte. =)


## Suporte

Para tirar dúvidas sobre o processo envie uma mensagem diretamente a um especialista no chat da plataforma. 

[def]: https://www.toptal.com/developers/gitignore