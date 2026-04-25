# PERSONA DIRECT READ DIRECT UPDATE REMOVAL WORKLIST

status: confirmed
system: PersonaOS
layer: meta
confirmed_at: 20260418_073938

purpose:
Turns legacy-removal candidates into an execution-oriented worklist for PersonaOS.

work_items:
1. remove any design path that lets external OS read personas directly
2. remove any design path that lets external OS read persona_state directly
3. remove any design path that lets external OS update PersonaOS mutable state directly
4. remove any design path that exports mutable draft or work-state as if it were release truth
5. remove any design path that bypasses event intake and validation
6. remove any design path that bypasses snapshot issue before external consumption
7. remove any design path that uses unsigned release artifacts
8. relabel all commerce-related tables in PersonaOS as mirror unless canonical ownership is explicitly reassigned
9. eliminate dual-canonical operation in growth and entitlement areas

priority_order:
- direct update removal
- direct read removal
- dual-canonical consolidation
- release-surface restriction
- mirror labeling cleanup

