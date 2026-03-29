# ============================================================
# FIELD ACTION PERMISSION MODEL
# ============================================================

status: canonical
layer: model
scope: field-permission-control
component: field-action-permission

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ACTION TYPES
# ============================================================

action_types:
- view
- use
- browse
- build
- edit
- manage
- replace
- remove
- approve
- suspend
- reopen
- assign
- mobilize
- lay_infrastructure
- reconfigure_infrastructure


# ============================================================
# 2. FINAL RULE
# ============================================================

Actions must be evaluated independently.
A user allowed to view
is not automatically allowed
to build, edit, or remove.
