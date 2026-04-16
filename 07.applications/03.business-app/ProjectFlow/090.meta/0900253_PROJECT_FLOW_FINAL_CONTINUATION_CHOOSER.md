# ============================================================
# PROJECT FLOW FINAL CONTINUATION CHOOSER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the simplest chooser
for what the next continuation should be.

choose_one_only:
- DB-owner review continuation
- implementation continuation from approved scope
- closure cleanup only
- future sophistication as separate later-scope work

decision_help:
- if DB execution specifics are needed -> DB-owner review
- if approved implementation scope should move forward -> implementation continuation
- if only navigation or summary refinement is needed -> closure cleanup
- if new optional capability is desired -> future sophistication

warning:
Do not start from multiple paths at once.
