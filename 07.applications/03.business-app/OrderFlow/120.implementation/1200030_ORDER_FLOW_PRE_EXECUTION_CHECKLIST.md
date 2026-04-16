# ============================================================
# ORDER FLOW PRE EXECUTION CHECKLIST
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Checklist to be completed before any actual SQL execution planning.

pre_execution_checklist:

  phase_guard:
    - current work is still design/review stage
    - no execution before explicit approval
    - no phase-less fix

  review_guard:
    - Sato review completed
    - review outcome recorded
    - unresolved DB concerns listed

  schema_guard:
    - target schema decided explicitly
    - naming policy confirmed
    - company scope strategy confirmed
    - uuid generation policy confirmed

  data_model_guard:
    - order core approved
    - schedule-side tables approved
    - shipment and delivery tables approved
    - notification and sync tables approved
    - soft-link policy approved where strict FK is not used

  index_guard:
    - list query paths reviewed
    - shipment board query paths reviewed
    - notification list query paths reviewed
    - history query paths reviewed

  state_guard:
    - order_state approved
    - shipment_status approved
    - delivery_status approved
    - proposal_status approved
    - close and cancel rules approved

  migration_guard:
    - additive only confirmed
    - destructive statements absent
    - rollback / retry posture discussed if needed later

  integration_guard:
    - ERP-present mode assumptions reviewed
    - ERP-absent mode assumptions reviewed
    - sync_state handling reviewed
    - pending_operation handling reviewed

final_gate:
  - do not execute until Boss decision exists
  - do not execute until Sato review result is attached

