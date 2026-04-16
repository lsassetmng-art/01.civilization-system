# ============================================================
# MBO SQL PHASE 2 SUMMARY
# ============================================================

status: canonical
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

summary:
Phase2 SQL is fixed for Mbo with constraints, indexes, and helper views.

fixed_now:
- range and lock-related check constraints
- deferred foreign keys
- dashboard and API read performance indexes
- latest progress/review helper views
- linkage summary helper view
- dashboard core helper view

next_recommended_design_step:
- updated_at trigger policy
- RLS policy design
- API read views expansion
