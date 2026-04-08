# ============================================================
# BASIC / PRO FEATURE POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines policy boundary between Basic and Pro feature sets.

basic_allowed:
- local forecast drafting
- general signal usage
- action idea drafting
- proposal draft generation
- simple profit preview
- local save

basic_disallowed:
- ERP data usage
- enterprise approval flow
- governed enterprise submission
- enterprise synchronization

pro_allowed:
- all Basic features
- ERP reference usage
- enterprise synchronization
- approval routing
- governed submission
- history / audit-capable enterprise-linked operation
