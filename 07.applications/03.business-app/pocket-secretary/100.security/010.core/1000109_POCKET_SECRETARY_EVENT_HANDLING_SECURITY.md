# ============================================================
# POCKET SECRETARY EVENT HANDLING SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines security constraints for local event handling.

rules:
- local event production must remain bounded
- event processing must not bypass critical action review
- local event success must not be interpreted as external business success
- event-triggered paths still require guard enforcement where applicable
