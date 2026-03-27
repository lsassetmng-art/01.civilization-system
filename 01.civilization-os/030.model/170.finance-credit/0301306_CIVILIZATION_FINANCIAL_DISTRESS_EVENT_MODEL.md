# ============================================================
# CIVILIZATION FINANCIAL DISTRESS EVENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the generic financial distress event model
of CivilizationOS.

This model supports generic distress/event tracking across domains.

It is not the canonical detailed default model for:
- bank loan default
- mortgage default
- enterprise finance default

Those belong to:
- 262.banking
- 260.real-estate-regime


# ============================================================
# 1. ROLE
# ============================================================

A financial distress event may arise from:
- unpaid insurance obligation
- subsidy disbursement failure
- relief funding shortfall
- generic settlement breakdown
- systemic support trigger

This model exists for cross-domain financial stress visibility.


# ============================================================
# 2. CORE FIELDS
# ============================================================

core_fields:
- financial_distress_event_id
- nation_code
- distress_type
- source_domain
- source_ref
- subject_type
- subject_ref
- distress_status
- severity_rank
- summary
- triggered_at
- created_at
- updated_at

distress_type examples:
- payout_failure
- disbursement_failure
- relief_shortfall
- settlement_breakdown
- financial_support_trigger


# ============================================================
# 3. FINAL RULE
# ============================================================

This model is a generic financial distress abstraction only.

Detailed lending-default handling must remain
in banking and real-estate finance domains.
