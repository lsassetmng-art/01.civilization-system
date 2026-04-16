# ============================================================
# PROJECT FLOW COMMON COMPONENT DEPENDENCY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- shared component candidates are not treated as locally owned canon
- ProjectFlow-specific semantics remain local
- export, entitlement, sync, multilingual, and layout shells are recognized as commonizable areas
- WBS proposal and material composition remain app-local unless separately promoted
- local/shared boundary is explicit enough for later phase planning
