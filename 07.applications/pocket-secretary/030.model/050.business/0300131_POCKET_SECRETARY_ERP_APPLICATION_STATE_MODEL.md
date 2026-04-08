# ============================================================
# POCKET SECRETARY ERP APPLICATION STATE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific usage of the shared submission state model.

common reference:
BusinessOS submission common defines the shared submission states:
- draft
- review_ready
- awaiting_user_send
- submitted_pending_response
- accepted
- failed
- conflicted

PocketSecretary-specific usage:
- submission-capable states are bound to Enterprise review surfaces
- review_ready and awaiting_user_send are visible in app-specific UI flows

rules:
- application button trigger belongs to enterprise flow
- accepted state requires external response
