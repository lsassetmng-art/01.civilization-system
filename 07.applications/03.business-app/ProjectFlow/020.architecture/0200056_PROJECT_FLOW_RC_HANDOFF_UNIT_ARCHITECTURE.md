# ============================================================
# PROJECT FLOW RC HANDOFF UNIT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the release-candidate and handoff unit layer
after merge / release-prep outputs are approved.

unit_domains:
- feature-area release-candidate check units
- packaging release-candidate units
- implementation handoff summary units
- release-note and readiness units

architecture_rules:
- release-candidate and handoff units must be broader than merge units
  but still explicit and reviewable
- approved-scope boundaries must remain preserved
- blocked boundary scope must remain excluded
- handoff units must summarize approved reality,
  not aspirational future scope
