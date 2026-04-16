# TALENT GROWTH IMPLEMENTATION TASK BREAKDOWN FIXED

status: draft-implementation-task-breakdown-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の実装を
task 単位まで分解し、
依存順と完了条件を固定するための資料である。

前提:
- phase package split fixed に従う
- screen / API / DB / RLS / batch / frontend state を横断で束ねる
- 共通部品は本資料の対象外
- additive only
- task は実装、検証、結線、運用準備まで含む

# 1. task設計原則
- task は user value 単位で束ねる
- screen only task を作らない
- API only task を作らない
- DB + API + UI + validation + audit を最小束にする
- approval / calibration / audit を後回しにしない
- phase A 単体で end-to-end が成立することを必須とする

# 2. phase A task breakdown

## A-001 基礎認証後コンテキスト取得
scope:
- GET /api/v1/me
- GET /api/v1/home
- session state 基盤
- role-based home navigation
done_when:
- ログイン後に role / company / locale / currency が取得できる
- ホーム遷移が role-based で固定される

## A-002 employee dashboard 基盤
scope:
- employee dashboard read API
- dashboard query cache
- score card / alert / action block 表示
- notification summary 連携
done_when:
- employee dashboard が current_role_fit / target_role_fit / growth_potential / alert を表示できる

## A-003 certification management MVP
scope:
- tg_employee_certification
- tg_employee_certification_renewal
- certification list API
- certification add/update
- renewal record API
- expiry status 表示
done_when:
- 資格登録、更新記録、期限表示、期限切れ警告が成立する

## A-004 skill inventory MVP
scope:
- tg_skill_master
- tg_employee_skill
- tg_employee_skill_evidence
- skill list API
- skill add/update
- evidence add
done_when:
- スキル登録、熟練度更新、根拠登録ができる

## A-005 self review draft and submit
scope:
- evaluation_sheet read
- self-review/save
- self-review/submit
- local draft persistence
- sync state 표시
done_when:
- 自己評価の下書き保存と提出ができる
- offline draft rescue が成立する
- final submit は online only で制御される

## A-006 manager review queue and review input
scope:
- manager dashboard
- review queue
- manager-review/save
- manager-review/submit
- send-back
- lock_version conflict handling
done_when:
- 上長が配下レビューを保存・提出・差戻しできる

## A-007 role requirement management MVP
scope:
- tg_role_requirement
- tg_role_requirement_skill
- tg_role_requirement_certification
- role requirement list/create/update/clone
- diff view baseline
done_when:
- HR が職種別要件を登録・改版できる

## A-008 growth plan MVP
scope:
- tg_growth_plan
- tg_growth_action
- tg_growth_recommendation
- growth plan create/update/progress
- employee / manager growth screens
done_when:
- 計画作成、進捗更新、画面反映が成立する

## A-009 evaluation state machine and approval baseline
scope:
- evaluation_status_code transition enforcement
- send-back rule
- approve baseline
- published / reopened gate baseline
done_when:
- invalid transition が防止される
- approval path が API で固定される

## A-010 audit append baseline
scope:
- tg_evaluation_change_audit
- tg_evaluation_approval
- audit search API baseline
- audit_trace_id propagation baseline
done_when:
- 主要 write で監査追跡が取れる
- audit search で主要変更を追える

## A-011 calibration board baseline
scope:
- tg_calibration_session
- tg_calibration_log
- calibration save
- calibration board minimum UI
done_when:
- HR が校正セッション作成・補正保存できる

## A-012 RLS / access baseline
scope:
- employee_self / manager / HR / executive / admin role policy
- company scope
- manager team scope
- state-aware write guard
done_when:
- unauthorized read/write が防止される
- phase A endpoint 群が policy 下で成立する

## A-013 outbox / notification baseline
scope:
- tg_outbox_event
- tg_notification
- tg_notification_delivery baseline
- review request / send back / result ready / cert expiry alert
done_when:
- 主要イベントで in-app 通知が生成される

## A-014 frontend cache / sync baseline
scope:
- query cache baseline
- self review local draft
- certification / skill local draft
- cache invalidation core
done_when:
- 再表示で不整合が起きにくい
- draft rescue が動く

# 3. phase B task breakdown

## B-001 profile extended editing
scope:
- my profile edit fields
- academics CRUD
- career histories CRUD
- achievements CRUD
done_when:
- 本人とHRがプロファイル詳細を扱える

