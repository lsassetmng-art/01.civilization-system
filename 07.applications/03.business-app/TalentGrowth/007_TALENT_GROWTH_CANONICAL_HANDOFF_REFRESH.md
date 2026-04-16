# TALENT GROWTH CANONICAL HANDOFF REFRESH

status: canonical-handoff-refresh
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
formal_name_en: Talent Growth Support & Evaluation System
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth の現時点正式設計を、
別チャットや次工程へ引き継ぐための
最新 handoff 正本である。

# 1. identity
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

# 3. current official stance
- evidence-first
- role-fit first
- growth-action first
- explainability first
- AI is assist only
- approval / calibration / audit required
- common components are not formally designed in this chat

# 4. current official design coverage
以下はすでに設計固定済みである。

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

# 5. current official root entry
正式入口は以下とする。

- 000_TALENT_GROWTH_DESIGN_INDEX.md
- 001_TALENT_GROWTH_DESIGN_OVERVIEW.md
- 00_TALENT_GROWTH_INTEGRATED_MASTER_REBUILT.md
- 006_TALENT_GROWTH_IMPLEMENTATION_HANDOFF_FIXED.md
- 007_TALENT_GROWTH_CANONICAL_HANDOFF_REFRESH.md

# 6. current official data stance
正式テーブル系は tg_* を正とする。

代表:
- tg_employee_profile
- tg_employee_certification
- tg_employee_skill
- tg_role_requirement
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

# 7. current official workflow stance
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

# 8. current official notification boundary
通知基盤の共通連携可能性は維持するが、
TalentGrowth 側では以下を正式に持つ。

- business event definition
- outbox append responsibility
- notification type definition
- deep link definition
- delivery / retry / dead letter policy

つまり、
「通知インフラ完全共通」ではなく、
「通知意味設計は TalentGrowth 側で持つ」が正式である。

# 9. current implementation start point
実装開始点は phase A core evaluation foundation とする。

phase A 主要対象:
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

# 10. non-negotiables
- no publish without approval
- no offline final submit
- no direct notification send bypassing outbox
- no score-changing write without audit
- no admin blanket raw evaluation access
- no hidden invalid transition
- no duplicate finalization
- no common component formalization in this app chat

# 11. recommended next use
別チャット再開時は以下順で読む。
1. 001_TALENT_GROWTH_DESIGN_OVERVIEW.md
2. 00_TALENT_GROWTH_INTEGRATED_MASTER_REBUILT.md
3. 006_TALENT_GROWTH_IMPLEMENTATION_HANDOFF_FIXED.md
4. 007_TALENT_GROWTH_CANONICAL_HANDOFF_REFRESH.md

# 12. conclusion
旧 handoff の「次はテーブル台帳から」は古い。
現時点の TalentGrowth は master rebuild 済みであり、
再開時の正式入口は root index / overview / integrated rebuilt / kickoff handoff である。
