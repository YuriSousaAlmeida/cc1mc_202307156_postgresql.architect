
CREATE TABLE lojas.lojas (
                loja_id NUMERIC(38) NOT NULL,
                nome VARCHAR(255) NOT NULL,
                endereco_web VARCHAR(100),
                endereco_fisico VARCHAR(512),
                latitude NUMERIC,
                longitude NUMERIC,
                logo BYTEA,
                logo_mime_type VARCHAR(512),
                logo_arquivo VARCHAR(512),
                logo_charset VARCHAR(512),
                logo_ultima_atualizacao DATE,
                CONSTRAINT loja_id PRIMARY KEY (loja_id)
);
COMMENT ON TABLE lojas.lojas IS 'Tabela que contém informações sobre as lojas do bando de dados uvv.';
COMMENT ON COLUMN lojas.lojas.loja_id IS 'Coluna que contém identificação própria das lojas.';
COMMENT ON COLUMN lojas.lojas.nome IS 'Coluna que contém o nome das lojas da tabela lojas.';
COMMENT ON COLUMN lojas.lojas.endereco_web IS 'Coluna que contém a URL do site web da loja.';
COMMENT ON COLUMN lojas.lojas.endereco_fisico IS 'Coluna que contém o endereço físico da loja.';
COMMENT ON COLUMN lojas.lojas.latitude IS 'Coluna que contém a latitude do endereço da loja.';
COMMENT ON COLUMN lojas.lojas.longitude IS 'Coluna que contém a longitude do endereço da loja.';
COMMENT ON COLUMN lojas.lojas.logo IS 'Coluna que contém uma BLOB da logo pertencente a loja.';
COMMENT ON COLUMN lojas.lojas.logo_mime_type IS 'Coluna que apresenta o tipo MIME da logo.';
COMMENT ON COLUMN lojas.lojas.logo_arquivo IS 'Coluna que apresenta nome ou caminho para um arquivo da logo.';
COMMENT ON COLUMN lojas.lojas.logo_charset IS 'Coluna que armazena o conjunto de caracteres associado a logo.';
COMMENT ON COLUMN lojas.lojas.logo_ultima_atualizacao IS 'Coluna que armazena data e hora das atualizações da logo.';


CREATE TABLE lojas.produtos (
                produto_id NUMERIC(38) NOT NULL,
                nome VARCHAR(255) NOT NULL,
                preco_unitario NUMERIC(10,2),
                detalhes BYTEA,
                imagem BYTEA,
                imagem_mime_type VARCHAR(512),
                imagem_arquivo VARCHAR(512),
                imagem_charset VARCHAR(512),
                imagem_ultima_atualizacao DATE,
                CONSTRAINT produto_id PRIMARY KEY (produto_id)
);
COMMENT ON TABLE lojas.produtos IS 'Tabela relacionada aos produtos do banco de dados uvv.';
COMMENT ON COLUMN lojas.produtos.produto_id IS 'PK da tabela produtos. Contém identificação propria de cada linha de produto';
COMMENT ON COLUMN lojas.produtos.nome IS 'Contém o nome de cada produto.';
COMMENT ON COLUMN lojas.produtos.preco_unitario IS 'Coluna com o preço do produto.';
COMMENT ON COLUMN lojas.produtos.detalhes IS 'Coluna que contém a descrição do produto.';
COMMENT ON COLUMN lojas.produtos.imagem IS 'Coluna que contém um tipo de dado blob para a inserção de imagens.';
COMMENT ON COLUMN lojas.produtos.imagem_mime_type IS 'Coluna que armazena o tipo MIME de arquivos de imagem.';
COMMENT ON COLUMN lojas.produtos.imagem_arquivo IS 'Coluna que armazena nome ou caminho para um arquivo de imagem.';
COMMENT ON COLUMN lojas.produtos.imagem_charset IS 'Coluna que armazena o conjunto de caracteres associado a imagem.';
COMMENT ON COLUMN lojas.produtos.imagem_ultima_atualizacao IS 'Coluna que armazena data e hora das atualizações de imagem.';


