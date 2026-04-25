# PERSONA EDGE IMPLEMENTATION ENTRY TOP5 PROMOTION ORDER AND SCOPE RULE

status: implementation-entry-candidate-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_093234

purpose:
Defines the recommended order and scope control for promoting the top five packets.

recommended_promotion_order:
1. persona-state-apply
2. snapshot-issue
3. snapshot-verify
4. publish_apply
5. civilization-event-dispatcher

order_reasoning:
- persona-state-apply is closest to runtime truth handoff
- snapshot-issue is the immutable release pivot
- snapshot-verify is the public trust interpretation pivot
- publish_apply is the release application pivot
- civilization-event-dispatcher is the routing and exhaustion pivot

scope_rules:
- promote one packet at a time
- do not promote multiple top-5 packets together by default
- linked packet references may be read, but only one packet should receive gate status change per review cycle
- if a contradiction is discovered during promotion, stop and resolve the contradiction before promoting the next packet

promotion_rule:
Top-5 ordering is a default recommendation, not an absolute execution order.
A different packet may be chosen first if project priority demands it.
