# ============================================================
# BUSINESS LEGAL SUPPORT BRIDGE TRIGGER FLOW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 020.detail
owner: Boss
prepared_by: Zero

bridge_to_businessos_when:
  - company-wide formal review becomes necessary
  - approval workflow is required
  - multiple internal stakeholders must collaborate
  - official company repository is needed
  - continuous controlled operation is required

do_not_bridge_automatically:
  - this app remains owner-driven
  - bridge is explicit only
  - source data stays in life scope until user chooses bridge action

do_not_bridge_to_erp_directly:
  - ERP is not the direct next step from this app
  - official enterprise handling belongs outside this app
