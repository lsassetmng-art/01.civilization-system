# ============================================================
# SHIFT MANAGER IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

implementation_guidance:
- keep clear distinction between draft and published state
- keep sharing logic centralized
- make mobile viewing lightweight
- publish operations should be explicit
- ERP connector should be additive, not tightly fused into UI logic

not_in_scope_yet:
- Java source generation
- physical DB schema
- exact API contracts
