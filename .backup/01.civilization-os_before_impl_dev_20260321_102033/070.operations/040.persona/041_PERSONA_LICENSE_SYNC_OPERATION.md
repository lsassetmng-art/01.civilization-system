# PERSONA LICENSE SYNC OPERATION

status: canonical
layer: operations
domain: persona
owner: Boss
prepared_by: Zero

## PURPOSE
Synchronize PersonaOS license state into CivilizationOS reference models.

## PROCEDURE
- identify changed license records from PersonaOS
- update PERSONA_LICENSE_REF_MODEL
- verify effective period and revocation state
- record sync timestamp
- notify dependent product/purchase enforcement if state changed
