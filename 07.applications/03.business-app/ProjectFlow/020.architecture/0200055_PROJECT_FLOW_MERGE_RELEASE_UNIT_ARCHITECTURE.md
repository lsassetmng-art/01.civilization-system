# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the merge / release-prep unit layer
after commit / PR-sized units are approved.

unit_domains:
- app entry merge units
- bootstrap merge units
- navigation merge units
- dashboard merge units
- project detail merge units
- material preview merge units
- material export merge units
- repository merge units
- gateway merge units
- sync ui merge units
- refresh trigger merge units
- release-prep packaging units

architecture_rules:
- merge / release-prep units must be broader than single commit / PR units
  but still reviewable and explicit
- merge units should preserve approved-scope boundaries
- local merge units should come before most boundary-aware merge units
- blocked boundary scope must remain excluded
- release-prep units must not silently merge blocked scope
