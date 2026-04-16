# ============================================================
# LIFE PLANNER BADGE AND INDICATOR DESIGN
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 120.indicator-score
owner: Boss
prepared_by: Zero
schema: life

badges:
  - badge_id: review_needed
    label_ja: 見直しあり
    usage:
      - home
      - life_plan_detail
      - domain dashboard

  - badge_id: upcoming
    label_ja: 近い予定
    usage:
      - event cards
      - home summary

  - badge_id: pending
    label_ja: 未対応
    usage:
      - reflection candidates
      - owner review queue

  - badge_id: archived
    label_ja: 保管中
    usage:
      - plan list
      - plan detail

  - badge_id: family_only
    label_ja: Family
    usage:
      - premium feature guidance

indicator_rules:
  - use plain-language badge before numerical score when possible
  - avoid too many simultaneous alert badges on one card
  - hidden scope items must not generate visible badges for unauthorized roles
