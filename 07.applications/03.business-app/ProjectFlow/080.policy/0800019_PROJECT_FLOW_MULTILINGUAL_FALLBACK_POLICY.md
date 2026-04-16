# ============================================================
# PROJECT FLOW MULTILINGUAL FALLBACK POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines fallback behavior for multilingual operation.

fallback_policy:
- selected language is primary
- default fallback language must exist
- missing localized wording must not silently break output generation

review_rules:
- missing keys should remain detectable in review/testing
- customer-facing output should be checked for fallback leakage before external use
