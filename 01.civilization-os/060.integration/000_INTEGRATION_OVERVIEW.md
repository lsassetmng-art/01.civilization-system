# INTEGRATION OVERVIEW

status: canonical
layer: integration
owner: Boss
prepared_by: Zero

## PURPOSE
Define the integration responsibility of Civilization OS.

## RULE
Integration is responsible only for:
- domain-to-domain connection
- adapter contracts
- boundary mapping
- dependency direction
- payload translation

## NOT IN SCOPE
- business flow
- runtime lifecycle
- user interaction sequence
- policy text itself

## DEPENDENCY RULE
flow -> integration is allowed for reference
integration -> flow is not canonical ownership
