# ============================================================
# PROJECT FLOW CODING START ENTRY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the entry point from feature-slice planning
into coding-start planning.

entry_conditions:
- required feature-slice deliverables are reviewed in usable form
- approved scope is explicit
- blocked scope remains explicit
- boundary-aware unresolved items remain excluded from coding-start scope
- shared versus local component decisions are explicit where needed

architecture_rules:
- coding-start planning must consume approved slice outputs,
  not raw planning drafts
- coding-start scope must be narrower than broad feature scope
- blocked or boundary-sensitive unresolved areas must not leak into initial coding-start scope
