# ============================================================
# PERSONA BUILDER STATE TRANSITION TABLE
# ============================================================

status: canonical
scope: persona.builder.state.transition.table
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the official state transitions of Persona Builder.


# STATES

- draft
- editing
- validated
- validation_failed
- approval_requested
- approved
- approval_rejected
- returned_for_rework
- publish_prepared
- archived


# STATE DEFINITIONS

draft:
  initial creation state

editing:
  active editing state

validated:
  latest validation passed with no blocking issue

validation_failed:
  latest validation failed with blocking issue

approval_requested:
  waiting for reviewer decision

approved:
  reviewer approval granted

approval_rejected:
  reviewer rejected approval request

returned_for_rework:
  reviewer returned item for correction

publish_prepared:
  release handoff candidate is complete

archived:
  non-active retained state


# TRANSITIONS

draft -> editing
editing -> validated
editing -> validation_failed
validated -> approval_requested
approval_requested -> approved
approval_requested -> approval_rejected
approval_requested -> returned_for_rework
returned_for_rework -> editing
validation_failed -> editing
approval_rejected -> editing
approved -> publish_prepared
approved -> editing
publish_prepared -> editing
* -> archived


# MATERIAL CHANGE RULE

Material change examples include:

- major identity change
- personality meaning change
- qualification major change
- skill major change
- public/release meaning change
- visual major change
- voice major change

If material change occurs after approval:

- validation must rerun
- approval may be invalidated
- publish_prepared may be invalidated


# GOVERNANCE RULE

No publish_prepared state may be entered
without prior approved state.

No approved state may be entered
without approval_requested.

No approval_requested state may be entered
while blocking validation issues remain.


# FINAL DEFINITION

Persona Builder must enforce explicit transitions,
revalidation on material change,
and strict separation between approval and release readiness.
