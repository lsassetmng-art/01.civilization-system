# ============================================================
# PERSONA INTEGRATION ARCHITECTURE OVERVIEW
# ============================================================

status: implementation-ready-followup
domain: integration

integration_boundary:
- integration moves requests and results
- integration does not own truth mutation authority
- integration must preserve correlation, retry safety, and auditability

required_integration_controls:
- inbox contract
- outbox contract
- downstream callback normalization
- retry and dead-letter
- idempotent delivery boundary
