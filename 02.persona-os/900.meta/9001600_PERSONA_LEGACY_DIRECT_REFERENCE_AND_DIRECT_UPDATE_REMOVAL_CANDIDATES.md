# PERSONA LEGACY DIRECT REFERENCE AND DIRECT UPDATE REMOVAL CANDIDATES

status: confirmed
system: PersonaOS
layer: meta
confirmed_at: 20260418_072945

purpose:
Lists legacy-pattern candidates that should be removed or redesigned.

removal_candidates:
- any design that lets external OS read personas directly
- any design that lets external OS read persona_state directly
- any design that lets external OS update PersonaOS mutable state directly
- any design that treats snapshot as mutable internal state
- any design that bypasses event intake and validation
- any design that dual-writes mutable truth and release artifact without pipeline control
- any design that uses products, orders, subscriptions, or entitlement tables without canonical or mirror labeling
- any design that leaves growth_core_state and persona_growth_state both acting as truth
- any design that leaves entitlements and user_entitlement both acting as truth
- any design that releases artifacts without signature or revocation handling

priority_fix_order:
1. direct update paths
2. direct read paths
3. dual-canonical table overlaps
4. commerce-boundary ambiguity
5. unsigned external release paths
