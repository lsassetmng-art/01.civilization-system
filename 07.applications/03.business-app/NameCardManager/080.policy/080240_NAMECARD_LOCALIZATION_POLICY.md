# ============================================================
# NAMECARD LOCALIZATION POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines localization and multilingual handling policy.

policy_rules:
- UI strings must be key-managed
- user-entered business card data must preserve original value
- translated display is assistive and non-canonical
- multilingual search support may use normalized/search-assist values
- locale-aware output should remain reviewable
- ERP publication output must not silently misrepresent original meaning

initial_scope:
- Japanese UI
- English UI

future_scope:
- multilingual preview support
- multilingual meeting prep output
- multilingual suggestion output
- multilingual publication summary support

