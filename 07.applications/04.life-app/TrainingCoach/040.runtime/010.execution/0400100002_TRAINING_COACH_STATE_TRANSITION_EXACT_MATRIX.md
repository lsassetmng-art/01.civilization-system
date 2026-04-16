# ============================================================
# TRAINING COACH STATE TRANSITION EXACT MATRIX
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 040.runtime
owner: Boss
prepared_by: Zero

purpose:
  - training_plan / training_session / completion_log の状態遷移を固定する
  - 不正遷移を明示し、error code と接続する
  - 実装時の分岐ぶれを防ぐ

state_machine_policy:
  - 状態遷移は additive ではなく厳格固定とする
  - 定義のない遷移は拒否する
  - 確定済み記録は直接更新しない
  - 変更不能化後の修正は correction event で扱う

training_plan:
  states:
    - active
    - paused
    - archived
  transitions:
    - from: active
      action: pause_plan
      to: paused
      allowed_role: owner
    - from: active
      action: archive_plan
      to: archived
      allowed_role: owner
    - from: paused
      action: resume_plan
      to: active
      allowed_role: owner
    - from: paused
      action: archive_plan
      to: archived
      allowed_role: owner
  denied_transitions:
    - from: archived
      action: resume_plan
      reason_code: TC-DATA-0004
    - from: archived
      action: pause_plan
      reason_code: TC-DATA-0004

training_session:
  states:
    - scheduled
    - in_progress
    - completed
    - skipped
    - stopped
  transitions:
    - from: scheduled
      action: start_session
      to: in_progress
      allowed_role: owner
    - from: scheduled
      action: skip_session
      to: skipped
      allowed_role: owner
    - from: in_progress
      action: complete_session
      to: completed
      allowed_role: owner
    - from: in_progress
      action: stop_session
      to: stopped
      allowed_role: owner
  denied_transitions:
    - from: completed
      action: start_session
      reason_code: TC-DATA-0003
    - from: completed
      action: complete_session
      reason_code: TC-DATA-0003
    - from: skipped
      action: complete_session
      reason_code: TC-DATA-0005
    - from: stopped
      action: complete_session
      reason_code: TC-DATA-0005

completion_log:
  states:
    - finalized
  transitions: []
  denied_transitions:
    - from: finalized
      action: direct_update
      reason_code: TC-DATA-0004
    - from: finalized
      action: direct_delete
      reason_code: TC-DATA-0004

fatigue_note:
  states:
    - open_same_day
    - locked_after_day
  transitions:
    - from: open_same_day
      action: day_rollover
      to: locked_after_day
      allowed_role: system
  denied_transitions:
    - from: locked_after_day
      action: direct_update
      reason_code: TC-DATA-0004

safety_overlay_mode:
  states:
    - normal
    - light_mode_recommended
    - rest_recommended
  transitions:
    - from: normal
      action: high_fatigue_detected
      to: light_mode_recommended
      allowed_role: system
    - from: normal
      action: unsafe_condition_detected
      to: rest_recommended
      allowed_role: system
    - from: light_mode_recommended
      action: condition_recovered
      to: normal
      allowed_role: system
    - from: rest_recommended
      action: next_day_reassessment
      to: normal
      allowed_role: system

implementation_notes:
  - stopped と skipped は completed と同一扱いにしない
  - session_complete API は in_progress からのみ受理する
  - correction event 設計は後続実装段で定義する
