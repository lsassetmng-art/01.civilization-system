# ============================================================
# ALLIANCE ACTIVATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Alliance activation determines whether allied nations enter,
support, or refuse a war response.

activation_modes:
- direct_entry
- material_support
- diplomatic_support
- refusal
- limited_support

constraints:
- existing alliance hostility constraints remain valid
- not all alliances imply identical war obligations
- support burden affects allied loyalty and economy

rules:
- alliance activation must be evaluated explicitly
- alliance response cannot be assumed automatically without alliance rules
- refusal must be logged because it affects relationship state

event_flow:
- alliance_support_requested
- alliance_obligation_evaluated
- alliance_response_selected
- support_effect_applied

final_rule:
Alliance participation in war must be explicit, constrained,
and politically consequential.
