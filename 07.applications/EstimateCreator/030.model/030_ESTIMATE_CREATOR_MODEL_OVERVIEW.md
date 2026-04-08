# ============================================================
# ESTIMATE CREATOR MODEL OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. MODEL GROUPS
# ============================================================

EstimateCreator canonical model is grouped into:

- estimate core
- memo
- sharing
- sync
- ERP publication
- audit/history
- inventory reference
- premium feature

# ============================================================
# 2. PRIMARY MODEL RULE
# ============================================================

Estimate record is the central business object.

Other objects must attach to estimate-centric or app-scoped workflows
without breaking auditability and authority boundaries.

# ============================================================
# 3. MODEL TRUTH POSITION
# ============================================================

EstimateCreator models preserve BusinessOS-side operational truth
for drafting, sharing state, local workflow, and publication preparation.

They do not replace ERP final authoritative truth.


# ============================================================
# 4. LAUNCH CONTEXT MODEL GROUP
# ============================================================

EstimateCreator model also includes launch-context support objects
for dual-entry operation.

Representative launch-related objects include:

- estimate_launch_context
- estimate_deeplink_context
- estimate_source_app_record

These objects describe invocation context,
not business authority by themselves.

