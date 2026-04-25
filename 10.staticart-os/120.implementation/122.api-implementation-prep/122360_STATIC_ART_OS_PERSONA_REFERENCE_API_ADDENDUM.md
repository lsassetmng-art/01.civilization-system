# ============================================================
# STATIC ART OS PERSONA REFERENCE API ADDENDUM
# ============================================================

status: active-design-note
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define the API-layer addendum for Persona reference usage inside
StaticArtOS under the non-duplication rule.

api_policy:
- API may expose persona reference summaries.
- API may reflect official snapshot result events.
- API must not mutate Persona canonical state directly.

allowed_read_side_additions:
  asset_detail_response:
    may_add:
      - creator_persona_ref
      - applied_signed_snapshot_ref
      - public_display_persona_projection
      - exhibition_display_persona_projection
    must_not_add:
      - mutable_emotion
      - mutable_growth
      - mutable_memory
      - signature_truth
      - rights_truth

allowed_internal_reflection_additions:
  internal_result_event_reflection:
    may_add:
      - apply official signed snapshot result to local reference tables
      - apply official projection-safe display result
    must_not_add:
      - direct Persona canonical mutation
      - local authoritative signature issuance

recommended_dtos:
  - CreatorPersonaReferenceDto
  - SignedSnapshotReferenceDto
  - PublicDisplayPersonaProjectionDto
  - ExhibitionDisplayPersonaProjectionDto
  - LocalViewConfigDto

forbidden_dtos:
  - PersonaCoreWriteDto
  - PersonaStateWriteDto
  - PersonaGrowthWriteDto
  - PersonaMemoryWriteDto
  - PersonaSignatureIssueDto
  - PersonaRightsWriteDto

service_additions:
  read_side:
    - read persona reference summary
    - read signed snapshot reference
    - read display-safe projection
  reflection_side:
    - reflect official result event
    - update local projection only
  forbidden:
    - direct Persona mutable write
    - local canonical persona recomputation
    - direct rights-truth rewrite

error_policy:
- direct mutation attempts must be rejected
- local reference expiration may return display-safe fallback
- missing signed snapshot should not auto-create local persona truth
