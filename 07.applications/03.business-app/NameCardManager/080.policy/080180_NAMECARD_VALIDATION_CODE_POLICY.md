# ============================================================
# NAMECARD VALIDATION CODE POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: validation_code
owner: Boss
prepared_by: Zero

purpose:
Defines policy constraints for validation code usage.

# ============================================================
# 1. CORE POLICY
# ============================================================

- validation codes represent unmet prerequisites or invalid request shape
- validation should occur before unsafe execution proceeds
- fail-closed behavior may be preceded by validation failure where applicable
- validation meaning must remain distinct from execution failure meaning

# ============================================================
# 2. ERP PUBLICATION POLICY
# ============================================================

ERP publication must validate:
- requester identity
- target record presence
- company context
- publication policy code
- ERP use setting
- protected field eligibility

# ============================================================
# 3. SHARE POLICY
# ============================================================

App-internal share must validate:
- target card existence
- share target existence
- share target eligibility
- requester authority

