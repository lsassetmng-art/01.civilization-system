# ============================================================
# ANDROID TEMPLATE BATCH ORDER PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines batch order for starter-pack template generation.

batch_order:
1. domain model templates
2. entity and dao templates
3. repository templates
4. formatter and text resolver templates
5. settings templates
6. navigation templates
7. reducer template
8. viewmodel template
9. screen template

rule:
Freeze lower-level patterns first,
then build visible UI templates on top.
