# WorkerRentalCore civilization_id RLS Design

## Status
- status: proposal-only
- apply_status: not_applied

## Session context
Use:
- app.current_civilization_id

## Helper function candidates
- business.fn_business_current_civilization_id()
- business.fn_business_require_civilization_context(uuid, text)

## Policy model
For user-owned rental tables:

SELECT:
- owner_civilization_id::text = current_setting('app.current_civilization_id', true)

INSERT:
- owner_civilization_id::text = current_setting('app.current_civilization_id', true)

UPDATE:
- USING owner_civilization_id matches context
- WITH CHECK owner_civilization_id matches context

DELETE:
- no delete policy by default

## Child tables
For child/event/log tables:
- preferred: owner_civilization_id copied from parent
- optional: parent join policy if duplication is avoided

This project prefers duplication for simpler RLS and audit readability.
