# PERSONA ACCESS GRANT RUNTIME

status: canonical
layer: runtime
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Define runtime state transitions for access grants.

## STATES
draft
active
expired
revoked
suspended

## RULE
Usage access is permitted only in active state.
