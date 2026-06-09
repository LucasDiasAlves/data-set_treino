# Data Pipeline: Histórico de Treinos

O que começou como uma Análise Exploratória de Dados (EDA) de 3 anos de histórico de treinos, evoluiu para um pipeline completo de Engenharia de Dados.

Este repositório documenta a reestruturação da arquitetura do projeto, saindo de scripts estáticos para um fluxo automatizado e escalável de processamento, armazenamento e visualização utilizando ferramentas padrão da indústria de Big Data.

## Arquitetura e Tecnologias

Para suportar o processamento avançado e a criação de painéis dinâmicos, o projeto foi reconstruído sobre a seguinte stack:

- 🐳 Docker & DevContainers: 
	Base da infraestrutura. Garante um ambiente de desenvolvimento limpo, isolado e reprodutível (rodando perfeitamente integrado ao VS Code e WSL/Ubuntu).

- ⏱️ Apache Airflow: 
	O orquestrador do pipeline. Responsável por monitorar a chegada de novos dados brutos e engatilhar as rotinas de processamento de forma automatizada.

- ✨ PySpark: 
	O motor de processamento distribuído. Substitui a manipulação tradicional em Pandas para transformar os dados, realizar cálculos complexos e estruturar os documentos em tempo recorde.

- 🍃 MongoDB: 
	Banco de dados NoSQL orientado a documentos. Escolhido para armazenar as "sessões de treino" aninhadas com seus respectivos exercícios de forma flexível e altamente performática.

- 📊 Metabase: 
	Ferramenta de Business Intelligence conectada diretamente ao MongoDB, permitindo a construção de dashboards interativos para acompanhamento de recordes e evolução de cargas.

## bejtivos da nova estrutura

O foco deste projeto agora é arquitetural e focado em automação:

- **Ingestão Automatizada:** Eliminar o processamento manual através da orquestração de rotinas.

- **Escalabilidade:** Utilizar processamento distribuído capaz de lidar com o crescimento contínuo do histórico de treinos.

- **Modelagem NoSQL:** Aplicar conceitos de modelagem orientada a documentos para manter o contexto analítico das sessões diárias.

- **Self-Service BI:** Disponibilizar os dados limpos em um ambiente de visualização dinâmica para acompanhamento contínuo de métricas esportivas.
