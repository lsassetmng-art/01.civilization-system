# ============================================================
# LIFE PLANNER GLOSSARY AND NAMING FREEZE
# ============================================================

status: draft
system: LifePlanner
layer: 920.meta
subfolder: 010.glossary
owner: Boss
prepared_by: Zero
schema: life

glossary:
  - term: life_plan
    meaning:
      - 人生計画表の親集約

  - term: life_goal
    meaning:
      - 人生計画に属する目標

  - term: life_milestone
    meaning:
      - life_goal に属する中間達成点

  - term: life_event_timeline
    meaning:
      - 人生年表上のイベント

  - term: life_review_log
    meaning:
      - 見直し履歴の記録

  - term: life_reflection_candidate
    meaning:
      - 他アプリ由来の見直し候補

  - term: life_shared_member
    meaning:
      - 共有相手とその権限・共有範囲

  - term: life_scenario
    meaning:
      - 比較用の将来案

  - term: life_scenario_decision
    meaning:
      - シナリオ比較後の意思決定記録

  - term: owner
    meaning:
      - 計画所有者であり最終判断者

  - term: family_editor
    meaning:
      - 共有範囲内で編集可能な家族ロール

  - term: family_viewer
    meaning:
      - 共有範囲内で閲覧のみ可能な家族ロール

  - term: derived
    meaning:
      - 保存値ではなく計算・整形・集計により生成される表示値

naming_freeze_rules:
  - use life_plan not just plan in storage/model documents
  - use goal_status not mixed status wording in entity context
  - use reflection_status not candidate_status
  - use role_type for shared member role field
  - use visibility_policy for plan visibility field

do_not_mix_examples:
  - plan_id vs life_plan_id in logical schema context
  - shared_user vs shared_member
  - review_history vs review_log
  - compare_result storage vs derived compare result
