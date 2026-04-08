# ============================================================
# POLITICAL SYSTEM
# FLOW
# ============================================================

status: draft
layer: flow
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for political system handling.

# 2. TRIGGER

- political system creation/update
- office structure update
- power-source rule update

# 3. MAIN FLOW

1. create or resolve political_system_definition
2. bind office_structure set
3. bind power_source_rule set
4. validate jurisdiction scope and active system state
5. persist political_system_status
6. emit audit trace

# 4. FAILURE FLOW

- missing jurisdiction scope -> reject
- invalid office or power-source binding -> reject
- ambiguous active political system -> fail closed

# 5. OUTPUT

- political system state
- office/rule state
- audit record

