# PERSONA FIRST WAVE BOUNDARY ENFORCEMENT IMPLEMENTATION RULE

status: confirmed
system: PersonaOS
layer: implementation
confirmed_at: 20260418_073938

purpose:
Applies the Persona inventory boundary realignment to first-wave implementation targets.

first_wave_targets:
- edge_apply
- state_apply
- builder_api
- builder_storage

first_wave_boundary_rules:
- edge_apply is intake only and not external direct truth access
- state_apply is the only canonical truth mutation boundary
- builder_api must converge on snapshot issue for external release paths
- builder_storage must preserve mutable work-state vs immutable release-artifact separation

required_checks_before_code:
- no direct external mutable truth access path remains
- no mirror or cache table is treated as canonical truth
- no draft identity is reused as release artifact identity
- no release path bypasses snapshot, signature, or revocation design

handoff_rule:
If any first-wave implementation plan contradicts these rules, stop and revise PersonaOS design before coding.

