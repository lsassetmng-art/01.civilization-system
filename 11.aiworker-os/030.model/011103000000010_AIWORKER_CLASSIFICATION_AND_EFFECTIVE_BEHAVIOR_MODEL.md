# ============================================================
# AIWORKER CLASSIFICATION AND EFFECTIVE BEHAVIOR MODEL
# ============================================================

status: exact-model
system: AiworkerOS
layer: 030.model
owner: Boss
prepared_by: Zero

purpose:
Define the exact dimensions that determine worker behavior.

worker_classification_axes:
- rank
- domain
- role
- lane
- app_scope
- mode
- company_style_profile
- allowed_view_family
- output_policy
- write_surface
- gate

fixed_domain_examples:
- operations
- casual_conversation
- casual_relationship
- streaming
- game
- education
- qualification_prep
- utility_assist
- workforce_execution
- combat_unit
- clerical_execution
- clerical_control
- senior_clerical_control

mode_examples:
- STANDARD
- SAFE
- RESTRICTED
- MAINTENANCE
- TRAINING
- RECOVERY
- ESCALATION_PENDING

effective_behavior_formula:
effective_behavior =
rank x domain x role x lane x app_scope x mode
x company_style_profile x allowed_view_family
x output_policy x write_surface x gate

nonnegotiable_rules:
- rank and role are separate
- domain and role are separate
- style is not authority
- style cannot unlock forbidden write surface
- rank cannot bypass approval or audit
- rank cannot unlock destructive authority
