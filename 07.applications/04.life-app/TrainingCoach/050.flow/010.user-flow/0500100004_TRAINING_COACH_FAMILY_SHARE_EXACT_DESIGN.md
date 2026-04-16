# ============================================================
# TRAINING COACH FAMILY SHARE EXACT DESIGN
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 050.flow
owner: Boss
prepared_by: Zero

purpose:
  - 将来拡張としての family/share を exact に整理する
  - 初期リリースに入れない部分も、意味境界だけ先に固定する
  - 生の health data を共有しすぎない前提を明確にする

share_policy:
  - 初期リリースでは deep share は入れない
  - share は summary first とし、raw first にしない
  - fatigue_note や detailed body condition は既定で共有しない
  - owner が明示的に共有設定した範囲のみ共有候補とする

roles_future:
  owner:
    description:
      - 正本利用者
  family_summary_viewer:
    description:
      - 要約のみ閲覧できる家族共有閲覧者
  friend_summary_viewer:
    description:
      - 軽量な進捗要約のみ閲覧できる共有先
  coach_view:
    description:
      - 将来の助言閲覧ロール
      - raw health 値の全面閲覧を既定にしない

shareable_summary_candidates:
  - current_streak_days
  - weekly_completion_rate
  - active_goal_count
  - status_badge
  - completed_training_minutes_bucket
  - consistency_badge

not_share_by_default:
  - fatigue_level exact value
  - body_condition exact raw input
  - note / memo free text
  - detailed session timeline
  - device sync error details
  - full guide consumption history

future_share_flows:

flow_1_owner_invites_family_summary_viewer:
  steps:
    - owner opens share settings
    - owner selects summary-only share
    - owner chooses viewer target
    - owner confirms scope
    - system issues share invitation candidate

flow_2_viewer_accepts_share:
  steps:
    - viewer opens invite
    - viewer sees scope summary
    - viewer accepts
    - system activates limited share relation

flow_3_owner_updates_share_scope:
  steps:
    - owner opens active share setting
    - owner adds or removes summary items
    - system re-applies policy

flow_4_owner_revokes_share:
  steps:
    - owner disables share relation
    - viewer loses future access
    - historical export persistence policy is separate topic

recommended_v1_position:
  - design only
  - not included in initial release implementation
  - premium relation candidate but not implementation requirement for v1

future_payload_candidates:
  shared_progress_summary:
    fields:
      - owner_user_id
      - viewer_user_id
      - current_streak_days
      - weekly_completion_rate
      - status_badge
      - last_shared_at

risks:
  - health privacy over-sharing
  - family pressure UX
  - guilt-inducing comparison
  - accidental exposure of raw notes

ux_guardrails:
  - support tone only
  - ranking style comparisonを入れない
  - owner control を常に上位に置く
