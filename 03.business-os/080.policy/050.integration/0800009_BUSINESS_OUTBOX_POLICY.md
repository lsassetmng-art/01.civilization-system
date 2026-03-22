# BUSINESS OUTBOX POLICY

status: canonical
layer: policy
domain: integration
owner: Boss
prepared_by: Zero

## RULES
- BusinessOS must emit Persona-targeted requests only through outbox
- direct mutation of Persona growth truth is prohibited
- outbound requests must be idempotent and auditable
