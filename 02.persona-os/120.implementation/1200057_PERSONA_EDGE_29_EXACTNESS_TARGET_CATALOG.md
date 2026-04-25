# PERSONA EDGE 29 EXACTNESS TARGET CATALOG

status: design-deepening-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_172646

catalog_rule:
Each function must eventually receive exactness coverage across six dimensions:
1. request payload
2. response payload
3. failure family
4. dependency touchpoints
5. boundary and ownership rule
6. retry or dead-path semantics where relevant

tier_a_exactness_targets:
- persona-state-apply
  - exactify: event envelope, control gate, idempotency, registry, truth handoff, processed marking, snapshot trigger, audit
- snapshot-issue
  - exactify: release-safe source input, artifact issue result, fail-closed issuance policy
- snapshot-verify
  - exactify: verification statuses and malformed or revoked differentiation
- snapshot-revoke
  - exactify: revoke request, revoke authority, revoke persistence
- revocation-list
  - exactify: publication shape and refresh behavior
- sign-event
  - exactify: sign subject, sign context, result shape
- keygen-once
  - exactify: creation request and lifecycle result
- keys-by-id
  - exactify: key lookup result and missing-key handling
- keys-current
  - exactify: active key set publication shape

tier_b_exactness_targets:
- approval-action
  - exactify: decision action matrix
- asset-publish-request-create
  - exactify: request intake fields
- asset-publish-request-decide
  - exactify: decision result and authority
- publish_apply
  - exactify: approved-input-only rule and release outcome
- asset-publish-list
  - exactify: released listing surface only

tier_c_exactness_targets:
- visual-job-create
  - exactify: work-state job create shape
- visual-compose
  - exactify: composition output shape
- visual-upload
  - exactify: upload result versus release result split
- persona-auto-generate-part
  - exactify: candidate asset output shape
- persona_build_manifest
  - exactify: manifest support output shape
- persona_background_get_signed_urls
  - exactify: authorized delivery shape and expiry semantics

tier_d_exactness_targets:
- civilization-event-producer
  - exactify: producer payload and output event reference
- event-validate
  - exactify: validation code family
- civilization-event-dispatcher
  - exactify: routing and delivery states
- civilization-dead-notify
  - exactify: failure class and dead notification payload
- external_dispatcher
  - exactify: external route surface and failure mapping

tier_e_exactness_targets:
- persona-create
  - exactify: lifecycle create request and result
- persona-event-history
  - exactify: history retrieval request, paging, and visibility filter surface

