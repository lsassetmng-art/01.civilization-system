# PERSONA PUBLISH LIST TIER B RELEASED SURFACE AND FILTER SPEC

status: tier-b-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_182500

purpose:
Fixes exact released-surface semantics and filtering rules for asset-publish-list.

released_surface_definition:
A released surface is output that has successfully passed publish_apply and is eligible for listing under policy.

listing_inclusion_rules:
- include only publish_apply_succeeded outputs
- exclude pending publish requests
- exclude rejected publish requests
- exclude returned_for_revision states
- exclude unreleased candidate assets

listing_filter_dimensions:
- scope
- release_type
- release_visibility
- lineage_reference when policy allows
- pagination reference

listing_rules:
- listing surface is downstream from release application
- listing must not expose internal approval workflow history except allowed status surface
- listing must not expose mutable work-state or candidate-only state as released

