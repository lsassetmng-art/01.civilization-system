# ============================================================
# SYNC BINDING
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for sync bindings.

# 2. INTEGRATION SCOPE

- sync bindings to synchronization and runtime consumers
- sync targets and rules to execution-control consumers
- sync-binding audit to operations

# 3. INTEGRATION RULES

- sync scope, target set, and rule set must be explicit before handoff
- blocked sync state must preserve blocking reason
- hidden sync mutation must not cross boundary
- ambiguous sync state must fail closed