## B-002 skill evidence verification
scope:
- evidence verify API
- evidence verification UI
- verified flag / verified_by / verified_at
done_when:
- HR または指定権限者が根拠検証できる

## B-003 HR review queue
scope:
- HR review queue API
- HR dashboard queue summary
- HR review save baseline
done_when:
- HR が review 対象を一覧と個票で追える

## B-004 distribution analytics
scope:
- evaluation snapshot jobs
- analytics/distribution
- analytics/evaluator-bias
- distribution UI
done_when:
- 分布と偏り分析が表示できる

## B-005 team heatmap and comparison
scope:
- analytics/skill-heatmap
- employee comparison UI
- manager dashboard summary linkage
done_when:
- チームのスキル偏在と比較表示ができる

## B-006 certification master / skill master maintenance
scope:
- certification masters CRUD
- skill masters CRUD
- admin/HR maintenance view
done_when:
- マスタ整備を画面経由で運用できる

## B-007 MBO linkage baseline
scope:
- mbo/linked-goals
- mbo refresh
- mbo linked view UI
done_when:
- 目標連携の参照ができる
- optional dependency failure 時の degrade が成立する

# 4. phase C task breakdown

## C-001 role-fit candidate extraction
scope:
- tg_role_fit_snapshot
- role-fit candidate API
- manager / HR role-fit UI
done_when:
- 配置候補 / 昇格候補の基礎抽出ができる

## C-002 successor management
scope:
- tg_successor_candidate
- successor API
- successor management UI
done_when:
- critical role ごとの候補登録・閲覧ができる

## C-003 9box / HR portfolio
scope:
- analytics/9box
- 9box UI
- summary and drilldown
done_when:
- HR と executive が 9box 表示を使える

## C-004 training ROI analytics
scope:
- tg_training_roi_snapshot
- analytics/training-roi
- investment and growth view
done_when:
- 投資対効果の基礎分析ができる

## C-005 executive dashboard and org summary
scope:
- executive dashboard
- analytics/org-talent-summary
- successor / ROI preview
done_when:
- 経営向け要約画面が成立する

## C-006 export async jobs
scope:
- export request API
- export job status API
- CSV/XLSX/PDF baseline generation
- export notifications
done_when:
- export job を非同期実行できる
- status と file 参照が成立する

## C-007 admin setting surfaces
scope:
- admin users/roles
- localization settings
- currency settings
- integration settings
done_when:
- admin が運用設定を変更できる

# 5. phase D task breakdown

## D-001 AI assist draft generation
scope:
- ai-assist/review-comment-draft
- ai-assist/growth-suggestion-draft
- reference logging
done_when:
- manager / HR が AI 下書きを使える
- audit trail が残る

## D-002 AI bias check
scope:
- ai-assist/bias-check
- calibration warning UI linkage
done_when:
- HR が補助的偏り警告を参照できる

## D-003 advanced governance
scope:
- reopen advanced governance
- break-glass support integration
- sensitive access audit integration
done_when:
- 例外アクセス統制が運用導線とつながる

## D-004 advanced analytics refinement
scope:
- analytics tuning
- cache tuning
- backfill / rebuild jobs
done_when:
- 大規模運用でも応答性と整合性が保たれる

# 6. cross-cutting task bundles

## X-001 validation and error standardization
scope:
- all phase endpoints
done_when:
- error code / field path / status code が統一される

## X-002 logging and observability
scope:
- API log
- job log
- delivery log
- audit trace propagation
done_when:
- request_id / audit_trace_id で追跡できる

## X-003 locale and currency baseline
scope:
- locale-aware labels
- reporting currency display
- export locale/currency
done_when:
- 多言語 / 多通貨の主要画面が成立する

## X-004 security hardening
scope:
- token handling
- cache purge
- sensitive preview suppression
- role downgrade purge
done_when:
- frontend / API の基本保護が成立する

# 7. dependency ordering
- A-001 before all UI tasks
- A-007 before scoring-sensitive review tasks
- A-009 before publish / reopen / calibration deepening
- A-010 before audit viewer completion
- A-013 before notification-dependent UX
- B-004 before executive analytics
- C-001 before C-002
- C-004 before executive investment summary
- D-001 before D-002

# 8. 完了判定の原則
task 完了には以下を要求する。
- DB change 完了
- API 完了
- UI 完了
- validation 完了
- audit / log 完了
- happy path test 完了
- representative failure path test 完了

# 9. 結論
TalentGrowth の implementation task breakdown は、
phase package をさらに task 単位へ分解し、
end-to-end 完了条件まで固定する。
