# ============================================================
# CONSTRUCTION REQUEST MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: construction-request

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUPPORTED FIELDS
# ============================================================

Recommended fields:
- construction_request_id
- requester_ref
- land_ref
- design_package_ref
- intended_building_type
- budget_amount
- schedule_target
- request_state


# ============================================================
# 2. FINAL RULE
# ============================================================

Construction request is the canonical handoff object
from design/ownership side to construction execution side.
