# ============================================================
# AUTHORIZATION SECURITY
# ============================================================

status: canonical-draft
layer: security
application: App Development Studio

authorization_scope:
- request creation
- rule change
- proposal approval
- apply execution
- SQL execution
- Git push
- build execution
- bug and version management updates

principles:
- authorization should be explicit
- high-impact actions should be distinguishable
- shared-scope actions should be more controlled than local-scope actions
