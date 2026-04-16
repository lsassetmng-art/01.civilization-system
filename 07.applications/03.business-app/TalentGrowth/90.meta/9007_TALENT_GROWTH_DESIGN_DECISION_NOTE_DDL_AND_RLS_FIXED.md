# TALENT GROWTH DESIGN DECISION NOTE
# DDL AND RLS FIXED

status: draft-decision-note
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. decision
TalentGrowth では、
exact table column fixed の次に、
DDL skeleton と RLS / access policy を固定した。

# 1. meaning
- 主要テーブルの物理骨格を固定した
- company scope と audit 列の扱いを強化した
- role-based access と state-aware write を固定した
- admin の過剰権限を既定にしない方針を明示した

# 2. fixed focus
- tg_employee_profile
- tg_employee_certification
- tg_employee_skill
- tg_role_requirement
- tg_evaluation_sheet
- tg_evaluation_score_detail
- tg_growth_plan
- tg_role_fit_snapshot
- tg_ai_assist_reference_log
- tg_audit_export_log

# 3. next candidate
次の深掘り候補は以下である。
- full API endpoint inventory fixed
- exact validation / error code policy fixed
- reporting / export format fixed
