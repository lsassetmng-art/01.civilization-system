# ============================================================
# SHIFT MANAGER ERP INTEGRATION
# ============================================================

status: canonical
layer: integration
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

purpose:
Defines ERP linkage boundary for ShiftManager.

erp_inputs:
- employee reference
- department reference
- office/store reference
- company reference

erp_outputs:
- published shift schedule
- assignment details
- publication metadata
- export result metadata

integration_principles:
- ERP is enterprise formal linkage target
- ShiftManager keeps application-level creation and sharing logic
- ERP export shall use published data only
- master mismatches must be observable
