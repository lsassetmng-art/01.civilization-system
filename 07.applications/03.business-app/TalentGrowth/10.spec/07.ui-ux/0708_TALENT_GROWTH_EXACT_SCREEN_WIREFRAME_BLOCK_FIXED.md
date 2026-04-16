# TALENT GROWTH EXACT SCREEN WIREFRAME BLOCK FIXED

status: draft-wireframe-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の主要画面について、
wireframe を block 単位で固定するための資料である。

前提:
- ここで扱うのは visual component の正式共通部品設計ではない
- ここでは画面責務としての block 配置を固定する
- employee / manager / HR / executive / admin の役割差を前提とする
- iPhone / Android / PC / tablet 対応を前提とする

# 1. wireframe 表記ルール
各画面は以下の block で表記する。

- block_id
- block_name
- purpose
- priority
- content
- action
- visibility
- device_layout

priority:
- core
- high
- medium
- low

device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

# 2. TG-GLOBAL-002 ホーム / ナビゲーションハブ

## fixed blocks
### block_id: HUB-001
block_name: top header
purpose:
- 画面タイトル、会社、現在ロール、言語を示す
priority:
- core
content:
- app title
- company name
- role badge
- locale switch entry
action:
- notification center
- profile / settings entry
visibility:
- all authenticated users
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: HUB-002
block_name: alert summary strip
purpose:
- 未対応件数、期限警告を即時可視化
priority:
- core
content:
- pending review count
- expiring certification count
- action required count
action:
- tap to filtered list
visibility:
- role-based
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: HUB-003
block_name: role shortcut grid
purpose:
- 役割別主要導線への最短移動
priority:
- core
content:
- employee dashboard
- manager dashboard
- HR dashboard
- executive dashboard
- admin entry
action:
- direct navigation
visibility:
- role-based
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: HUB-004
block_name: recent activity list
purpose:
- 最近見た評価、計画、通知対象へ戻す
priority:
- medium
content:
- recent evaluation sheets
- recent growth plans
- recent exports
action:
- reopen recent target
visibility:
- authenticated user
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

# 3. TG-EMP-001 employee dashboard

## overall layout
smartphone:
- header
- score cards
- alert block
- growth action block
- trend block
- quick actions
tablet/pc:
- left main summary
- right alerts / next actions
- lower trend and linked panels

## fixed blocks
### block_id: EMP-DASH-001
block_name: identity summary
purpose:
- 本人の所属と現在ポジションを明示
priority:
- core
content:
- display_name
- organization
- current_job_role
- current_grade
action:
- go to my profile
visibility:
- employee_self
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: EMP-DASH-002
block_name: score card row
purpose:
- 現在地を最短把握
priority:
- core
content:
- current_role_fit_score
- target_role_fit_score
- growth_potential_score
- current_state_rank
action:
- open evaluation result
- open gap analysis
visibility:
- employee_self
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: EMP-DASH-003
block_name: alert panel
purpose:
- 期限・未対応の警告表示
priority:
- core
content:
- expiring_certifications
- pending_items
- next_review_due_at
action:
- open certification management
- open self review
visibility:
- employee_self
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: EMP-DASH-004
block_name: growth action top list
purpose:
- 今やるべきことを固定で見せる
priority:
- core
content:
- top_growth_actions
- priority badge
- due date
action:
- open growth plan
- open recommendation center
visibility:
- employee_self
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: EMP-DASH-005
block_name: score trend chart
purpose:
- 直近推移可視化
priority:
- high
content:
- previous_total_score
- current_total_score
- delta
- mini trend
action:
- open my evaluation result
visibility:
- employee_self
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: EMP-DASH-006
block_name: quick action footer
purpose:
- 主要操作への即時導線
priority:
- core
content:
- start self review
- add certification
- update skill
- view growth plan
action:
- direct navigation
visibility:
- employee_self
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

# 4. TG-EMP-008 self review

