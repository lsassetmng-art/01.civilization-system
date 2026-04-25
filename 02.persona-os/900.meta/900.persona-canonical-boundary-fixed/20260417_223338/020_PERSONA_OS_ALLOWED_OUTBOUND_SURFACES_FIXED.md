# ============================================================
# PERSONA OS ALLOWED OUTBOUND SURFACES FIXED
# ============================================================

status: active
scope: persona-os-only
prepared_for: Boss
prepared_by: Zero
generated_at: 20260417_223338

purpose:
Fix what PersonaOS may expose to other OS while keeping canonical truth local.

allowed_outbound_surface_types:
- signed snapshot
- snapshot_id
- applied_snapshot_id acknowledgement
- request event contract
- result event contract
- verification/signature result for display/distribution
- formal contract result for rights/entitlement confirmation
- non-canonical derived display payloads built from signed snapshot

other_os_consumer_shape:
- persona_id
- snapshot_id
- applied_snapshot_id
- local_view_config
- app_local_state

not_allowed_as_outbound_canonical_transfer:
- mutable persona core internals
- raw emotion/mood mutable canon
- raw growth mutable canon
- raw memory mutable canon
- raw signature authority internals
- raw revocation authority internals
- raw internal parameters as shared canonical truth

outbound_use_rule:
- public/distribution display should use signed snapshot basis
- mutation intent should travel by request event
- apply result should travel by result event
- rights confirmation should travel by official contract/event result, not by local copied canon

surface_evidence_counts:
- snapshot_hits: 642
- signature_revocation_hits: 3269
- event_hits: 2290
- contract_hits: 61

review_note:
Use the canonical findings TSV and summary sections to identify the concrete PersonaOS design files that already mention these surfaces.
