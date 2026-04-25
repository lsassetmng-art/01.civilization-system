# PERSONA EDGE PACKET CONTRADICTION AND REOPEN WORKFLOW

status: maintenance-ops-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_071627

purpose:
Defines how a real contradiction is handled without collapsing back into broad redesign.

valid_contradiction_examples:
- one packet says function A owns a boundary while another says it does not
- one packet says an external field is allowed while another forbids it
- one packet says packet membership includes a function while registry says it does not
- one packet says a status collapses into another while result mapping requires separation

reopen_workflow:
1. name the contradiction explicitly
2. identify the smallest conflicting packet set
3. update the smallest conflicting packet first
4. update bundle only if sibling relation is affected
5. update atlas or registry only if packet relation or membership changed
6. add changelog entry
7. confirm contradiction is closed

invalid_reopen_examples:
- reopening a family because of preference alone
- reopening atlas because of one wording change
- reopening cross-family design because one display field moved
- reopening truth ownership with no explicit contradiction

hard_rule:
A contradiction is not "something I want phrased differently."
It must be a real semantic conflict.
