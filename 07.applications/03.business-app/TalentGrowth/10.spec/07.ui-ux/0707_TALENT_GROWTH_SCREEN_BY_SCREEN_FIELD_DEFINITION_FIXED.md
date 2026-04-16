# TALENT GROWTH SCREEN BY SCREEN FIELD DEFINITION FIXED

status: draft-screen-field-definition-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の主要画面について、
表示項目、入力項目、編集可否、必須性、データ型、由来元を固定するための資料である。

前提:
- 画面一覧詳細
- screen-by-screen API mapping
- exact table column fixed
- exact payload fixed
を受けた field 定義資料である。

# 1. field定義ルール
各fieldは以下を持つ。
- field_code
- label
- ui_type
- data_type
- required
- editable_by
- visible_to
- source
- notes

editable_by candidates:
- employee_self
- manager
- HR
- admin
- none

visible_to candidates:
- employee_self
- manager
- HR
- executive
- admin

source candidates:
- server
- local_draft
- derived
- mixed

# 2. TG-EMP-001 employee dashboard

## score summary section
- field_code: current_role_fit_score
  label: 現職適合スコア
  ui_type: metric_card
  data_type: decimal
  required: yes
  editable_by: none
  visible_to: employee_self
  source: server

- field_code: target_role_fit_score
  label: 目標職位適合スコア
  ui_type: metric_card
  data_type: decimal
  required: yes
  editable_by: none
  visible_to: employee_self
  source: server

- field_code: growth_potential_score
  label: 成長ポテンシャル
  ui_type: metric_card
  data_type: decimal
  required: yes
  editable_by: none
  visible_to: employee_self
  source: server

- field_code: current_state_rank
  label: 現在ランク
  ui_type: badge
  data_type: enum
  required: yes
  editable_by: none
  visible_to: employee_self
  source: server

## action / alert section
- field_code: next_review_due_at
  label: 次回レビュー日
  ui_type: date_text
  data_type: date
  required: no
  editable_by: none
  visible_to: employee_self
  source: server

- field_code: pending_items
  label: 未対応項目
  ui_type: list_summary
  data_type: array
  required: yes
  editable_by: none
  visible_to: employee_self
  source: server

- field_code: expiring_certifications
  label: 期限近い資格
  ui_type: alert_list
  data_type: array
  required: yes
  editable_by: none
  visible_to: employee_self
  source: server

- field_code: top_growth_actions
  label: 優先成長アクション
  ui_type: action_list
  data_type: array
  required: yes
  editable_by: none
  visible_to: employee_self
  source: server

# 3. TG-EMP-002 my profile

## identity section
- field_code: full_name
  label: 氏名
  ui_type: text
  data_type: string
  required: yes
  editable_by: HR
  visible_to: employee_self,manager,HR
  source: server

- field_code: display_name
  label: 表示名
  ui_type: text
  data_type: string
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: email
  label: メールアドレス
  ui_type: email
  data_type: string
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,HR
  source: mixed

- field_code: phone
  label: 電話番号
  ui_type: tel
  data_type: string
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,HR
  source: mixed

## organization section
- field_code: organization_id
  label: 所属
  ui_type: select_readonly
  data_type: id
  required: yes
  editable_by: HR
  visible_to: employee_self,manager,HR
  source: server

- field_code: position_title
  label: 役職
  ui_type: text_readonly
  data_type: string
  required: no
  editable_by: HR
  visible_to: employee_self,manager,HR
  source: server

- field_code: current_job_role_id
  label: 現職種
  ui_type: select_readonly
  data_type: id
  required: yes
  editable_by: HR
  visible_to: employee_self,manager,HR
  source: server

- field_code: current_grade_id
  label: 現等級
  ui_type: select_readonly
  data_type: id
  required: no
  editable_by: HR
  visible_to: employee_self,manager,HR
  source: server

## preference section
- field_code: career_preference_text
  label: 希望キャリア
  ui_type: textarea
  data_type: string
  required: no
  editable_by: employee_self
  visible_to: employee_self,manager,HR
  source: mixed

# 4. TG-EMP-003 academic history

## grid/list fields
- field_code: school_name
  label: 学校名
  ui_type: text
  data_type: string
  required: yes
  editable_by: employee_self,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: faculty_name
  label: 学部
  ui_type: text
  data_type: string
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: department_name
  label: 学科
  ui_type: text
  data_type: string
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: degree_code
  label: 学位
  ui_type: select
  data_type: enum
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: major_name
  label: 専攻
  ui_type: text
  data_type: string
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: graduation_status_code
  label: 卒業状態
  ui_type: select
  data_type: enum
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: graduation_date
  label: 卒業年月
  ui_type: month_picker
  data_type: date
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: academic_relevance_score
  label: 職務関連度
  ui_type: readonly_score
  data_type: decimal
  required: no
  editable_by: none
  visible_to: employee_self,manager,HR
  source: derived

