# ============================================================
# PROJECT FLOW REFERENCE CONFLICT RULES
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides practical conflict-resolution rules.

conflict_rules:
- if ProjectFlow local wording conflicts with foundation,
  foundation wins
- if ProjectFlow local wording conflicts with ERP-owned truth,
  ERP-side canonical wins
- if ProjectFlow local wording conflicts with BusinessOS mediation,
  BusinessOS mediation wins
- if schema summary and schema full detail differ,
  inspect schema full detail first,
  then re-check higher ownership interpretation
- if a dump suggests something that canonical docs do not support,
  do not treat the dump as ownership replacement automatically

local_followup_when_conflict_found:
- update local summary note if needed
- keep local app-owned behavior only where ownership allows
- avoid silent reinterpretation
