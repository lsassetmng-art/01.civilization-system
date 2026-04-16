# ============================================================
# ERROR HANDLING AND RESPONSE POLICY
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines response and error handling consistency rules.

response_rules:
- success false must include error_code
- validation failure should identify target field group when possible
- forbidden and not_found should remain distinct
- conflict should be used when state mismatch prevents safe processing
- internal error should not leak unsafe internals to end users

financial_safety_rules:
- ambiguous bank match should not downgrade to silent success
- receipt issuance without confirmed payment should fail explicitly
- ERP reflection on non-eligible invoice should fail explicitly
- authority mismatch should fail explicitly

ui_alignment_rules:
- machine-readable error must map to understandable UI message
- financial blocking errors should remain visible in detail screens where relevant
