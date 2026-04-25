# PERSONA EDGE PACKET PRIORITY AND ESCALATION RULE

status: final-registry-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_071159

purpose:
Defines which packet to prefer first and when to escalate to a wider packet.

priority_order:
1. matching single-function packet
2. matching bundle packet
3. atlas packet
4. cross-family baseline only if a real contradiction exists

single-function preference rule:
Use a single-function packet when:
- the question is about one function only
- sibling-function relation is not load-bearing
- the packet already exists for that function

bundle preference rule:
Use a bundle packet when:
- two or more sibling functions are involved
- the boundary between those functions matters
- lineage, publication, or routing relation matters more than one local field

atlas escalation rule:
Use the atlas when:
- packet choice is unclear
- the question spans bundles
- packet membership or packet relation itself is the subject

hard stop rule:
Do not escalate to cross-family redesign merely because:
- one field name is undecided
- one display field is reordered
- one function needs wording polish

minimum update rule:
- function-local issue => update single-function packet only
- sibling relation issue => update bundle packet only
- packet membership or packet relation issue => update atlas too
