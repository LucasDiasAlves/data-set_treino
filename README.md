# 🚀 Pipeline de Exploração de Dados (Treinos)

Este projeto implementa uma arquitetura de microserviços orientada a dados para extração, transformação e carga (ETL), utilizando as principais ferramentas do ecossistema de Big Data.

## 🏗️ Arquitetura do Projeto
A infraestrutura está dividida em 4 pilares isolados, conectados por uma rede virtual externa (`treino_bigdata`):
1. **MongoDB:** Banco de Dados NoSQL e Interface (Mongo Express).
2. **Metabase:** Ferramenta de Business Intelligence para Dashboards.
3. **Apache Spark / Jupyter:** Ambiente de processamento distribuído e prototipagem.
4. **Apache Airflow:** Orquestrador de pipelines e automação de tarefas.

---

## ⚙️ Passo a Passo para Ligar o Ambiente

Abra o terminal na raiz do projeto (`/opt/exploracao_dados_treino`) e siga a ordem de ignição abaixo:

### Passo 0: A Rede Virtual (Apenas na primeira vez)
Se for a primeira vez rodando o projeto nesta máquina, crie a rede que conecta todos os contêineres:
```bash
docker network create --driver bridge treino_bigdata
```
---
### Passo1: Ligar o Banco de Dados (MongoDB)
```bash
cd mongodb
docker compose up -d
```
- Mongo Express: http://localhost:8081 (Usuário: admin | Senha: pass)

### Passo 2:Ligar a Camada de Visualização (Metabase)
```bash
cd ../metabase
docker compose up -d
```
- Metabase: http://localhost:3000 (Aguarde ~3 min na primeira inicialização)

### Passo 3:Ligar o Motor de Processamento (Spark/Jupyter)
```bash
cd ../spark
docker compose up -d
```
- Para acessar o Jupyter: Rode docker compose logs | grep 'token=' para pegar o link de acesso.
- Jupyter Notebook: Porta 8889
- Spark UI: http://localhost:4040 (Ficará ativa apenas quando uma sessão PySpark for iniciada no notebook)

### Passo 4: Ligar o Orquestrador (Airflow)
A inicialização do Airflow requer a configuração de chaves de segurança e permissões de pastas.

```bash
cd ../airflow
./pre-setup.sh
./post-setup.sh
```
(Aguarde o término das barras de progresso de cada script)
- Apache Airflow: http://localhost:8080 (Usuário: admin | Senha: admin)

---

## Como Desligar o Ambiente

Para desligar todos os serviços sem perder nenhum dado (os volumes garantem a persistência), execute o comando docker compose down dentro de cada respectiva pasta:

```bash
cd /opt/exploracao_dados_treino/airflow && docker compose down
cd ../spark && docker compose down
cd ../metabase && docker compose down
cd ../mongodb && docker compose down
```
---
# Próximos passos:

- Realizar uma documentação das tabelas auxilaires para visuzalização dos gráficos!
- Documentar arquitetura para o Banco de Dados, como vai se organizar a estrutura dos dados para os gráficos do metabase
