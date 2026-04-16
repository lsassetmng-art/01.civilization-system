# TALENT GROWTH DESIGN OVERVIEW

status: refreshed-master-overview
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
formal_name_en: Talent Growth Support & Evaluation System
owner: Boss
prepared_by: Zero

# 0. system intent
TalentGrowth は、
人材の学歴、資格、スキル、経験年数、実績、行動、成長推移を
証拠付きで可視化し、
成長支援と会社評価につなげるシステムである。

# 1. fixed first principles
- multilingual support
- multi-currency support
- iPhone support
- Android support
- PC support
- tablet support

# 2. core stance
- evidence-first
- role-fit first
- growth-action first
- explainability first
- AI is assist only
- human approval required
- calibration required where configured
- auditability mandatory

# 3. business value
- 本人が現在地と次行動を理解できる
- 上長が育成判断できる
- 人事が評価運用と校正を回せる
- 経営が後継者と投資対効果を把握できる
- 多言語 / 多通貨 / 多端末で運用できる

# 4. user layers
- employee
- manager
- HR
- executive
- admin

# 5. major capability areas
- employee profile / academics / certifications / skills / career / achievements
- role requirements and templates
- scoring / ranking / role-fit
- self review / manager review / HR review / calibration / approval
- growth plan / recommendation / MBO linkage
- successor / role-fit / promotion support
- analytics / KPI / export
- event / notification / batch / snapshot
- security / RLS / break-glass / audit
- frontend state / sync / conflict recovery

# 6. architecture summary
TalentGrowth は、
screen,
API,
validation,
data model,
DDL,
RLS,
outbox,
notification,
batch job,
frontend state
までを一貫設計で固定する。

# 7. implementation shape
phase A:
- core evaluation foundation

phase B:
- profile evidence and analytics basic

phase C:
- talent strategy and investment

phase D:
- AI assist and advanced governance

# 8. governance summary
- publish without approval is prohibited
- invalid state transition is prohibited
- raw evaluation visibility is role-restricted
- admin is technical admin, not default full raw evaluator
- break-glass requires reason, time limit, audit

# 9. current design status
現時点で、
TalentGrowth は以下まで設計固定済みである。

- screen map
- API inventory
- exact payload
- exact validation matrix
- exact columns
- DDL skeleton
- RLS / sensitive access
- KPI / analytics formula
- scoring formula
- notification templates
- implementation tasks
- test matrix
- release checklist

# 10. conclusion
TalentGrowth は、
単なる人事評価画面群ではなく、
評価、育成、候補抽出、監査、運用までを
一体で成立させる設計として固定する。
