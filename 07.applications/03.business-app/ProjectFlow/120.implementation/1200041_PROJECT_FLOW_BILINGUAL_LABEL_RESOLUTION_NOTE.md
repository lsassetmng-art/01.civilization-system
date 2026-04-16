# ============================================================
# PROJECT FLOW BILINGUAL LABEL RESOLUTION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for resolving bilingual labels.

resolution_steps:
1. resolve selected locale
2. resolve label key
3. resolve localized wording from label catalog
4. apply fallback if key is missing
5. surface unresolved key for review when necessary

application_targets:
- screen titles
- buttons
- filter labels
- status wording
- customer-facing material titles
- customer-facing material section headings
- export headers
- one-page summary labels

rules:
- labels should be resolved from stable keys
- visible labels should not depend on raw field ids
- fallback should remain reviewable in testing
