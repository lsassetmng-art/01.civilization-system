# ============================================================
# LIFE PLANNER REVIEW CYCLE POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 070.operations
subfolder: 020.notification-review
owner: Boss
prepared_by: Zero
schema: life

review_cycles:
  monthly_light_review:
    purpose:
      - 軽い見直し
    checklist:
      - upcoming events check
      - overdue goals check
      - new reflection candidates check

  semiannual_review:
    purpose:
      - 半年単位の見直し
    checklist:
      - goal priority review
      - cost estimate review
      - category balance review
      - family share scope review

  annual_review:
    purpose:
      - 年次の全体見直し
    checklist:
      - 5y / 10y / 20y plan alignment
      - scenario comparison refresh
      - major life event update
      - sensitive share settings review

triggered_reviews:
  - trigger: reflection_candidate_applied
    recommended_action:
      - create review_log

  - trigger: major_event_date_changed
    recommended_action:
      - plan detail summary refresh
      - review prompt

  - trigger: family_editor_update
    recommended_action:
      - owner confirmation prompt

review_record_rule:
  - 実際に見直した場合は review_log を残す
  - 単なる閲覧のみなら review_log 必須ではない
