# ============================================================
# POCKET SECRETARY REQUEST RESPONSE BOUNDARY
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the bounded contract surface between PocketSecretary
and external systems.

requirements:
- outbound requests must have explicit target and purpose
- inbound responses must have explicit interpretation rules
- pending, confirmed, failed, and conflicted states must not be collapsed
- transport success must not be confused with business success

rules:
- a successful send does not equal confirmed acceptance
- a local draft does not equal external submission
- a local rendered state does not equal upstream authority state
