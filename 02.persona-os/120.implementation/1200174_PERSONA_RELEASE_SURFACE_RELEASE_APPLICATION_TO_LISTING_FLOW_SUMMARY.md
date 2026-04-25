# PERSONA RELEASE SURFACE RELEASE APPLICATION TO LISTING FLOW SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_062714

purpose:
Condenses the exact relation between publish_apply and asset-publish-list.

flow_backbone:
approved_input
-> publish_apply
-> released_output
-> asset-publish-list

flow_rules:
- only publish_apply_succeeded outputs may feed released listing
- publish_apply_rejected outputs may not feed released listing
- publish_apply_failed outputs may not feed released listing
- pending, rejected, returned_for_revision, and candidate-only states may not feed released listing
- released listing must remain attributable to released_asset_reference

role_split:
- publish_apply = creates released output from approved input
- asset-publish-list = exposes released output as public-safe listing surface

hard_rules:
- listing is not proof of approval workflow detail
- listing is downstream from release application only
- release application is not listing
- listing filters may narrow released results only and must not surface non-released state indirectly
