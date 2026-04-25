# ============================================================
# PERSONA OS IMPLEMENTATION OVERVIEW
# ============================================================

status: implementation-ready-followup
system: PersonaOS
layer: implementation
canonical: true

purpose:
This document aligns the implementation layer with the exact
implementation-ready contracts already reflected into the core files.

implementation_truth:
- Exact request/response payloads are defined in implementation specs.
- State transition authority belongs to truth/apply flow.
- Builder is non-authoritative until publish is accepted.
- Runtime serves released or approved snapshots only.
- External release, package, license, access grant, and transfer are controlled contracts.

implementation_ready_scope:
- apply inbox, validation, canonical apply, apply result feedback
- builder draft, validation, approval, publish
- visual runtime, runtime session, snapshot issue
- package, external release, license, access grant, transfer
- outbox, retry, dead-letter, observability, acceptance

primary_exact_files:
- 1200002_PERSONA_EDGE_FUNCTION_SPEC.md
- 1200003_PERSONA_STATE_APPLY_SPEC.md
- 1200004_PERSONA_VISUAL_COMPOSE_SPEC.md
- 1200005_PERSONA_SNAPSHOT_ISSUE_SPEC.md
- 060.builder/1200600002_PERSONA_BUILDER_DRAFT_IMPLEMENTATION.md
- 070.visual/1200700002_PERSONA_VISUAL_RUNTIME_IMPLEMENTATION.md
- 080.runtime_hosting/1200800002_PERSONA_RUNTIME_SESSION_IMPLEMENTATION.md
- 050.external/1200400001_PERSONA_EXTERNAL_RELEASE_SPEC.md
- 050.external/1200400002_PERSONA_LICENSE_SPEC.md
- 050.external/1200400003_PERSONA_ACCESS_GRANT_SPEC.md
- 050.external/1200400004_PERSONA_TRANSFER_SPEC.md
- 050.external/1200400005_PERSONA_PACKAGE_SPEC.md
- 120.external_rights/1201200002_PERSONA_EXTERNAL_RELEASE_IMPLEMENTATION.md
- 130.builder/1200700001_PERSONA_BUILDER_IMPLEMENTATION.md
- 130.builder/1200700002_PERSONA_BUILDER_API_SPEC.md
- 130.builder/1200700003_PERSONA_BUILDER_STORAGE_MAPPING.md

implementation_rule:
No new implementation work may bypass these exact contracts.
When a contradiction is found, the exact implementation-ready files
take precedence over pre-exact narrative descriptions.

done_definition:
- endpoint contract fixed
- stateflow fixed
- persistence mapping fixed
- retry/dead-letter fixed
- release gate fixed
- acceptance path fixed
