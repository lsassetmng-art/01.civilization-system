# ============================================================
# BUSINESS CORE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for business core lifecycle.

policy_rules:
- tenant, workspace, org, role, workflow, and approval basis must remain explicit
- suspended, rejected, or archived business states must remain explicit
- business traceability must remain preserved
- business core truth must remain canonical