## overall layout
smartphone:
- sticky header
- progress / status block
- comment block
- skill item accordion list
- achievement section
- fixed bottom save / submit bar

tablet/pc:
- left editable form
- right evidence / summary / warnings

## fixed blocks
### block_id: SELF-REV-001
block_name: review header
purpose:
- 対象サイクルと状態を明示
priority:
- core
content:
- cycle name
- evaluation_status_code
- autosave / sync status
action:
- back
- help
visibility:
- employee_self
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: SELF-REV-002
block_name: completion and warning strip
purpose:
- 未入力 / 根拠不足 / 差戻し状態を示す
priority:
- core
content:
- completion percent
- missing required count
- evidence shortage warning
- sent back reason summary
action:
- jump to missing section
visibility:
- employee_self
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: SELF-REV-003
block_name: self review comment card
purpose:
- 総括自己評価入力
priority:
- core
content:
- self_review_comment
action:
- local save
- server save
visibility:
- employee_self
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: SELF-REV-004
block_name: skill review list
purpose:
- スキル別自己評価入力
priority:
- core
content:
- skill label
- current proficiency
- self input proficiency
- self comment
- linked evidence ids
action:
- edit
- add evidence
visibility:
- employee_self
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: SELF-REV-005
block_name: achievement commentary list
purpose:
- 実績ごとの自己コメント入力
priority:
- high
content:
- achievement title
- period
- metric summary
- self comment
action:
- edit
visibility:
- employee_self
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: SELF-REV-006
block_name: evidence side panel
purpose:
- 参照中の根拠を右側に並べる
priority:
- high
content:
- selected evidence summary
- missing evidence warning
action:
- open linked evidence
visibility:
- employee_self
device_layout:
- smartphone_single_column collapsed
- tablet_two_column
- pc_multi_panel

### block_id: SELF-REV-007
block_name: bottom action bar
purpose:
- save / submit を固定する
priority:
- core
content:
- save draft
- submit review
- sync status
action:
- save
- submit
visibility:
- employee_self
device_layout:
- smartphone_single_column sticky
- tablet_two_column sticky
- pc_multi_panel sticky

# 5. TG-MGR-005 review input

## overall layout
smartphone/tablet:
- summary header
- employee summary card
- self review summary
- score input block
- competency block
- manager comment
- action bar

pc:
- left employee/evidence pane
- center scoring pane
- right summary/risk pane

## fixed blocks
### block_id: MGR-REV-001
block_name: target employee header
purpose:
- 誰の評価かを誤認しない
priority:
- core
content:
- employee name
- organization
- current role
- cycle
- status
action:
- open employee detail
visibility:
- manager,HR
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: MGR-REV-002
block_name: self review summary card
purpose:
- 本人申告の要点を短く把握
priority:
- core
content:
- self review comment summary
- top strengths
- top gaps
- evidence count
action:
- expand full self review
visibility:
- manager,HR
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: MGR-REV-003
block_name: score input form
purpose:
- 上長評価点入力
priority:
- core
content:
- behavior_score
- performance_score
- current_role_fit_score
- target_role_fit_score
- growth_potential_score
action:
- edit numeric values
visibility:
- manager,HR
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: MGR-REV-004
block_name: competency block list
purpose:
- コンピテンシー別評価入力
priority:
- high
content:
- competency label
- manager_rating
- competency comment
action:
- edit
visibility:
- manager,HR
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: MGR-REV-005
block_name: evidence inspection panel
purpose:
- 根拠確認を隣接表示
priority:
- core
content:
- selected evidence summary
- verification state
- linked score item
action:
- open evidence
visibility:
- manager,HR
device_layout:
- smartphone_single_column collapsed
- tablet_two_column
- pc_multi_panel

