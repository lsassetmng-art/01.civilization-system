# ============================================================
# PROJECT FLOW INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

integration_style:
Shared BusinessOS mediated integration.

inbound_sources:
- ERP project master
- ERP customer master
- ERP budget reference
- ERP actual cost reference
- ERP organization reference

outbound_targets:
- project progress
- milestone result
- selected time actual
- completion status
