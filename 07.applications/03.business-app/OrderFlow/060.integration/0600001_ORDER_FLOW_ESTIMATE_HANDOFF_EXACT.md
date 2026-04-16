# ============================================================
# ORDER FLOW ESTIMATE HANDOFF EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact handoff boundary from EstimateCreator to OrderFlow.

# ============================================================
# 1. handoff principle
# ============================================================

principles:
  - estimate and order are separate records
  - same-record promotion is forbidden
  - handoff is copy-based
  - order side must retain estimate traceability
  - estimate-origin snapshot must remain visible after handoff

# ============================================================
# 2. supported handoff entry types
# ============================================================

supported_handoff_entry_types:
  - deeplink_handoff
  - internal_create_from_estimate
  - copied_context_resume

meanings:
  deeplink_handoff:
    - EstimateCreator launches OrderFlow through app-to-app entry
  internal_create_from_estimate:
    - same environment creates order from estimate context without separate raw record identity
  copied_context_resume:
    - previously copied estimate-origin draft is reopened inside OrderFlow

# ============================================================
# 3. minimum handoff payload meaning
# ============================================================

minimum_handoff_payload_meaning:
  required:
    - source_app_name
    - source_estimate_id
    - source_estimate_number
    - source_customer_ref
    - source_currency_code
    - source_estimate_snapshot
    - handoff_timestamp
    - handoff_actor_ref
  optional:
    - source_estimate_title
    - source_estimate_version
    - requested_delivery_date_hint
    - source_line_snapshots
    - source_note_summary
    - source_locale_hint

rules:
  - raw credentials must not be embedded
  - payload is business context, not identity replacement
  - payload may be partial as long as required traceability exists

# ============================================================
# 4. estimate snapshot expectations
# ============================================================

estimate_snapshot_expectations:
  should_include:
    - estimate header summary
    - customer summary
    - estimate line snapshot
    - money/currency summary
    - operator-visible note summary if allowed
  should_not_require:
    - live editing reference back to estimate
  rules:
    - snapshot is historical support
    - later estimate changes do not rewrite order-side snapshot silently

# ============================================================
# 5. order creation expectations after handoff
# ============================================================

after_handoff_order_creation:
  required_results:
    - new order_id generated
    - order_source_type set to from_estimate
    - order_source_estimate_link created
    - customer snapshot created
    - copied order lines created from allowed estimate-origin scope
    - order starts in draft unless explicit policy says otherwise

# ============================================================
# 6. forbidden patterns
# ============================================================

forbidden_patterns:
  - reusing estimate_id as order_id
  - mutating estimate record into order record
  - silently losing source estimate traceability
  - requiring raw login credentials in deeplink
  - overwriting order snapshot because estimate changed later

# ============================================================
# 7. design note
# ============================================================

design_note:
  OrderFlow accepts estimate-origin business intent,
  but ownership after handoff becomes order-side execution responsibility.

