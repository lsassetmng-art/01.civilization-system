# AIWorkerOS Policy Append: App Read Surface Internal Pipeline

## Status

active-read-only

## Policy

The application may read internal pipeline outputs only.

The application may not use this contract to:

- execute external delivery
- send formal output
- finalize contracts
- apply SQL
- perform destructive operations
- bypass human GO
- bypass Sato DB review for PG development

## Delivery status meaning

DELIVERY_READY_INTERNAL means:

- ready for internal display
- ready for human review
- not externally delivered
- not formally submitted
- not applied to DB
