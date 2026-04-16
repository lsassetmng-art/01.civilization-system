# TALENT GROWTH DESIGN DECISION NOTE
# FIELD AND VALIDATION MATRIX FIXED

status: draft-decision-note
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. decision
TalentGrowth では、
frontend state / sync 設計の次に、
screen-by-screen field definition と
exact validation matrix per endpoint を固定した。

# 1. meaning
- 画面項目を field 単位で固定した
- editable / visible / source を明示した
- endpointごとの必須性、範囲、状態前提、権限前提を固定した
- UI実装、API実装、QAの基準を揃えた

# 2. fixed focus
- employee dashboard field set
- profile / academics / certifications / skills fields
- self review / manager review fields
- role requirement fields
- growth plan fields
- audit viewer fields
- validation per major endpoint

# 3. next candidate
次の深掘り候補は以下である。
- KPI / analytics formula fixed
- scoring formula exact fixed
- notification message template fixed