CREATE TABLE lojas.estoques (
                estoque_id NUMERIC(38) NOT NULL,
                loja_id NUMERIC(38) NOT NULL,
                produto_id NUMERIC(38) NOT NULL,
                quantidade NUMERIC(38) NOT NULL,
                CONSTRAINT estoque_id PRIMARY KEY (estoque_id)
);
COMMENT ON TABLE lojas.estoques IS 'Tabela que contém informações sobre o estoque do banco de dados uvv.';
COMMENT ON COLUMN lojas.estoques.estoque_id IS 'Coluna que contém identificação própria do estoque.';
COMMENT ON COLUMN lojas.estoques.loja_id IS 'É uma FK, pertencente a tabela lojas. Identificador próprio de cada loja.';
COMMENT ON COLUMN lojas.estoques.produto_id IS 'É uma FK, pertencente a tabela produtos. Contém identificação própria do produto.';
COMMENT ON COLUMN lojas.estoques.quantidade IS 'Coluna que contém informação da quantidade do estoque.';


CREATE TABLE lojas.clientes (
                cliente_id NUMERIC(38) NOT NULL,
                email VARCHAR(255) NOT NULL,
                nome VARCHAR(255) NOT NULL,
                telefone1 VARCHAR(20),
                telefone2 VARCHAR(20),
                telefone3 VARCHAR(20),
                CONSTRAINT cliente_id PRIMARY KEY (cliente_id)
);
COMMENT ON TABLE lojas.clientes IS 'Tabela com as informações dos clientes do banco de dados UVV';
COMMENT ON COLUMN lojas.clientes.cliente_id IS 'PK da tabela clientes. Cliente_id é o identificador próprio para cada cliente.';
COMMENT ON COLUMN lojas.clientes.email IS 'Coluna que contém o email do cliente.';
COMMENT ON COLUMN lojas.clientes.nome IS 'Coluna que contém o nome do cliente.';
COMMENT ON COLUMN lojas.clientes.telefone1 IS 'Coluna que contém o telefone principal do cliente.';
COMMENT ON COLUMN lojas.clientes.telefone2 IS 'Coluna que contém o segundo telefone do cliente.';
COMMENT ON COLUMN lojas.clientes.telefone3 IS 'Coluna que contém o terceiro telefone do cliente.';


CREATE TABLE lojas.pedidos (
                pedido_id NUMERIC(38) NOT NULL,
                data_hora TIMESTAMP NOT NULL,
                cliente_id NUMERIC(38) NOT NULL,
                status VARCHAR(15) NOT NULL,
                loja_id NUMERIC(38) NOT NULL,
                CONSTRAINT pedido_id PRIMARY KEY (pedido_id)
);
COMMENT ON TABLE lojas.pedidos IS 'Tabela de pedidos dos clientes do banco de dados UVV.';
COMMENT ON COLUMN lojas.pedidos.pedido_id IS 'PK da tabela pedidos. Contém Identificação própria do pedido.';
COMMENT ON COLUMN lojas.pedidos.data_hora IS 'Contém a informação da data e horário do pedido assim que o cliente solicitar.';
COMMENT ON COLUMN lojas.pedidos.cliente_id IS 'FK da tabela clientes, que contém identificação própria do cliente.';
COMMENT ON COLUMN lojas.pedidos.status IS 'Coluna que contém o status do pedido.';
COMMENT ON COLUMN lojas.pedidos.loja_id IS 'FK da tabela lojas, contém a identificação própria da loja.';


