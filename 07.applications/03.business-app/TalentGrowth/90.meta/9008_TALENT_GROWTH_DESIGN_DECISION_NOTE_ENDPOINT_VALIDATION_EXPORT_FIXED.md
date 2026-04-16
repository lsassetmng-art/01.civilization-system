# TALENT GROWTH DESIGN DECISION NOTE
# ENDPOINT VALIDATION EXPORT FIXED

status: draft-decision-note
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. decision
TalentGrowth では、
DDL / RLS 固定の次に、
full API endpoint inventory,
validation / error code policy,
reporting / export format を固定した。

# 1. meaning
- API 全体の棚卸しを固定した
- validation と domain error code を固定した
- export format と permission を固定した
- 実装漏れと運用揺れを減らす基盤を作った

# 2. fixed focus
- endpoint group inventory
- strict validation
- machine-readable error code
- export job async rule
- locale / currency aware reporting

# 3. next candidate
次の深掘り候補は以下である。
- screen-by-screen API mapping fixed
- DB table to endpoint mapping fixed
- implementation phase package split fixed
