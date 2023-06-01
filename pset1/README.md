# Banco de Dados "uvv"

O banco de dados "uvv" é projetado para armazenar informações sobre lojas físicas e virtuais. O esquema "lojas" contém tabelas que representam os diferentes aspectos dessas lojas.

## Tabelas

Possui 7 tabelas ao todo no banco de dados "uvv"

### Loja física

A coluna da loja_fisica contém informações sobre as lojas físicas registradas no banco de dados. Ela inclui os seguintes campos:

- `id`: Identificador único da loja física (chave primária)
- `nome`: Nome da loja física
- `endereco`: Endereço da loja física
- `latitude`: Latitude onde a loja física está localizada
- `longitude`: Longitude onde a loja física está localizada
- `logo`: Logo da loja física

### Loja web

A tabela da loja_virtual armazena algumas informações sobre as lojas virtuais registradas no banco de dados. Ela possui os seguintes campos:

- `id`: Identificador único da loja virtual (chave primária)
- `nome`: Nome da loja virtual
- `endereço (url)`: URL da loja virtual
- `logo`: Logo utilizada pela loja virtual
- `atualizações`: Atualizações da loja virtual

## Consultas

Aqui estão algumas consultas que podem ser realizadas no banco de dados uvv:

1. Listar todas as colunas da tabela produtos:

-SELECT * FROM lojas.produtos;

2. Listar o endereço do site (URL)

-SELECT endereco_web

3. Listar o endereço da loja física

-SELECT endereco_fisico