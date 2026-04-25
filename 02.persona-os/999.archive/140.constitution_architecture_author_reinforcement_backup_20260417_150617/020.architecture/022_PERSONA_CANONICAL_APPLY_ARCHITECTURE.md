# ============================================================
# PERSONA CANONICAL APPLY ARCHITECTURE
# ============================================================

status: implementation-ready-followup

canonical_apply_role:
The canonical apply path is the only architectural authority
that may mutate persona truth state.

apply_requirements:
- validated input only
- exact transition authority
- optimistic or deterministic concurrency control
- audit write on every mutation
- terminal result persistence

forbidden:
- direct truth mutation from builder
- direct truth mutation from runtime
- direct truth mutation from downstream callback