- field_code: evidence_file_id
  label: 根拠ファイル
  ui_type: file_ref
  data_type: id
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,HR
  source: mixed

# 5. TG-EMP-004 certification management

- field_code: certification_id
  label: 資格名
  ui_type: searchable_select
  data_type: id
  required: yes
  editable_by: employee_self,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: certification_name_snapshot
  label: 資格名スナップショット
  ui_type: text_readonly
  data_type: string
  required: yes
  editable_by: none
  visible_to: employee_self,manager,HR
  source: server

- field_code: issuer_name_snapshot
  label: 発行団体
  ui_type: text_readonly
  data_type: string
  required: no
  editable_by: none
  visible_to: employee_self,manager,HR
  source: server

- field_code: license_number
  label: 資格番号
  ui_type: text
  data_type: string
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,HR
  source: mixed

- field_code: acquired_date
  label: 取得日
  ui_type: date_picker
  data_type: date
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: expiry_date
  label: 有効期限
  ui_type: date_picker
  data_type: date
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: renewal_required
  label: 更新要否
  ui_type: readonly_boolean
  data_type: boolean
  required: yes
  editable_by: none
  visible_to: employee_self,manager,HR
  source: server

- field_code: certification_status_code
  label: 状態
  ui_type: status_badge
  data_type: enum
  required: yes
  editable_by: none
  visible_to: employee_self,manager,HR
  source: derived

- field_code: evidence_file_id
  label: 証書ファイル
  ui_type: file_upload
  data_type: id
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,HR
  source: mixed

# 6. TG-EMP-005 skill inventory

- field_code: skill_id
  label: スキル
  ui_type: searchable_select
  data_type: id
  required: yes
  editable_by: employee_self,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: proficiency_level
  label: 熟練度
  ui_type: level_select
  data_type: integer
  required: yes
  editable_by: employee_self,manager,HR
  visible_to: employee_self,manager,HR
  source: mixed
  notes:
  - employee_self は self input
  - manager は manager comment / manager rating 文脈で編集可否分離可

- field_code: self_rating
  label: 自己評価
  ui_type: rating
  data_type: decimal
  required: no
  editable_by: employee_self
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: manager_rating
  label: 上長評価
  ui_type: rating
  data_type: decimal
  required: no
  editable_by: manager,HR
  visible_to: manager,HR
  source: mixed

- field_code: last_used_at
  label: 最終使用日
  ui_type: date_picker
  data_type: date
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: usage_frequency_code
  label: 使用頻度
  ui_type: select
  data_type: enum
  required: no
  editable_by: employee_self,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: evidence_count
  label: 根拠件数
  ui_type: readonly_number
  data_type: integer
  required: yes
  editable_by: none
  visible_to: employee_self,manager,HR
  source: derived

- field_code: evidence_confidence
  label: 根拠信頼度
  ui_type: readonly_score
  data_type: decimal
  required: no
  editable_by: none
  visible_to: manager,HR
  source: derived

- field_code: employee_comment
  label: 自己コメント
  ui_type: textarea
  data_type: string
  required: no
  editable_by: employee_self
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: manager_comment
  label: 上長コメント
  ui_type: textarea
  data_type: string
  required: no
  editable_by: manager,HR
  visible_to: manager,HR
  source: mixed

# 7. TG-EMP-008 self review

## header fields
- field_code: evaluation_sheet_id
  label: 評価シートID
  ui_type: hidden
  data_type: id
  required: yes
  editable_by: none
  visible_to: employee_self,manager,HR
  source: server

- field_code: evaluation_status_code
  label: 状態
  ui_type: status_badge
  data_type: enum
  required: yes
  editable_by: none
  visible_to: employee_self,manager,HR
  source: server

## editable fields
- field_code: self_review_comment
  label: 自己評価コメント
  ui_type: textarea
  data_type: string
  required: conditional
  editable_by: employee_self
  visible_to: employee_self,manager,HR
  source: local_draft

- field_code: skill_items[].employee_skill_id
  label: スキルID
  ui_type: hidden
  data_type: id
  required: yes
  editable_by: none
  visible_to: employee_self,manager,HR
  source: server

- field_code: skill_items[].proficiency_level
  label: 自己評価熟練度
  ui_type: level_select
  data_type: integer
  required: conditional
  editable_by: employee_self
  visible_to: employee_self,manager,HR
  source: local_draft

- field_code: skill_items[].self_comment
  label: スキル自己コメント
  ui_type: textarea
  data_type: string
  required: no
  editable_by: employee_self
  visible_to: employee_self,manager,HR
  source: local_draft

