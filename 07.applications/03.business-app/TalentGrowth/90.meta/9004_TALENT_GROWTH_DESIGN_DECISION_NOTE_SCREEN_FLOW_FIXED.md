# TALENT GROWTH DESIGN DECISION NOTE
# SCREEN FLOW FIXED

status: draft-decision-note
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. decision
TalentGrowth では、
画面一覧詳細に続いて、
画面遷移と画面優先順位を固定した。

# 1. meaning
- 役割別導線を固定した
- 端末別主利用画面を固定した
- 実装段階ごとの対象画面を固定した
- HR の校正 / 監査画面を初期必須とした

# 2. core stance
- employee flow is smartphone-first
- manager flow is tablet-strong
- HR / executive / admin flow is PC-primary
- evidence -> review -> growth action の導線を固定する

# 3. next candidate
次の深掘り候補は以下である。
- API request / response exact payload 固定
- data model exact column 固定
- approval state machine 固定
