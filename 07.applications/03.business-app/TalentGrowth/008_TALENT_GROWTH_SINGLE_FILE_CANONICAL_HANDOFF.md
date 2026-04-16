# TALENT GROWTH SINGLE FILE CANONICAL HANDOFF

status: single-file-canonical-handoff
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
formal_name_en: Talent Growth Support & Evaluation System
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth の現時点正式設計を、
1ファイルだけ読めば再開できるように圧縮した
single-file handoff 正本である。

# 1. system identity
TalentGrowth は、
人材の学歴、資格、スキル、経験、実績、評価推移を
証拠付きで可視化し、
成長支援、役割適合、会社評価、候補抽出へ接続するシステムである。

# 2. fixed global requirements
- 多言語対応
- 多通貨対応
- iPhone 対応
- Android 対応
- PC 対応
- タブレット対応

# 3. fixed core stance
- evidence-first
- role-fit first
- growth-action first
- explainability first
- AI is assist only
- approval / calibration / audit required
- common components are not formally designed in this chat

# 4. current official scope
TalentGrowth で正式固定済みの範囲は以下である。

- product / scope / rival comparison
- screen structure / screen detail / screen flow
- screen field exact definition
- wireframe block / device layout variant
- API exact payload
- approval state machine
- endpoint inventory
- validation / error code policy
- validation matrix per endpoint
- search / filter exact policy
- exact table columns
- DDL skeleton
- concrete phase A SQL execution block
- RLS / sensitive access / break-glass
- business event / outbox / notification
- batch / cron / snapshot jobs
- frontend state / cache / offline / sync
- KPI / analytics formula
- scoring formula / rank / gate
- notification template
- implementation task breakdown
- test case matrix
- release checklist
- integrated master rebuild
- implementation kickoff handoff

# 5. official root entry
正式入口は以下とする。

- 000_TALENT_GROWTH_DESIGN_INDEX.md
- 001_TALENT_GROWTH_DESIGN_OVERVIEW.md
- 00_TALENT_GROWTH_INTEGRATED_MASTER_REBUILT.md
- 006_TALENT_GROWTH_IMPLEMENTATION_HANDOFF_FIXED.md
- 007_TALENT_GROWTH_CANONICAL_HANDOFF_REFRESH.md
- 008_TALENT_GROWTH_SINGLE_FILE_CANONICAL_HANDOFF.md

# 6. official workflow stance
旧状態名ではなく、以下を正式状態系とする。

evaluation statuses:
- SELF_REVIEW_DRAFT
- SELF_REVIEW_SUBMITTED
- MANAGER_REVIEW_DRAFT
- MANAGER_REVIEW_SUBMITTED
- HR_REVIEW_IN_PROGRESS
- CALIBRATION_IN_PROGRESS
- APPROVED
- PUBLISHED
- SENT_BACK
- REOPENED
- ARCHIVED

growth plan statuses:
- DRAFT
- ACTIVE
- IN_PROGRESS
- COMPLETED
- CLOSED
- CANCELLED

# 7. official data stance
正式テーブル系は tg_* を正とする。

main tables:
- tg_employee_profile
- tg_employee_certification
- tg_employee_certification_renewal
- tg_employee_skill
- tg_employee_skill_evidence
- tg_role_requirement
- tg_role_requirement_skill
- tg_role_requirement_certification
- tg_evaluation_cycle
- tg_evaluation_sheet
- tg_evaluation_score_detail
- tg_evaluation_comment
- tg_evaluation_evidence
- tg_evaluation_change_audit
- tg_evaluation_approval
- tg_calibration_session
- tg_calibration_log
- tg_growth_plan
- tg_growth_action
- tg_growth_recommendation
- tg_role_fit_snapshot
- tg_successor_candidate
- tg_training_roi_snapshot
- tg_outbox_event
- tg_notification
- tg_notification_delivery
- tg_ai_assist_reference_log
- tg_audit_export_log

# 8. official screen stance
主要画面群:
- employee dashboard
- self review
- my evaluation result
- growth plan
- manager review input
- HR dashboard
- calibration board
- executive dashboard
- audit log viewer
- admin role management

