# PERSONA EXTERNAL RELEASE RUNTIME

status: canonical
layer: runtime
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Define runtime behavior for issuing and revoking external release units.

## RUNTIME STEPS
- validate source snapshot
- validate external use eligibility
- generate release state
- apply signature state
- publish release event
- support revoke transition
