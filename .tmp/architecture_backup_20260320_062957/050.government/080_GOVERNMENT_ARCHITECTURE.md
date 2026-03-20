# ============================================================
# GOVERNMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Government is the formal authority structure that governs a nation.

purpose:
- define decision authority
- manage public policy execution
- connect law, economy, and citizens

components:
- executive
- legislative
- administrative

rules:
- government actions must be explicit and auditable
- no hidden authority override
- government does not directly mutate economy or citizen state

event_flow:
- policy_proposed
- policy_reviewed
- policy_approved
- policy_enforced

constitution_alignment:
- explicit authority
- no silent override

final_rule:
Government authority must always be explicit and event-driven.
