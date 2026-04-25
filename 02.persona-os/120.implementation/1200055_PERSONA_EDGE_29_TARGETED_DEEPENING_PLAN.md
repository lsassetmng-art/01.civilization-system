# PERSONA EDGE 29 TARGETED DEEPENING PLAN

status: design-deepening-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_172646

purpose:
Moves PersonaOS from family-wide design freeze into targeted deepening, without starting implementation.

deepening_principle:
- breadth is frozen
- depth is now prioritized
- deepen exactness only where it most reduces ambiguity before implementation

deepening_dimensions:
- exact request payload
- exact response payload
- exact failure family
- exact dependency and write order
- exact boundary and ownership behavior
- exact retry or dead path where applicable

priority_rule:
Prioritize functions whose ambiguity would block multiple downstream families.

deepening_order:
1. persona-state-apply
2. snapshot-issue / snapshot-verify / snapshot-revoke / revocation-list
3. sign-event / keygen-once / keys-by-id / keys-current
4. publish_apply / asset-publish-request-decide / asset-publish-list
5. visual-job-create / visual-compose / visual-upload
6. civilization-event-producer / event-validate / civilization-event-dispatcher / civilization-dead-notify / external_dispatcher
7. persona-create / persona-event-history
8. remaining support helpers

non_goal:
This plan does not start DB implementation, Edge Function implementation, or code generation.

