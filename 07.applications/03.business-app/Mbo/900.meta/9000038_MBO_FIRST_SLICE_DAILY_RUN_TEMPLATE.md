# ============================================================
# MBO FIRST SLICE DAILY RUN TEMPLATE
# ============================================================

status: canonical
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

purpose:
Provides a simple daily execution template
for implementation progress tracking.

daily_template:
- date:
- backend_items_moved:
- frontend_items_moved:
- quickcheck_run:
- acceptance_check_run:
- blockers_today:
- deviations_today:
- next_day_focus:

recommended_daily_order:
1. update backend ledger
2. update frontend ledger
3. run quick-check if DB/API changed
4. run first-slice acceptance if UI/API path changed
5. record blockers/deviations
