# PERSONA ASSET PUBLISH LIST FINAL BOUNDARY AND RELEASE SOURCE SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_212312

purpose:
Condenses boundary ownership and release-source rules for asset-publish-list.

boundary_ownership_summary:
- asset-publish-list owns released listing surface only
- asset-publish-list does not own approval decision
- asset-publish-list does not own publish request creation
- asset-publish-list does not own release application
- asset-publish-list is not mutable truth owner by label alone

release_source_rules:
- only publish_apply_succeeded outputs may feed asset-publish-list
- publish_apply_rejected outputs may not feed asset-publish-list
- publish_apply_failed outputs may not feed asset-publish-list
- pending, rejected, returned_for_revision, and candidate-only states may not feed asset-publish-list
- listed outputs must remain attributable to released_asset_reference

hard_rules:
- asset-publish-list is not publish_apply
- asset-publish-list is not approval-action
- asset-publish-list must not infer released state from candidate lineage alone
- listing remains downstream from release application success only

