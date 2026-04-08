# ============================================================
# CONNECTION SAFETY POLICY
# ============================================================

status: canonical-draft
layer: policy
application: App Development Studio

connection_policy_scope:
- environment suitability
- read/write permission
- DDL allowance
- production allowance
- purpose suitability

policy_principles:
- production-disallowed profiles must not be selected for production actions
- read-only profiles must not be used for write actions
- destructive SQL should require stricter connection validation
