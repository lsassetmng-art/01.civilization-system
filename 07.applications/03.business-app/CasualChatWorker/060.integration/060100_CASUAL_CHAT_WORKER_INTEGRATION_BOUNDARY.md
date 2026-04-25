# CasualChatWorker Integration Boundary

status: draft
phase: Phase A skeleton

## Systems

business:
- owns contract, payment intent, usage, session, history.

aiworker:
- owns AI worker catalog, Friend / Lover classification, conversation control, safety rules.

cx22073jw:
- owns smalltalk materials and topic references.

app_common:
- owns shared presentation metadata and component variants.

CommonOS:
- owns shared UI foundation and sync presentation.

## Boundary rules

- Do not copy AI worker catalog into business.
- Do not copy CX material into business.
- Do not store payment truth in aiworker or cx22073jw.
- Do not store conversation control truth in business.
- Chat app reads aiworker and cx22073jw through safe views.
- Contract writes go to business only.
