# Civilization Deployment Canonical Index

status: canonical
system: civilization
layer: deployment
domain: shared-web-runtime
owner: CIVILIZATION_WEB_DEPLOYMENT

## Purpose

This root owns deployment contracts that sit outside individual
OS application ownership and outside Portal UI ownership.

It exists for shared runtime boundaries that dispatch one public
Civilization origin to independently owned Web applications.

## Ownership boundary

This root may own:

- same-origin public path dispatch
- shared Web gateway contracts
- upstream runtime routing contracts
- deployment-only environment configuration contracts
- routing failure and rollback contracts

This root must not own:

- Persona canonical truth
- OS business logic
- Portal presentation
- CivilizationOS authentication semantics
- CommonOS UI components
- application-local route implementation
- database state

## Canonical files

- 010_CIVILIZATION_WEB_GATEWAY_EXACT_DESIGN.md
  - shared same-origin Web gateway contract
  - PersonaOS /persona-menu/** is the first governed consumer

## Implementation mapping

Canonical implementation root:

03.civilization-development/00.civilization-deployment/

Civilization Web Gateway implementation root:

03.civilization-development/00.civilization-deployment/civilization-web-gateway/

Creation of the implementation root requires a separate explicit GO.

## Current state

- design root: defined
- gateway implementation: not yet created
- public traffic switch: not authorized
- Portal Persona route deletion: not authorized
