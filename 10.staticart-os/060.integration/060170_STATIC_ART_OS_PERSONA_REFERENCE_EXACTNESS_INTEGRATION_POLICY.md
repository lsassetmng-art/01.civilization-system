# ============================================================
# STATIC ART OS PERSONA REFERENCE EXACTNESS INTEGRATION POLICY
# ============================================================

status: active-integration-policy
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Bridge the Persona reference exact design set into the existing
StaticArtOS design layers without breaking current domain ownership.

integration_policy:
- Integrate Persona reference as an additive side-link layer only.
- Do not rewrite asset/business/governance core into Persona-centric design.
- Use signed snapshot reference as the only display identity basis.
- Keep all Persona authoritative apply logic outside StaticArtOS.
- Keep StaticArtOS as consumer/reflection side only.

integration_targets:
- DB layer:
  - add reference/history/projection tables only when Persona-linked display is needed
- API layer:
  - add read-side response fields and internal reflection endpoints only
- UI layer:
  - add signed-snapshot-based display surfaces and presentation-only config
- Test layer:
  - add no-duplication / no-direct-mutation / signed-snapshot coverage
- Roadmap layer:
  - keep Persona work after base asset/publish backbone stability

do_not_integrate:
- persona mutable canonical state
- persona internal memory/growth/emotion truth
- persona signature canonical issue/revoke authority
- persona rights canonical authority
- local authoritative fallback truth

final_policy_judgement:
- Exactness integration is additive.
- Exactness integration is boundary-preserving.
- Exactness integration must not change StaticArtOS canonical ownership.
