# ============================================================
# NAMECARD MIGRATION WIZARD FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines the user flow for migration wizard.

flow:
- user selects source type
- user uploads import file
- app auto-detects mapping
- app runs diagnostics
- app previews import result
- user reviews issues and warnings
- user executes import
- app shows migration summary and follow-up review entry points

