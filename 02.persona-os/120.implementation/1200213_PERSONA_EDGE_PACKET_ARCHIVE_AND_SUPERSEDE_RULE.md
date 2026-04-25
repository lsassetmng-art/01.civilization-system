# PERSONA EDGE PACKET ARCHIVE AND SUPERSEDE RULE

status: maintenance-ops-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_071627

purpose:
Defines how packet replacements and superseded docs are handled.

archive_rules:
- old packet docs may remain for traceability
- superseded packet docs must not remain ambiguous as current baseline
- marker and handoff docs must reflect the active baseline
- archive is for traceability, not for simultaneous truth

supersede_workflow:
1. create or update the active packet
2. record changelog entry
3. update marker if baseline meaning changed
4. treat previous baseline as superseded
5. do not refer to superseded packet as active in routing or registry docs

naming_rule:
- current active packet remains the reference target
- superseded packet is historical only
- atlas and registry should point only to active packets

hard_rule:
Never allow two competing active packets for the same function or bundle without explicit contradiction resolution.
