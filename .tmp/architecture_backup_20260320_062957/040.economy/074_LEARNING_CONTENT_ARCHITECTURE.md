# ============================================================
# LEARNING CONTENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Learning content is purchasable or grantable educational material
used for preparation, study, and skill acquisition.

content_types:
- text
- guidebook
- certification_material
- interview_material
- training_material

price_layers:
- civ_cash
- national_currency_if_allowed_by_system_rule
- free

rules:
- content purchase must be explicit
- paid content must record purchase source and price layer
- owning content does not automatically grant certification
- content consumption may trigger skill gain events if defined

event_flow:
- learning_content_listed
- content_purchase_requested
- payment_completed
- content_entitlement_granted
- content_consumed
- skill_gain_requested

constitution_alignment:
- explicit purchase flow
- no hidden entitlement grant
- auditable premium boundary

final_rule:
Learning content must be purchased or granted explicitly,
and any skill effect must be event-driven.
