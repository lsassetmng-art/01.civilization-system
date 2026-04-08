# ============================================================
# LANGUAGE RESOLUTION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines how UI and artifact languages are resolved.

runtime_steps:
1. inspect language profile
2. resolve UI language
3. resolve artifact-specific languages
4. resolve fallback language
5. attach localized output settings
