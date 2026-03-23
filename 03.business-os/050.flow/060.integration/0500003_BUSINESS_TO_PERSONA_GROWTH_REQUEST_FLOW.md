# ============================================================
# BUSINESS TO PERSONA GROWTH REQUEST FLOW
# ============================================================

status: canonical
layer: 050.flow
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the flow for Business-originated Persona growth requests.

flow_steps:
1 business milestone or approved trigger occurs
2 trigger is projected into allowed growth context
3 growth request model is created
4 outbox event is created
5 outbox dispatch sends request to PersonaOS
6 growth tracking ref is updated
7 Persona result is awaited through sync inbox

growth_examples:
- sales milestone reached
- support quality milestone
- continuity achievement
- approval quality milestone

boundary:
Business sends request only.
PersonaOS decides and applies growth truth.
