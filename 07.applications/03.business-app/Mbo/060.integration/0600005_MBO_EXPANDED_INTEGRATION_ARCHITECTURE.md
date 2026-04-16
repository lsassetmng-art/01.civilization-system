# ============================================================
# MBO EXPANDED INTEGRATION ARCHITECTURE
# PRIORITY A + B FIXED
# ============================================================

status: canonical
application: Mbo
layer: integration
owner: Boss
prepared_by: Zero

integration_targets:
- task-oriented application
- project management application
- export destination
- reminder delivery channel
- ERP

integration_capabilities:
- task linkage per objective
- project linkage per objective
- evidence reference attachment
- aggregation export job execution
- reminder batch sending
- ERP resend control

integration_notes:
- linked task and project records remain external authorities
- Mbo stores only linkage and usage meaning
- export generation must preserve multilingual handling where applicable
- reminder delivery should be reusable across applications
- ERP resend must keep audit history

