# Meu diario de treino
Investigando meu app de anotações do treino eu encontrei uma opção para exportar os dados de treino, este repositorio é uma analise dos dados do meu treino!!

## Dados colunares
as colunas presentes na minha base de dados são:<br>
- 'title'
- 'start_time'
- 'end_time'
- 'description'
- 'exercise_title'
- 'superset_id'
- 'exercise_notes'
- 'set_index'
- 'set_type'
- 'weight_kg'
- 'reps'
- 'distance_km'
- 'duration_seconds'
- 'rpe'<br>

No notbook jupyter, no qual estou explorando os dados, adicionei uma coluna a mais, **"volume_serie"**, onde é calculada o volume total de Kilos (KG) da série, fazendo o numero de repetições (reps) multiplicado pela carga da série (Weight_kg):<br>
- `reps * Wheight_kg = volume_serie`
