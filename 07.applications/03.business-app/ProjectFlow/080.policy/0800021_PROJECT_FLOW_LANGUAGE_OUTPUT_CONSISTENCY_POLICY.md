# ============================================================
# PROJECT FLOW LANGUAGE OUTPUT CONSISTENCY POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines consistency policy for multilingual outputs.

consistency_rules:
- one output should use one selected locale consistently
- section headers and export headers should align to the same selected locale
- fallback wording should be minimized in customer-facing outputs
- customer-facing review should check language consistency before external use
