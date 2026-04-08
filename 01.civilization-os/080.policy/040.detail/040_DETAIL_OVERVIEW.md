# ============================================================
# 040 DETAIL OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: detail
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the policy overview of the detail domain.

summary:
The detail policy layer defines what is allowed,
what is restricted, what must be masked,
what must be retained, and what must be blocked
when detail is created, published, revised, exported, and archived.

policy_intent:
Detail often carries nuanced and potentially sensitive semantics.
Policy exists to define disclosure classes, retention classes,
revision authority, historical preservation, and export boundaries.

scope:
- disclosure policy
- masking policy
- retention policy
- revision policy
- export policy
- archival policy
- historical access policy

policy_rules:
- Every detail record must declare visibility scope.
- Every detail record must declare lifecycle state.
- Restricted detail must be masked or blocked outside authority.
- Historical detail must remain distinguishable from current detail.
- Sealed detail requires explicit high-trust authority.
- Canonical overwrite without authorized path is prohibited.
- Retention and disclosure must remain independently controllable.

required_behavior:
- Support disclosure control.
- Support retention control.
- Support export control.
- Support revision control.
- Support historical access control.
