# ============================================================
# MODULE BOUNDARY RULE
# ============================================================

status: canonical
scope: architecture
component: module-boundary-rule

owner: Boss
prepared_by: Zero


# PURPOSE

Define module isolation rules.


# RULES

Each module must have explicit responsibility.
Cross-module mutation is prohibited.
Interfaces must be explicit.


# FINAL RULE

Modules communicate only through
defined contracts.

