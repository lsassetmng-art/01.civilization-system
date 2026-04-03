# ============================================================
# CIVILIZATION MEDIA REVIEW INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for broadcast incidents and misinformation reviews.

required_fields:
- incident_ref or review_ref
- broadcaster_scope or target_content_ref
- evidence basis
- correlation_id

compatibility_rule:
Media-review interfaces must remain content-aware and evidence-aware.
