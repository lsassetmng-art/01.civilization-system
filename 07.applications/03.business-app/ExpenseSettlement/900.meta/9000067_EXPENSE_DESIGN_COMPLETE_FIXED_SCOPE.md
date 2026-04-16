# ============================================================
# EXPENSE DESIGN COMPLETE FIXED SCOPE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Lists the fixed scope that should be treated as closed
when the design round is considered complete.

fixed_scope_at_design_completion:
- application positioning
- ERP boundary
- top-level requirements
- initial release scope stance
- screen/navigation structure
- payload/model/state/authority meaning
- approval route policy structure
- finance review policy structure
- category policy structure
- evidence policy structure
- template policy structure
- candidate policy structure
- allocation policy structure
- settlement policy structure
- export/reminder/file policy structure
- initial company-scope baseline bundle
- implementation-start slice_01 framing
- restart / handoff / closure document system

fixed_scope_rule:
These areas are closed by default after design completion.
Only contradiction, higher-level rule change, or explicit governance request
should reopen them broadly.

