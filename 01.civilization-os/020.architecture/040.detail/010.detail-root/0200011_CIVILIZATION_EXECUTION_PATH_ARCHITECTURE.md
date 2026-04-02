# ============================================================
# CIVILIZATION EXECUTION PATH ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define execution-path separation for sync, runtime, operations,
and policy enforcement.

execution_paths:
- runtime processing path
- sync consume path
- sync dispatch path
- retry path
- dead-letter or terminal-failure path
- approval path
- audit trace path

rules:
- sync consume and dispatch must remain separable
- retry must not bypass policy checks
- approval path must remain attributable
- audit trace path must survive operational failure
