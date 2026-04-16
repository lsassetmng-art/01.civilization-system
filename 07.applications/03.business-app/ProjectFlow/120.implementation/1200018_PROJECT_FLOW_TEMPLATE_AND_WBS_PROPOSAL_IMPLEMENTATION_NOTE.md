# ============================================================
# PROJECT FLOW TEMPLATE AND WBS PROPOSAL IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- template persistence
- template task expansion service
- dependency-aware proposal calculator
- business-day adjustment helper
- proposal preview read model
- proposal confirmation service

implementation_rules:
- keep proposal calculator deterministic
- keep proposal and confirmed schedule states separate
- preserve traceability from confirmed schedule to source template
- allow later extension for additional business-day rule sophistication
