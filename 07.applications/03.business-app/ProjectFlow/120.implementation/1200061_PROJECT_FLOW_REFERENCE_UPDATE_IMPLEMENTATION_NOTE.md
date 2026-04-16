# ============================================================
# PROJECT FLOW REFERENCE UPDATE IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of reference updates.

implementation_rules:
- keep reference filename registers easy to update
- keep concern-to-reference mapping separate from ownership interpretation
- do not hardcode assumptions that a file version never changes
- prefer explicit review of local alignment notes after major external reference replacement
