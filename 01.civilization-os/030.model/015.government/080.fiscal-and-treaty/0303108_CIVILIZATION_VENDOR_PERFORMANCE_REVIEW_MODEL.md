# ============================================================
# CIVILIZATION VENDOR PERFORMANCE REVIEW MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical vendor performance review model.

model_type:
- supplier performance truth model

primary_key:
- vendor_performance_review_id

natural_key:
- review_scope
- review_ref
- supplier_scope

fields:
- vendor_performance_review_id
- review_scope
- review_ref
- supplier_scope
- review_status
- performance_result
- source_lineage
- source_state_version
- reviewed_at
- created_at
- updated_at

review_status_enum:
- pending
- completed
- escalated
- superseded
- archived

truth_boundary:
Vendor-performance truth belongs to CivilizationOS public-procurement domain.
