# ============================================================
# PROJECT FLOW OFFICIAL COMMON COMPONENT REFERENCE NOTE
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how ProjectFlow should use the official common component ledger.

reference_priority:
1. 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
2. ProjectFlow common component dependency notes
3. ProjectFlow local ownership notes

usage_rules:
- check the official ledger first
  before treating any UI shell,
  export shell,
  entitlement guard,
  sync visibility shell,
  or multilingual shell as app-local
- if a component is already official,
  consume it as shared ownership
- if a candidate is not yet official,
  keep it app-local and additive
- candidate registration still belongs to separate canonical flow outside ProjectFlow