device stance:
- employee mobile-first
- manager tablet-strong
- HR / executive / admin PC-primary

# 9. official API stance
主要API群:
- dashboard APIs
- profile / academics / certifications / skills APIs
- evaluation cycle / evaluation sheet APIs
- self review / manager review / HR review APIs
- growth plan / recommendation APIs
- role-fit / successor / analytics APIs
- audit / export APIs
- AI assist APIs

contract stance:
- exact payload fixed
- endpoint inventory fixed
- validation matrix fixed
- error code policy fixed
- strict parameter policy fixed

# 10. official governance stance
- no publish without approval
- no offline final submit
- no direct notification send bypassing outbox
- no score-changing write without audit
- no admin blanket raw evaluation access
- no hidden invalid transition
- no duplicate finalization
- break-glass requires reason + time bound + audit

# 11. official notification / operation stance
TalentGrowth 側では以下を正式に持つ。

- business event definition
- outbox append responsibility
- notification type definition
- deep link definition
- delivery / retry / dead letter policy
- batch / cron / snapshot / consistency jobs

つまり、
通知や非同期処理は
「基盤完全丸投げ」ではなく、
TalentGrowth 側の意味設計を持ったうえで扱う。

# 12. official formula stance
主要 score:
- total_evaluation_score
- current_role_fit_score
- target_role_fit_score
- growth_potential_score
- promotion_readiness_score
- successor_readiness_score

rank:
- S
- A
- B
- C
- D

rules:
- formula before calibration
- gate before rank
- mandatory missing items can cap score/rank
- current fit and future fit are different scores
- KPI / analytics formula fixed

# 13. official frontend stance
- server truth first
- selective offline
- no offline finalization
- visible sync status
- explicit conflict handling
- draft rescue for safe edit flows

# 14. implementation stance
implementation phases:
- phase A: core evaluation foundation
- phase B: profile and analytics basic
- phase C: talent strategy and investment
- phase D: AI assist and advanced governance

phase A start targets:
- DDL baseline
- seed / mock
- employee dashboard
- certification
- skill
- self review
- manager review
- role requirement
- growth plan
- audit
- outbox / notification
- RLS

# 15. phase A must-pass
- self review save / submit works
- manager review save / submit works
- send back works
- role requirement CRUD baseline works
- growth progress works
- audit trail searchable
- in-app notification visible
- RLS boundary holds

# 16. old design handling
以下は旧系として扱い、正本から外す。

deprecated:
- system name: talent-growth-and-evaluation
- folder root: TalentGrowthEvaluation
- 020.design/workflow/0201001_TALENT_GROWTH_EVALUATION_WORKFLOW_DESIGN.md
- 020.design/screen/0201002_TALENT_GROWTH_EVALUATION_SCREEN_LIST_DESIGN.md
- 020.design/screen/0201003_TALENT_GROWTH_EVALUATION_SCREEN_FIELDS_EXACT.md

reason:
- current official root is TalentGrowth
- current design progressed far beyond workflow / screen / fields exact only
- old progress note is outdated

# 17. restart reading order
別チャット再開時は以下順で読めばよい。

1. 008_TALENT_GROWTH_SINGLE_FILE_CANONICAL_HANDOFF.md
2. 001_TALENT_GROWTH_DESIGN_OVERVIEW.md
3. 00_TALENT_GROWTH_INTEGRATED_MASTER_REBUILT.md
4. 006_TALENT_GROWTH_IMPLEMENTATION_HANDOFF_FIXED.md

# 18. restart prompt
次チャット冒頭では以下で十分である。

TalentGrowth の続きです。
正式入口は 008_TALENT_GROWTH_SINGLE_FILE_CANONICAL_HANDOFF.md を正としてください。
共通部品はこのチャットでは扱いません。
phase A core evaluation foundation から実装または設計継続を進めてください。

# 19. conclusion
TalentGrowth の再開正本は、
この single-file handoff を最短入口とし、
必要に応じて overview / integrated rebuilt / implementation handoff へ辿る構成で固定する。
