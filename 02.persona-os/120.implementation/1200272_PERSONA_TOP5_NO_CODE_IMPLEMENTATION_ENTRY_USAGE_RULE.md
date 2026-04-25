# PERSONA TOP5 NO CODE IMPLEMENTATION ENTRY USAGE RULE

status: no-code-entry-atlas
system: PersonaOS
layer: implementation
confirmed_at: 20260419_112921

purpose:
Defines how the top five no-code implementation-entry packets may be used.

allowed_now:
- packet-local payload freeze refinement
- packet-local terminal refinement
- packet-local dependency clarification
- packet-local stage ordering clarification
- packet-local testpoint clarification
- packet-local fallback and rollback note refinement
- linked packet reading for context only

not_allowed_now:
- SQL execution
- Edge Function coding
- app coding
- deployment planning as executable steps
- secret creation
- environment mutation
- multi-packet scope expansion without contradiction

top5_usage_rule:
Choose one packet only.
Read linked packets as references only.
Do not let reference reading become multi-packet redesign.

hard_stop_rule:
If a discussion begins changing packet boundaries across multiple top5 packets,
stop and reopen through maintenance workflow.
