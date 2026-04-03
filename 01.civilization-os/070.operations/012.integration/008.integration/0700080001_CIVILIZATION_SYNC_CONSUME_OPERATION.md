# CIVILIZATION SYNC CONSUME OPERATION

status: canonical
layer: operations
domain: integration
owner: Boss
prepared_by: Zero

## PROCEDURE
- read pending inbox events
- validate Persona sync payload
- update mirrored release, license, and access grant refs
- recalculate dependent product and usage availability
- record consume result
