# ============================================================
# RUNTIME ISOLATION RULE
# ============================================================

status: canonical
scope: architecture
component: runtime-isolation-rule

owner: Boss
prepared_by: Zero


# PURPOSE

Define runtime isolation principles.


# RULES

Runtime failures must remain isolated.
One runtime unit must not corrupt another.
Isolation must be enforced by boundary rules.


# FINAL RULE

Fail-closed isolation is required.

