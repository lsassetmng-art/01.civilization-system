# ============================================================
# PROJECT FLOW GATE REVIEW STARTER RULES
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides starter rules for gate review decisions.

starter_rules:

for_local_safe_packages:
- confirm package scope is truly local
- confirm no hidden ERP or BusinessOS reinterpretation is included
- confirm prerequisite docs are enough for local refinement

for_boundary_sensitive_packages:
- confirm concern area is identified
- confirm higher canonical references are listed
- confirm ownership and mediation conflicts are checked
- confirm blocked-if-conflict rule is respected

for_blocked_packages:
- confirm package remains blocked
- allow only logging,
  summary cleanup,
  or reopen-condition maintenance
