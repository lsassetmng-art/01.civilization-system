# ============================================================
# PERSONA OS CANONICAL OWNERSHIP FIXED
# ============================================================

status: active
scope: persona-os-only
prepared_for: Boss
prepared_by: Zero
generated_at: 20260417_223338

fixed_canonical_ownership:
- PersonaOS owns persona mutable canonical truth.
- PersonaOS owns persona core, mutable state, growth, memory,
  visual generation basis, signature, revocation, snapshot issuance,
  and persona-side rights candidate / rights-side canonical coordination.
- Non-PersonaOS domains must not duplicate these as canonical truth.

canonical_domains_confirmed:
- persona core
- persona mutable state
- persona growth
- persona memory
- persona visual generation / appearance-side basis
- persona signature / signed snapshot / revocation
- persona snapshot issuance and snapshot truth
- persona event apply boundary
- persona-side contract boundary

other_os_boundary_rule:
- Other OS may consume only dependent outputs.
- Other OS may keep:
  - persona_id
  - snapshot_id
  - applied_snapshot_id
  - local_view_config
  - app_local_state
- Other OS must not hold persona core/state/growth/memory/signature/revocation canon.

mutation_rule:
- canonical mutation path is:
  request event -> PersonaOS apply -> result event

counts_reference:
- persona_core_hits: 1738
- persona_state_hits: 27723
- persona_growth_hits: 2156
- persona_memory_hits: 1271
- persona_visual_hits: 321
- persona_signature_revocation_hits: 3269
- persona_snapshot_hits: 642
- persona_rights_hits: 20465
- persona_event_hits: 2290
- persona_contract_hits: 61

note:
Use the inventory summary as the evidence list for where these responsibilities already appear in PersonaOS documents.
