# ============================================================
# DB PHYSICAL POLICY
# ============================================================

status: canonical-draft
layer: policy
application: App Development Studio

policy_principles:
- physical schema should be implementation-ready
- PK/FK should be explicit
- indexes should reflect real lookup paths
- audit columns should be standardized on major tables