- field_code: skill_items[].evidence_ids
  label: 根拠ID群
  ui_type: evidence_picker
  data_type: array
  required: conditional
  editable_by: employee_self
  visible_to: employee_self,manager,HR
  source: local_draft

- field_code: achievement_items[].employee_achievement_id
  label: 実績ID
  ui_type: hidden
  data_type: id
  required: yes
  editable_by: none
  visible_to: employee_self,manager,HR
  source: server

- field_code: achievement_items[].self_comment
  label: 実績自己コメント
  ui_type: textarea
  data_type: string
  required: no
  editable_by: employee_self
  visible_to: employee_self,manager,HR
  source: local_draft

# 8. TG-MGR-005 review input

- field_code: manager_review_comment
  label: 上長評価コメント
  ui_type: textarea
  data_type: string
  required: conditional
  editable_by: manager
  visible_to: manager,HR
  source: mixed

- field_code: score_inputs.behavior_score
  label: 行動評価
  ui_type: numeric_input
  data_type: decimal
  required: yes
  editable_by: manager,HR
  visible_to: manager,HR
  source: mixed

- field_code: score_inputs.performance_score
  label: 実績評価
  ui_type: numeric_input
  data_type: decimal
  required: yes
  editable_by: manager,HR
  visible_to: manager,HR
  source: mixed

- field_code: score_inputs.current_role_fit_score
  label: 現職適合
  ui_type: numeric_input
  data_type: decimal
  required: yes
  editable_by: manager,HR
  visible_to: manager,HR
  source: mixed

- field_code: score_inputs.target_role_fit_score
  label: 目標職位適合
  ui_type: numeric_input
  data_type: decimal
  required: yes
  editable_by: manager,HR
  visible_to: manager,HR
  source: mixed

- field_code: score_inputs.growth_potential_score
  label: 成長ポテンシャル
  ui_type: numeric_input
  data_type: decimal
  required: yes
  editable_by: manager,HR
  visible_to: manager,HR
  source: mixed

- field_code: competency_items[].competency_code
  label: コンピテンシー
  ui_type: readonly_label
  data_type: code
  required: yes
  editable_by: none
  visible_to: manager,HR
  source: server

- field_code: competency_items[].manager_rating
  label: コンピテンシー評価
  ui_type: level_select
  data_type: integer
  required: yes
  editable_by: manager
  visible_to: manager,HR
  source: mixed

- field_code: competency_items[].comment
  label: コンピテンシーコメント
  ui_type: textarea
  data_type: string
  required: no
  editable_by: manager
  visible_to: manager,HR
  source: mixed

# 9. TG-HR-003 role requirement management

- field_code: job_family_id
  label: 職群
  ui_type: searchable_select
  data_type: id
  required: no
  editable_by: HR
  visible_to: HR,executive
  source: mixed

- field_code: job_role_id
  label: 職種
  ui_type: searchable_select
  data_type: id
  required: yes
  editable_by: HR
  visible_to: HR,executive
  source: mixed

- field_code: grade_id
  label: 等級
  ui_type: searchable_select
  data_type: id
  required: no
  editable_by: HR
  visible_to: HR,executive
  source: mixed

- field_code: requirement_version
  label: 要件バージョン
  ui_type: text
  data_type: string
  required: yes
  editable_by: HR
  visible_to: HR,executive
  source: mixed

- field_code: effective_from
  label: 適用開始日
  ui_type: date_picker
  data_type: date
  required: yes
  editable_by: HR
  visible_to: HR,executive
  source: mixed

- field_code: effective_to
  label: 適用終了日
  ui_type: date_picker
  data_type: date
  required: no
  editable_by: HR
  visible_to: HR,executive
  source: mixed

- field_code: overall_weight_skill
  label: スキル重み
  ui_type: numeric_input
  data_type: decimal
  required: yes
  editable_by: HR
  visible_to: HR
  source: mixed

- field_code: overall_weight_certification
  label: 資格重み
  ui_type: numeric_input
  data_type: decimal
  required: yes
  editable_by: HR
  visible_to: HR
  source: mixed

- field_code: overall_weight_experience
  label: 経験重み
  ui_type: numeric_input
  data_type: decimal
  required: yes
  editable_by: HR
  visible_to: HR
  source: mixed

- field_code: overall_weight_performance
  label: 実績重み
  ui_type: numeric_input
  data_type: decimal
  required: yes
  editable_by: HR
  visible_to: HR
  source: mixed

- field_code: overall_weight_behavior
  label: 行動重み
  ui_type: numeric_input
  data_type: decimal
  required: yes
  editable_by: HR
  visible_to: HR
  source: mixed

