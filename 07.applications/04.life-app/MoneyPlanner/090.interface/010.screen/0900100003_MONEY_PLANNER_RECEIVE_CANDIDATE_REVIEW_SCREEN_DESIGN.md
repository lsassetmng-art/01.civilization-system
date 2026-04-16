# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# MONEY PLANNER RECEIVE CANDIDATE REVIEW SCREEN DESIGN
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 090.interface
subdomain: screen

screen_id: MP-015
screen_name:
  en: Receive Candidate Review
  ja: 受入候補レビュー画面

purpose:
  - 他 LifeOS アプリから受け取った候補を確認する
  - duplicate candidate を見分ける
  - owner が採用/却下/保留を判断できるようにする
  - 自動確定を防ぎ、安全に MoneyPlanner へ反映する

entry_points:
  - dashboard の receive candidate summary
  - linkage settings 画面
  - alerts 画面の候補通知
  - imported candidate 一覧導線

visible_for_roles:
  owner:
    - full_access
  partner_editor:
    - read_limited
  viewer:
    - no_access

screen_sections:
  header_summary:
    fields:
      - received_count
      - draft_candidate_count
      - reviewed_count
      - confirmed_count
      - rejected_count
      - duplicate_candidate_count
      - latest_received_at

  source_filter:
    filter_options:
      - life_planner
      - end_of_life_planner
      - inheritance_support

  status_filter:
    filter_options:
      - received
      - draft_candidate
      - reviewed
      - confirmed
      - rejected
      - archived

  candidate_type_filter:
    filter_options:
      - event_budget
      - saving_goal
      - memo
      - asset
      - liability

  duplicate_filter:
    filter_options:
      - all
      - duplicate_only
      - non_duplicate_only

  candidate_list:
    list_columns:
      - source_system
      - candidate_type
      - title_or_name
      - planned_date_or_target_date
      - amount
      - currency_code
      - import_status
      - duplicate_candidate_flag
      - received_at

  candidate_detail_panel:
    sections:
      - raw_received_payload_summary
      - mapped_target_summary
      - duplicate_reference_summary
      - visibility_initial_value
      - review_note
      - source_app_note

  action_panel:
    owner_actions:
      - convert_to_draft_candidate
      - mark_reviewed
      - confirm_import
      - reject_candidate
      - archive_candidate
      - open_duplicate_reference
      - set_visibility_private
      - set_visibility_shared
      - set_visibility_selected_only
    partner_editor_actions:
      - read_only_comment_candidate
    viewer_actions: []

screen_states:
  empty:
    message:
      - review対象の受入候補はありません
  loading:
    message:
      - 読み込み中
  error:
    message:
      - 候補の取得に失敗しました
  duplicate_warning:
    message:
      - 重複候補の可能性があります。owner review が必要です

field_display_rules:
  amount:
    - base_currency 表示を基本とする
    - 元通貨が異なる場合は元通貨も併記可能
  source_system:
    - LifePlanner / EndOfLifePlanner / InheritanceSupport を表示
  duplicate_reference_summary:
    - duplicate_candidate_flag = true のとき表示
  review_note:
    - owner が編集可能
    - partner_editor は閲覧のみ

role_behavior:
  owner:
    - 全候補閲覧可
    - 状態変更可
    - visibility 決定可
    - confirm 可
  partner_editor:
    - confirmed 前の候補は原則 read only
    - duplicate 解消確定不可
    - visibility 変更不可
  viewer:
    - 非表示

screen_bindings:
  summary_source:
    - life.v_mp_receive_candidate_summary
  detail_source:
    - life.mp_receive_candidate_registry
  duplicate_reference_source:
    - mapped target object summary
    - duplicate_reference_object_id

ui_flags:
  - show_duplicate_badge
  - show_source_badge
  - show_candidate_type_badge
  - show_private_default_badge
  - show_owner_review_required_badge
