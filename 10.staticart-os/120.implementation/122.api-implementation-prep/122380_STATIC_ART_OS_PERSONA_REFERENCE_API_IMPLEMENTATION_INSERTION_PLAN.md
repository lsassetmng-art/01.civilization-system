# ============================================================
# STATIC ART OS PERSONA REFERENCE API IMPLEMENTATION INSERTION PLAN
# ============================================================

status: active-implementation-insertion-plan
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define where the Persona reference API exact payload design should be
inserted into actual StaticArtOS API implementation work.

api_insertion_rule:
- Add Persona reference to existing asset detail read-side.
- Add internal reflection endpoints only for authoritative result events.
- Do not add any Persona canonical write endpoint.

implementation_targets:
  public_or_app_read_side:
    - asset detail response
    - creator display projection response
    - exhibition display projection response

  internal_reflection_side:
    - persona snapshot applied result endpoint
    - persona display projection refreshed result endpoint
    - persona display rights verified result endpoint

dto_additions:
- CreatorPersonaReferenceDto
- SignedSnapshotReferenceDto
- PublicDisplayPersonaProjectionDto
- ExhibitionDisplayPersonaProjectionDto
- LocalViewConfigDto

forbidden_dto_or_route_additions:
- PersonaCoreWriteDto
- PersonaStateWriteDto
- PersonaGrowthWriteDto
- PersonaMemoryWriteDto
- PersonaSignatureIssueDto
- PersonaRightsWriteDto

insertion_sequence:
  1:
    - extend asset detail response
  2:
    - add local_view_config patch
  3:
    - add internal reflection endpoints
  4:
    - add idempotency / replay handling

api_integration_judgement:
- API integration is read/reflection oriented only.
- StaticArtOS API must remain incapable of Persona canonical mutation.
