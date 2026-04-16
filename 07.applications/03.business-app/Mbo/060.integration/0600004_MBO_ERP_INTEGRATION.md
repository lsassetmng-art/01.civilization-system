# ============================================================
# MBO ERP INTEGRATION
# ============================================================

status: canonical
application: Mbo
layer: integration
owner: Boss
prepared_by: Zero

integration_policy:
ERP is the external system of record for approved
business-side records only.

Mbo_side_responsibility:
- prepare approved evaluation record
- build outbound payload
- keep transmission history

ERP_side_responsibility:
- receive approved payload
- store authoritative business record
- manage downstream business usage

send_conditions:
- objective is finalized
- evaluation is confirmed
- sender has permission
- payload passes validation
