# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LIFE PLANNER HOME SCREEN ITEM EXACT
# ============================================================

status: draft
system: LifePlanner
screen: home
owner: Boss
prepared_by: Zero
persistence_schema: life

screen_purpose:
  - 全体把握
  - 直近イベント確認
  - 要見直し確認
  - 各主要画面への入口

sections:

  header:
    items:
      - item_id: home_title
        label_ja: 人生計画表
        item_type: text
        source_entity: none
        source_field: none
        required: false
        editable: false
        visible_condition: always

      - item_id: current_user_summary
        label_ja: 利用者サマリー
        item_type: summary
        source_entity: none
        source_field: none
        required: false
        editable: false
        visible_condition: always

  review_needed_card:
    items:
      - item_id: review_needed_count
        label_ja: 見直し必要件数
        item_type: badge
        source_entity: review_log
        source_field: derived.review_needed_count
        required: false
        editable: false
        visible_condition: always

      - item_id: last_reviewed_at
        label_ja: 最終見直し日
        item_type: date
        source_entity: review_log
        source_field: derived.last_reviewed_at
        required: false
        editable: false
        visible_condition: always

  upcoming_events_card:
    items:
      - item_id: next_event_title
        label_ja: 次の重要イベント
        item_type: text
        source_entity: event_timeline
        source_field: derived.next_event_title
        required: false
        editable: false
        visible_condition: when_exists

      - item_id: next_event_date
        label_ja: 次の重要イベント日
        item_type: date
        source_entity: event_timeline
        source_field: derived.next_event_date
        required: false
        editable: false
        visible_condition: when_exists

      - item_id: upcoming_event_count
        label_ja: 直近イベント件数
        item_type: badge
        source_entity: event_timeline
        source_field: derived.upcoming_event_count
        required: false
        editable: false
        visible_condition: always

  goal_progress_card:
    items:
      - item_id: total_goal_count
        label_ja: 目標総数
        item_type: number
        source_entity: life_goal
        source_field: derived.total_goal_count
        required: false
        editable: false
        visible_condition: always

      - item_id: in_progress_goal_count
        label_ja: 進行中目標数
        item_type: number
        source_entity: life_goal
        source_field: derived.in_progress_goal_count
        required: false
        editable: false
        visible_condition: always

      - item_id: completed_goal_count
        label_ja: 完了目標数
        item_type: number
        source_entity: life_goal
        source_field: derived.completed_goal_count
        required: false
        editable: false
        visible_condition: always

  reflection_candidate_card:
    items:
      - item_id: pending_candidate_count
        label_ja: 未対応の見直し候補
        item_type: badge
        source_entity: reflection_candidate
        source_field: derived.pending_count
        required: false
        editable: false
        visible_condition: always

      - item_id: latest_candidate_source
        label_ja: 最新候補の発生元
        item_type: text
        source_entity: reflection_candidate
        source_field: derived.latest_source_app
        required: false
        editable: false
        visible_condition: when_exists

  navigation_actions:
    items:
      - item_id: open_plan_list
        label_ja: 計画一覧へ
        item_type: button
        source_entity: none
        source_field: none
        required: false
        editable: false
        visible_condition: always

      - item_id: open_notification_center
        label_ja: 通知一覧へ
        item_type: button
        source_entity: none
        source_field: none
        required: false
        editable: false
        visible_condition: always

      - item_id: open_reflection_candidate_view
        label_ja: 見直し候補へ
        item_type: button
        source_entity: none
        source_field: none
        required: false
        editable: false
        visible_condition: always
