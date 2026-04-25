# PERSONA PUBLISH APPLY FINAL RELEASE TO LISTING RELATION SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_211155

purpose:
Condenses the exact relation between publish_apply and asset-publish-list.

role_split:
- publish_apply = release application boundary
- asset-publish-list = released listing surface

relation_rules:
- only publish_apply_succeeded outputs may feed released listing
- publish_apply_rejected outputs may not feed released listing
- publish_apply_failed outputs may not feed released listing
- pending or candidate-only state may not feed released listing
- listing must remain downstream from release application success

public_safe_listing_relation:
- released_asset_reference from successful publish_apply may become listing input
- listing surface may expose only public-safe release fields
- listing must not expose internal approval workflow detail
- listing must not expose mutable work-state or candidate-only state as released

hard_rules:
- publish_apply is not listing
- listing is not approval decision
- listing is not release application