- field_code: overall_weight_growth
  label: 成長重み
  ui_type: numeric_input
  data_type: decimal
  required: yes
  editable_by: HR
  visible_to: HR
  source: mixed

# 10. TG-HR-007 calibration board

- field_code: pre_calibration_rank
  label: 校正前ランク
  ui_type: readonly_badge
  data_type: enum
  required: yes
  editable_by: none
  visible_to: HR
  source: server

- field_code: post_calibration_rank
  label: 校正後ランク
  ui_type: rank_select
  data_type: enum
  required: yes
  editable_by: HR
  visible_to: HR
  source: mixed

- field_code: adjusted_scores.current_role_fit_score
  label: 校正後現職適合
  ui_type: numeric_input
  data_type: decimal
  required: no
  editable_by: HR
  visible_to: HR
  source: mixed

- field_code: adjusted_scores.growth_potential_score
  label: 校正後成長ポテンシャル
  ui_type: numeric_input
  data_type: decimal
  required: no
  editable_by: HR
  visible_to: HR
  source: mixed

- field_code: calibration_reason
  label: 校正理由
  ui_type: textarea
  data_type: string
  required: yes
  editable_by: HR
  visible_to: HR
  source: mixed

- field_code: meeting_note
  label: 会議メモ
  ui_type: textarea
  data_type: string
  required: no
  editable_by: HR
  visible_to: HR
  source: mixed

# 11. TG-EMP-011 / TG-MGR-007 growth plan

- field_code: plan_title
  label: 計画名
  ui_type: text
  data_type: string
  required: yes
  editable_by: employee_self,manager,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: target_job_role_id
  label: 目標職種
  ui_type: searchable_select
  data_type: id
  required: no
  editable_by: employee_self,manager,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: target_grade_id
  label: 目標等級
  ui_type: searchable_select
  data_type: id
  required: no
  editable_by: employee_self,manager,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: plan_period_start
  label: 計画開始日
  ui_type: date_picker
  data_type: date
  required: yes
  editable_by: employee_self,manager,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: plan_period_end
  label: 計画終了日
  ui_type: date_picker
  data_type: date
  required: yes
  editable_by: employee_self,manager,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: next_review_due_at
  label: 次回見直し日
  ui_type: date_picker
  data_type: date
  required: no
  editable_by: manager,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: actions[].action_type_code
  label: アクション種別
  ui_type: select
  data_type: enum
  required: yes
  editable_by: employee_self,manager,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: actions[].action_title
  label: アクション名
  ui_type: text
  data_type: string
  required: yes
  editable_by: employee_self,manager,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: actions[].priority_code
  label: 優先度
  ui_type: select
  data_type: enum
  required: yes
  editable_by: employee_self,manager,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: actions[].due_date
  label: 期限
  ui_type: date_picker
  data_type: date
  required: no
  editable_by: employee_self,manager,HR
  visible_to: employee_self,manager,HR
  source: mixed

- field_code: actions[].completion_percent
  label: 進捗率
  ui_type: progress_input
  data_type: integer
  required: yes
  editable_by: employee_self,manager,HR
  visible_to: employee_self,manager,HR
  source: mixed

# 12. TG-HR-013 audit log viewer

- field_code: occurred_at
  label: 発生日時
  ui_type: datetime_text
  data_type: datetime
  required: yes
  editable_by: none
  visible_to: HR,admin
  source: server

- field_code: actor_employee_id
  label: 操作者
  ui_type: reference_text
  data_type: id
  required: yes
  editable_by: none
  visible_to: HR,admin
  source: server

- field_code: entity_type
  label: 対象種別
  ui_type: badge
  data_type: enum
  required: yes
  editable_by: none
  visible_to: HR,admin
  source: server

- field_code: entity_id
  label: 対象ID
  ui_type: text
  data_type: id
  required: yes
  editable_by: none
  visible_to: HR,admin
  source: server

- field_code: action_type
  label: 操作種別
  ui_type: badge
  data_type: enum
  required: yes
  editable_by: none
  visible_to: HR,admin
  source: server

- field_code: audit_trace_id
  label: 監査トレースID
  ui_type: text
  data_type: id
  required: no
  editable_by: none
  visible_to: HR,admin
  source: server

# 13. field visibility principle summary
- employee_self には自分の評価詳細と成長計画を見せる
- manager には配下の評価・根拠・計画を見せる
- HR には制度運用に必要な raw detail を見せる
- executive には aggregate-first とする
- admin は技術運用に必要な範囲を基本とし raw評価内容の全面可視を既定にしない

# 14. 結論
TalentGrowth の screen-by-screen field definition は、
UI項目を列レベルまで固定し、
editable / visible / source を明示することで
画面実装と権限制御のずれを防ぐ。
