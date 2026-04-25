# CasualChatWorker API Surface Draft

status: draft
phase: Phase A skeleton

## API groups

- GET AI worker list
- GET AI worker profile
- GET pricing catalog
- POST contract draft
- POST contract confirm
- GET active session
- POST chat message
- POST session end
- GET usage history
- GET safety redirect reason

## Request principles

- API must not allow external execution.
- API must not allow PG apply.
- API must not allow destructive action.
- API must not mutate aiworker catalog.
- API must not mutate cx22073jw material.
- Contract mutation is business only.

## Response principles

- Include safety boundary.
- Include contract duration.
- Include price.
- Include remaining time.
- Include AI worker type.
- Include whether Lover type is pseudo-romantic only.
