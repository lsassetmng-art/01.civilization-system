# ============================================================
# WAR LOGISTICS
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for war logistics structures.

# 2. INTEGRATION SCOPE

- logistics plans to deployment and operation consumers
- routes and resource rules to runtime and supply consumers
- war-logistics audit to operations

# 3. INTEGRATION RULES

- logistics scope, routes, and resource rules must be explicit before handoff
- blocked logistics state must preserve blocking reason
- hidden war-logistics mutation must not cross boundary
- ambiguous logistics state must fail closed

