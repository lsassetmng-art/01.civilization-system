# ============================================================
# APPLICATION SCHEMA USAGE RULE
# ============================================================

status: canonical
layer: applications
scope: civilization-system.applications

owner: Boss
prepared_by: Zero


# PURPOSE

Define how applications declare
schema and OS usage.


# RULE

Each application must explicitly declare:

used_os
used_schema
integration_targets


# EXAMPLE

used_os:
- persona-os
- business-os

used_schema:
- personaos
- business

integration_targets:
- erp_bridge
- local_storage

