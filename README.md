# 🏋️‍♂️ Meu Diário de Treino: Análise Exploratória de Dados

Investigando meu aplicativo de anotações de treino, encontrei uma opção para exportar meus dados. Como já possuo **3 anos de histórico de uso** do aplicativo, decidi explorar as possibilidades de realizar uma Análise Exploratória de Dados (EDA) para extrair insights sobre minha evolução e performance ao longo do tempo.

Neste repositório, você encontrará os dados, os processos de tratamento e as análises realizadas.

## 🗂️ Dicionário de Dados

A base de dados original exportada pelo aplicativo conta com as seguintes colunas:

| Coluna | Descrição |
|---|---|
| `title` | Título ou nome do treino |
| `start_time` | Data e hora de início |
| `end_time` | Data e hora de término |
| `description` | Descrição geral do treino |
| `exercise_title` | Nome do exercício realizado |
| `superset_id` | Identificador para séries combinadas (bi-sets, etc.) |
| `exercise_notes` | Anotações específicas feitas durante o exercício |
| `set_index` | Número sequencial da série |
| `set_type` | Tipo da série (ex: aquecimento, falha, normal) |
| `weight_kg` | Carga utilizada na série (em Quilos) |
| `reps` | Número de repetições realizadas |
| `distance_km` | Distância percorrida (para exercícios de cardio) |
| `duration_seconds` | Duração do exercício em segundos |
| `rpe` | Percepção Subjetiva de Esforço (Rate of Perceived Exertion) |

## ⚙️ Engenharia de Recursos (Feature Engineering)

No Jupyter Notebook onde as análises estão sendo desenvolvidas, foi necessário criar novas métricas para enriquecer as visualizações. Adicionei a coluna **`volume_serie`**, que calcula o volume total de carga (KG) movimentado em uma única série. 

O cálculo é feito da seguinte forma:
> `reps` * `weight_kg` = `volume_serie`

## 🎯 Objetivos da Análise

O foco deste projeto é extrair informações relevantes sobre os treinos. As principais análises a serem exploradas são:

- 🏆 **Top 5 exercícios** com o maior volume nas séries;
- 💪 **Top 10 melhores cargas** registradas nos exercícios;
- ⏱️ Identificação do **treino mais longo** do histórico;
- 📈 **Gráficos de Evolução** focados nos exercícios de base (Agachamento, Supino e Levantamento Terra), contendo a seguinte estrutura:
  - **Eixo X:** Tempo
  - **Eixo Y1:** Carga (`weight_kg`)
  - **Eixo Y2:** Volume da série (`volume_serie`)

## 🛠️ Tecnologias Utilizadas

* **Linguagem:** Python
* **Manipulação de Dados:** Pandas
* **Ambiente de Desenvolvimento:** Jupyter Notebook
* **Visualização de Dados:** Matplotlib / Seaborn