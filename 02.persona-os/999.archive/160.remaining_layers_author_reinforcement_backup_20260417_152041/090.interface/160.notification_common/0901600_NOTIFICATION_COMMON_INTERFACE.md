# ============================================================
# NOTIFICATION COMMON INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines common notification interface expectations.

required UI elements:
- readable reminder presentation
- grouped summary presentation where applicable
- daily summary presentation where applicable
- notification control visibility where supported

rules:
- notification UI must remain understandable
- advanced notification behavior must be distinguishable from simple reminder behavior
