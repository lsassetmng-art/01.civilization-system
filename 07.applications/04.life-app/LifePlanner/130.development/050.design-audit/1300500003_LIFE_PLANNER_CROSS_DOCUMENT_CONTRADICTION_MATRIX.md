# ============================================================
# LIFE PLANNER CROSS DOCUMENT CONTRADICTION MATRIX
# ============================================================

status: draft
system: LifePlanner
layer: 130.development
subfolder: 050.design-audit
owner: Boss
prepared_by: Zero
schema: life

matrix:
  - concern: storage schema
    must_match:
      - integrated canonical
      - screen item docs
      - logical schema docs
      - decision log
    expected_value:
      - life

  - concern: family share visibility
    must_match:
      - access control docs
      - privacy policy
      - sensitive scope master
      - screen item exact docs
    expected_value:
      - share scope + allow flag required

  - concern: reflection apply
    must_match:
      - payload exact docs
      - contract binding docs
      - state machine docs
      - review policy docs
    expected_value:
      - pending only
      - owner final action
      - review_log created

  - concern: scenario compare
    must_match:
      - pricing policy
      - scope matrix
      - screen transition docs
      - access control docs
    expected_value:
      - Family only

  - concern: goal status enum
    must_match:
      - enum master
      - payload docs
      - state machine docs
      - screen item docs
    expected_value:
      - not_started / planned / in_progress / completed / paused / cancelled

audit_result_policy:
  - contradiction found -> log to open issues or decision log
  - contradiction resolved -> update affected docs and decision log
