# ============================================================
# BACKEND FRONTEND SPLIT NOTE
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a cross-phase split between backend and frontend concerns.

backend_focus:
- authority enforcement
- status transition correctness
- API exact contract implementation
- persistence and indexing
- audit event generation
- ERP reflection boundary enforcement

frontend_focus:
- authority visibility
- overdue and priority visibility
- next-action clarity
- safe action entry points
- multi-device usability
- multilingual and multicurrency presentation

cross_team_alignment_rules:
- backend error codes must map cleanly to UI states
- frontend must not hide authority or eligibility fields
- frontend must not infer financial truth beyond API payload
- backend must not rely on UI to enforce authority rules
