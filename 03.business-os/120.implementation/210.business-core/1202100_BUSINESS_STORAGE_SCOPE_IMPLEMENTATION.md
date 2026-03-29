# ============================================================
# BUSINESS STORAGE SCOPE IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define storage-scope implementation guidance for BusinessOS.

BusinessOS is primarily user-scoped.
Storage scope must therefore match user/workspace boundary,
not company boundary by default.

storage_rule:
- local BusinessOS truth is stored by user/workspace/app scope
- company context is attached only for ERP-send-capable outbound flows
- company-scoped payload storage must remain explicitly marked as ERP-send context
- no default company-scope storage assumption is allowed

final_rule:
BusinessOS storage scope is user/workspace-first.
