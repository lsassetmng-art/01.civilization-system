# ============================================================
# WORLD TICK EXECUTION RUNTIME UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: world-tick-execution-runtime-ui
component: world-tick-execution-runtime-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for world tick execution runtime
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- tick_execution_dashboard_screen
- tick_order_screen
- batch_trigger_screen
- domain_update_screen
- tick_execution_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: tick_execution_dashboard_screen
route_key: world-runtime/tick/dashboard

visible_sections:
- tick_state_summary_section
- execution_order_summary_section
- batch_trigger_summary_section
- domain_update_summary_section

actions:
- open_tick_order
- open_batch_trigger
- open_domain_update
- open_tick_execution_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Tick execution UI must remain:

- tick-visible
- order-aware
- batch-aware
- domain-aware
