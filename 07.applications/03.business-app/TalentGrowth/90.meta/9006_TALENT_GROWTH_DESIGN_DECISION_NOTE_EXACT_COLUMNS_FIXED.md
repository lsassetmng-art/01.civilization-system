# TALENT GROWTH DESIGN DECISION NOTE
# EXACT COLUMNS FIXED

status: draft-decision-note
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. decision
TalentGrowth では、
API payload 固定の次に、
exact table column と search / filter parameter policy を固定した。

# 1. meaning
- 主要テーブルの列を固定した
- 一覧 / 検索 / 分析APIの parameter を固定した
- id / code / audit 列の一貫性を高めた
- 実装時の揺れを減らす基盤を作った

# 2. fixed focus
- employee_profile
- employee_certification
- employee_skill
- role_requirement
- evaluation_sheet
- evaluation_score_detail
- evaluation_change_audit
- growth_plan
- role_fit_snapshot
- ai_assist_reference_log

# 3. next candidate
次の深掘り候補は以下である。
- full API endpoint inventory fixed
- DDL skeleton fixed
- RLS / access policy fixed
