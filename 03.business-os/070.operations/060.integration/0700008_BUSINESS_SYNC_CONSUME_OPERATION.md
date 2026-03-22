# BUSINESS SYNC CONSUME OPERATION

status: canonical
layer: operations
domain: integration
owner: Boss
prepared_by: Zero

## PROCEDURE
- read pending inbox events
- validate payload contract
- update mirrored Persona reference records
- recalculate affected business bindings
- record success or retry state
