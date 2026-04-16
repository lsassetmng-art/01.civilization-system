# ============================================================
# MBO DDL VALIDATION SQL QUICKCHECK
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero
reviewer: Sato

purpose:
Provides a compact quick-check list for immediate DB validation.

quick_queries:
- list tables in app_mbo schema
- inspect constraints on mbo_objective
- inspect indexes on mbo_objective and mbo_erp_transmission_history
- select from v_mbo_dashboard_counts
- select from v_mbo_erp_failed_transmissions
- select from v_mbo_reopen_queue_api
- attempt invalid insert for progress_percent > 100
- attempt write as locked-objective normal path
- verify updated_at changes after update

note:
Actual executable quick-check SQL can be generated as a separate pack next.