CREATE TABLE lojas.envios (
                envio_id NUMERIC(38) NOT NULL,
                loja_id NUMERIC(38) NOT NULL,
                cliente_id NUMERIC(38) NOT NULL,
                endereco_entrega VARCHAR(512) NOT NULL,
                status VARCHAR(15) NOT NULL,
                CONSTRAINT envio_id PRIMARY KEY (envio_id)
);
COMMENT ON TABLE lojas.envios IS 'Tabela relacionada a envios dos produtos do banco de dados uvv.';
COMMENT ON COLUMN lojas.envios.envio_id IS 'PK da tabela envios. Contém identificação própria do envio.';
COMMENT ON COLUMN lojas.envios.loja_id IS 'FK da tabela lojas. Contém idenficação própria de cada loja.';
COMMENT ON COLUMN lojas.envios.cliente_id IS 'É uma FK da tabela clientes. Possui identificação própria de cada cliente.';
COMMENT ON COLUMN lojas.envios.endereco_entrega IS 'Coluna que contém o endereço do cliente para entrega.';
COMMENT ON COLUMN lojas.envios.status IS 'Coluna que contém informação do status do envio.';


CREATE TABLE lojas.pedidos_itens (
                pedido_id NUMERIC(38) NOT NULL,
                produto_id NUMERIC(38) NOT NULL,
                numero_da_linha NUMERIC(38) NOT NULL,
                preco_unitario NUMERIC(10,2) NOT NULL,
                quantidade NUMERIC(38) NOT NULL,
                envio_id NUMERIC(38),
                CONSTRAINT pedido_id___produto_id PRIMARY KEY (pedido_id, produto_id)
);
COMMENT ON TABLE lojas.pedidos_itens IS 'Tabela identificada. Tabela com a informação dos produtos e envios do banco de dados uvv.';
COMMENT ON COLUMN lojas.pedidos_itens.pedido_id IS 'Coluna com chave composta, em relação a tabela pedidos. Contem a identificação própria dos pedidos.';
COMMENT ON COLUMN lojas.pedidos_itens.produto_id IS 'Coluna com chave composta em relação a tabela produtos. Contém identificação da tabela produtos.';
COMMENT ON COLUMN lojas.pedidos_itens.numero_da_linha IS 'Coluna que contém o número da linha de identificação.';
COMMENT ON COLUMN lojas.pedidos_itens.preco_unitario IS 'Coluna que contém o preço dos pedidos/itens.';
COMMENT ON COLUMN lojas.pedidos_itens.quantidade IS 'Coluna que contém a quantidade de pedidos/itens.';
COMMENT ON COLUMN lojas.pedidos_itens.envio_id IS 'Coluna que contém a PK, que pertence a tabela envios. Contém identificação própria dos envios.';


ALTER TABLE lojas.estoques ADD CONSTRAINT lojas_estoques_fk
FOREIGN KEY (loja_id)
REFERENCES lojas.lojas (loja_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE lojas.envios ADD CONSTRAINT lojas_envios_fk
FOREIGN KEY (loja_id)
REFERENCES lojas.lojas (loja_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE lojas.pedidos ADD CONSTRAINT lojas_pedidos_fk
FOREIGN KEY (loja_id)
REFERENCES lojas.lojas (loja_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE lojas.estoques ADD CONSTRAINT produtos_estoques_fk
FOREIGN KEY (produto_id)
REFERENCES lojas.produtos (produto_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE lojas.pedidos_itens ADD CONSTRAINT produtos_pedidos_itens_fk
FOREIGN KEY (produto_id)
REFERENCES lojas.produtos (produto_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE lojas.envios ADD CONSTRAINT clientes_envios_fk
FOREIGN KEY (cliente_id)
REFERENCES lojas.clientes (cliente_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE lojas.pedidos ADD CONSTRAINT clientes_pedidos_fk
FOREIGN KEY (cliente_id)
REFERENCES lojas.clientes (cliente_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE lojas.pedidos_itens ADD CONSTRAINT pedidos_pedidos_itens_fk
FOREIGN KEY (pedido_id)
REFERENCES lojas.pedidos (pedido_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE lojas.pedidos_itens ADD CONSTRAINT envios_pedidos_itens_fk
FOREIGN KEY (envio_id)
REFERENCES lojas.envios (envio_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
