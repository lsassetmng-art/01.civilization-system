# ============================================================
# MBO OBJECTIVE RUNTIME
# ============================================================

status: canonical
application: Mbo
layer: runtime
owner: Boss
prepared_by: Zero

status_flow:
draft -> active -> in_review -> finalized -> transferred

rules:
- only active objectives accept normal progress updates
- finalized objectives are locked
