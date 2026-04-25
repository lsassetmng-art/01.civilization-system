# ============================================================
# POCKETSECRETARY PLANNING STOP RULE NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: PocketSecretary
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: planning-stop-rule-note

purpose:
Defines the stop rule for the PocketSecretary planning layer so that
the project does not continue adding design documents without need.

default_stop_rule:
- stop adding planning artifacts once implementation-ready status,
  execution entry protocol, and transition handoff are all present

allowed_reopen_cases:
- contradiction between frozen DTOs and row-family direction
- contradiction between slice command packs and field-fill plans
- material mismatch with existing physical schema core
- explicit request to start runtime generation
- explicit request to execute SQL after review
- failure recovery after a broken or invalid generated artifact

not_enough_reason_to_reopen:
- preference for more wording
- preference for additional micro-notes
- desire to restate already frozen boundaries
- desire to re-explain the same slice order

default_action_after_stop_rule:
- either begin actual generation using the execution entry protocol
- or move to the next BusinessOS application

closure_statement:
- PocketSecretary planning should now be considered complete by default.