### block_id: MGR-REV-006
block_name: manager comment card
purpose:
- 総括コメント記入
priority:
- core
content:
- manager_review_comment
action:
- edit
- generate AI draft optional
visibility:
- manager,HR
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: MGR-REV-007
block_name: decision bar
purpose:
- save / submit / send back を固定配置
priority:
- core
content:
- save draft
- submit review
- send back
- latest lock_version info
action:
- save
- submit
- send back
visibility:
- manager,HR
device_layout:
- smartphone_single_column sticky
- tablet_two_column sticky
- pc_multi_panel sticky

# 6. TG-HR-001 HR dashboard

## overall layout
pc first:
- top KPI row
- left queue / alerts column
- center operation blocks
- right governance / analytics blocks
tablet:
- two-column summary
smartphone:
- simplified summary only

## fixed blocks
### block_id: HR-DASH-001
block_name: KPI top row
purpose:
- 人事が最重要数値を冒頭で把握
priority:
- core
content:
- pending_hr_review_count
- pending_calibration_count
- certification_expiring_soon_rate
- evaluator_bias_alert_count
- successor_coverage_rate
action:
- jump to target screen
visibility:
- HR
device_layout:
- smartphone_single_column simplified
- tablet_two_column
- pc_multi_panel

### block_id: HR-DASH-002
block_name: cycle control summary
purpose:
- 進行中サイクルの状態把握
priority:
- core
content:
- active_cycle_count
- due dates
- publish status
action:
- open cycle control
visibility:
- HR
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: HR-DASH-003
block_name: review queue summary
purpose:
- 滞留可視化
priority:
- core
content:
- pending_hr_review_count
- overdue review count
- sent back count
action:
- open HR review queue
visibility:
- HR
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: HR-DASH-004
block_name: governance alert panel
purpose:
- 偏り、監査、期限逸脱を警告
priority:
- core
content:
- evaluator bias alerts
- missing audit flags
- stale calibration issues
action:
- open analytics / audit
visibility:
- HR
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: HR-DASH-005
block_name: analytics preview panel
purpose:
- 分布・後継者・投資の縮約表示
priority:
- high
content:
- distribution preview
- successor preview
- ROI preview
action:
- open analytics pages
visibility:
- HR
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

# 7. TG-HR-007 calibration board

## overall layout
pc mandatory strong:
- top session summary
- left target list
- center selected sheet before/after comparison
- right adjustment form and meeting note
tablet:
- two-column workable
smartphone:
- unsupported or view-only recommended

## fixed blocks
### block_id: CAL-001
block_name: session header
purpose:
- 校正セッションの文脈固定
priority:
- core
content:
- session name
- cycle
- date
- session status
action:
- switch session
visibility:
- HR
device_layout:
- tablet_two_column
- pc_multi_panel

### block_id: CAL-002
block_name: candidate list pane
purpose:
- 校正対象一覧表示
priority:
- core
content:
- employee name
- pre rank
- pre score
- bias flag
- changed marker
action:
- select target
visibility:
- HR
device_layout:
- tablet_two_column
- pc_multi_panel

### block_id: CAL-003
block_name: pre/post comparison pane
purpose:
- 校正前後差分を見せる
priority:
- core
content:
- pre score summary
- proposed adjusted score
- pre rank
- post rank
- evidence count
- comparison note
action:
- inspect detail
visibility:
- HR
device_layout:
- tablet_two_column
- pc_multi_panel

### block_id: CAL-004
block_name: adjustment form pane
purpose:
- 校正値と理由入力
priority:
- core
content:
- post_calibration_rank
- adjusted score fields
- calibration_reason
- meeting_note
action:
- save calibration
- approve
- reopen later
visibility:
- HR
device_layout:
- tablet_two_column
- pc_multi_panel

### block_id: CAL-005
block_name: governance warning strip
purpose:
- 大きすぎる補正の警告
priority:
- high
content:
- delta threshold warning
- missing reason warning
- missing meeting note warning
action:
- jump to invalid field
visibility:
- HR
device_layout:
- tablet_two_column
- pc_multi_panel

# 8. TG-EXE-001 executive dashboard

