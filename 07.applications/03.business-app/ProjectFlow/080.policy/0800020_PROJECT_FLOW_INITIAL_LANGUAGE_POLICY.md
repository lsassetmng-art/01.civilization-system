# ============================================================
# PROJECT FLOW INITIAL LANGUAGE POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow initial language support is fixed to Japanese and English.

policy_targets:
- internal UI
- customer-facing outputs
- export headers
- one-page summary

policy_rules:
- japanese and english are required in initial scope
- later languages may be added without breaking the initial key model
- mixed-language output should be avoided unless explicitly reviewed
