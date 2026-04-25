# PERSONA ASSET PUBLISH LIST FINAL DISCLOSURE AND FILTER SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_212312

purpose:
Condenses disclosure rules and filter semantics for asset-publish-list.

allowed_public_safe_disclosure:
- released_asset_reference
- release_status
- release_scope
- listed_at
- display_title when policy-safe
- display_type when policy-safe
- thumbnail_reference when policy-safe
- visibility_label when policy-safe
- release_lineage_reference only when trace-safe and policy-safe

forbidden_disclosure:
- internal approval workflow detail
- mutable work-state detail
- candidate-only detail
- hidden moderation notes
- private storage path
- private signing material
- internal policy engine detail beyond public-safe labels

filter_rules:
- filters may reduce released results only
- filters must not surface non-released objects indirectly
- pagination must remain consistent with visibility policy
- list scope must remain stronger than presentation preference

hard_rules:
- filter narrowing is not release authorization
- display field presence is not release-state proof by itself
- public-safe listing must remain presentation-safe and release-safe together

