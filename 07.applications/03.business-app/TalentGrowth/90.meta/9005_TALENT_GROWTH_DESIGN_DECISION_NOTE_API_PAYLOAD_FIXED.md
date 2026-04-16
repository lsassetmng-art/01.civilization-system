# TALENT GROWTH DESIGN DECISION NOTE
# API PAYLOAD FIXED

status: draft-decision-note
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. decision
TalentGrowth では、
画面遷移設計の次に、
API request / response exact payload、
approval state machine、
entity id / key policy を固定した。

# 1. meaning
- 主要APIの入出力形を固定した
- 評価承認の状態遷移を固定した
- id / code / label の役割を固定した
- audit / AI補助の取り扱いを明示した

# 2. fixed focus
- self review save / submit
- manager review save / submit
- calibration save
- approval / publish
- growth plan create / progress
- certification renewal
- role-fit candidate search
- AI assist draft
- audit log search

# 3. next candidate
次の深掘り候補は以下である。
- exact table column fixed
- API endpoint full inventory
- search / filter parameter exact policy
