# ============================================================
# CADENCE AND TICK
# FLOW
# ============================================================

status: draft
layer: flow
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for cadence and tick execution.

# 2. TRIGGER

- active runtime cycle
- cadence override request
- speed family change request
- batch catchup request

# 3. MAIN FLOW

1. resolve cadence_profile
2. resolve applicable tick_rule by actor scope
3. validate speed family authorization
4. open execution_window
5. execute actor groups in declared order
6. apply short / base / long cadence routing
7. persist runtime position and timing result
8. emit cadence audit trace

# 4. FAILURE FLOW

- unknown cadence profile -> reject
- unauthorized speed family -> reject
- incompatible execution window overlap -> reject
- unsafe catchup route -> fail closed

# 5. OUTPUT

- execution window result
- runtime timing update
- audit trace and rejection reason where applicable

