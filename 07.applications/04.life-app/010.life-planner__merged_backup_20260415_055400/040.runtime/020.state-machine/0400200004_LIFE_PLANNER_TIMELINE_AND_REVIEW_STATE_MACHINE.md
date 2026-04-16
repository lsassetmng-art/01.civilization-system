# ============================================================
# LIFE PLANNER TIMELINE AND REVIEW STATE MACHINE
# ============================================================

status: draft
system: LifePlanner
layer: 040.runtime
subfolder: 020.state-machine
owner: Boss
prepared_by: Zero
schema: life

entity_01:
  entity: life.life_event_timeline
  state_model:
    - explicit status field is not mandatory in first design
    - validity is controlled by event_mode and date consistency
  lifecycle:
    - created
    - updated
    - logically inactive by parent archive
  notes:
    - event自体に複雑な状態を持たせず、計画状態に従属させる
    - event_mode と date consistency を優先して管理する

entity_02:
  entity: life.life_review_log
  state_model:
    - immutable append-only preferred
  lifecycle:
    - created only
  notes:
    - review_log は更新より追記を基本とする
    - 履歴改ざんを避けるため delete / overwrite は初期設計で想定しない

review_trigger_policy:
  manual:
    - owner
    - family_editor within scope
  external_source:
    - money_planner
    - end_of_life_planner
    - body_metrics
    - training_coach
    - legal_support_app

runtime_rules:
  - review_log は state machine より event log に近い
  - timeline event は parent plan archive 時に実質凍結扱い
