# ============================================================
# PROJECT FLOW SHARED COMPONENT ADAPTER CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- shared component usage keeps official ownership intact
- ProjectFlow-side adapter is explicit where needed
- app-specific semantics remain in local adapter/wrapper layer
- shared contracts are not silently extended by ProjectFlow-local assumptions
- wrapper usage is explicit when local orchestration is needed