## overall layout
pc first:
- top strategic KPI
- organization comparison
- successor coverage
- investment summary
tablet:
- two-column reduced
smartphone:
- summary only

## fixed blocks
### block_id: EXE-DASH-001
block_name: strategy KPI row
purpose:
- 経営が一目で状態把握
priority:
- core
content:
- critical_role_coverage_rate
- ready_now_successor_rate
- org_average_growth_potential_score
- training_investment_total
- training_roi_ratio
action:
- open deeper analytics
visibility:
- executive,HR
device_layout:
- smartphone_single_column simplified
- tablet_two_column
- pc_multi_panel

### block_id: EXE-DASH-002
block_name: organization comparison panel
purpose:
- 組織横断比較
priority:
- core
content:
- org average scores
- shortage flags
- top risk orgs
action:
- open org talent summary
visibility:
- executive,HR
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: EXE-DASH-003
block_name: successor pipeline preview
purpose:
- critical role カバー状況
priority:
- core
content:
- role count
- covered roles
- uncovered roles
- ready-now preview
action:
- open successor pipeline
visibility:
- executive,HR
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

### block_id: EXE-DASH-004
block_name: investment and growth preview
purpose:
- 人材投資と成長の関係可視化
priority:
- high
content:
- investment total
- ROI ratio
- trend
action:
- open investment and growth view
visibility:
- executive,HR
device_layout:
- smartphone_single_column
- tablet_two_column
- pc_multi_panel

# 9. TG-HR-013 audit log viewer

## overall layout
pc first:
- top filter bar
- left saved filters / quick types
- center result list
- right detail pane
smartphone:
- not primary

## fixed blocks
### block_id: AUDIT-001
block_name: filter bar
purpose:
- 検索条件入力
priority:
- core
content:
- date_from
- date_to
- actor
- entity_type
- entity_id
- action_type
- audit_trace_id
action:
- search
- clear
visibility:
- HR,admin
device_layout:
- tablet_two_column
- pc_multi_panel

### block_id: AUDIT-002
block_name: result list pane
purpose:
- ヒット結果一覧
priority:
- core
content:
- occurred_at
- actor
- entity_type
- entity_id
- action_type
- summary
action:
- select row
visibility:
- HR,admin
device_layout:
- tablet_two_column
- pc_multi_panel

### block_id: AUDIT-003
block_name: detail pane
purpose:
- 変更内容詳細表示
priority:
- core
content:
- old/new summary
- audit_trace_id
- linked export / AI reference if any
action:
- open related entity
- export current result
visibility:
- HR,admin
device_layout:
- tablet_two_column
- pc_multi_panel

# 10. TG-ADM-001 user / role management

## fixed blocks
### block_id: ADM-USER-001
block_name: user filter bar
purpose:
- 対象ユーザー絞込
priority:
- core
content:
- q
- role filter
- active filter
action:
- search
visibility:
- admin
device_layout:
- tablet_two_column
- pc_multi_panel

### block_id: ADM-USER-002
block_name: user list pane
purpose:
- 対象ユーザー一覧
priority:
- core
content:
- employee name
- current roles
- organization scope
- status
action:
- select user
visibility:
- admin
device_layout:
- tablet_two_column
- pc_multi_panel

### block_id: ADM-USER-003
block_name: role assignment pane
purpose:
- ロール付与変更
priority:
- core
content:
- current roles
- editable role set
- scope display
action:
- update roles
visibility:
- admin
device_layout:
- tablet_two_column
- pc_multi_panel

# 11. wireframe固定のまとめ
- employee flow は single-columnでも成立する block 構成にする
- manager review は evidence 隣接配置を固定する
- HR calibration は pc multi-panel を前提にする
- executive dashboard は KPI + comparison + successor + investment の4面を固定する
- audit viewer は filter/list/detail の3面構成を固定する

# 12. 結論
TalentGrowth の wireframe は、
単なる画面名定義ではなく、
block 単位で責務を固定することで
UI実装とAPI結線のぶれを防ぐ。
