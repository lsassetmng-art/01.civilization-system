# ============================================================
# AIWORKER PAYLOAD SANITIZATION AND REPLAY SAFETY EXACT
# ============================================================

status: exact-security
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
Freeze the sanitization and replay-safety rules for all WB04 payload contracts.

sanitization_rules:
- reject undocumented top-level keys on official intake payload
- normalize nullability exactly as contract defines
- trim or reject oversized freeform text fields by fixed limits
- reject embedded raw business records
- reject embedded raw worker secrets
- reject payload shapes that attempt to override gate or authority through style or rank fields

replay_safety_rules:
- command payload must carry request_hash
- staging and intake payload must preserve request_hash lineage
- same request_hash plus same target surface plus same transition is idempotency candidate
- replay must not duplicate canonical mutation when prior applied result exists
- replay detection outcome must be representable as result_code

payload_version_rules:
- every payload has explicit payload_version
- additive fields may be introduced in later versions
- silent breaking change to existing field semantics is prohibited
- consumers must key on payload_version

redaction_rules:
- restricted or privileged result paths must use coded summaries
- human-readable detail is bounded by summary band
- direct raw text from internal policies must not be echoed into result payload by default

hard_rules:
- replay-safety is not optional
- sanitization is not optional
- payload contract is fail-closed on unknown critical shape
