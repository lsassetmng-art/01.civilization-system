# ============================================================
# GIT CREDENTIAL SECURITY
# ============================================================

status: canonical-draft
layer: security
application: App Development Studio

credential_scope:
- repository auth
- push auth
- tag auth
- protected branch controls

principles:
- repository credentials should be handled separately from repository metadata
- push permission should be treated as high-impact capability
