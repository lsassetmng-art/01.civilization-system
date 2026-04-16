# ============================================================
# PROJECT FLOW REFERENCE AWARE IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of external canonical references.

implementation_prep_rules:
- implementation planning should check BusinessOS mediation before ERP-facing assumptions
- implementation planning should prefer reusable common components where already canonicalized
- ProjectFlow-specific implementation should not fork shared ownership concepts without reason
- promoted common-component candidates should be treated via separate canonical registration flow
