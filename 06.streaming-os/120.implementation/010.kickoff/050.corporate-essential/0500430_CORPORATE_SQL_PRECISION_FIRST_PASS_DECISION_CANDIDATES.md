# ============================================================
# CORPORATE SQL PRECISION FIRST-PASS DECISION CANDIDATES
# ============================================================

status: canonical-first-pass-candidates
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

candidate_decisions:

candidate_01:
- title: channel and related ids
- candidate: uuid
- reason: stable canonical identifiers across channel, oversight, and affiliation families

candidate_02:
- title: company_id on channel_records
- candidate: uuid nullable
- reason: supports non-company-owned and company-owned paths without forcing premature coupling

candidate_03:
- title: channel_name and channel_handle storage
- candidate: text
- reason: flexible first schema without premature caps

candidate_04:
- title: visibility and oversight state storage
- candidate: text plus check constraints
- reason: additive change is easier than early enum lock-in

candidate_05:
- title: oversight summary storage
- candidate: jsonb
- reason: summary payload shapes are likely to evolve

candidate_06:
- title: affiliation role and visibility scope storage
- candidate: text nullable
- reason: leaves room for later tightening after DB review

candidate_07:
- title: first index set
- candidate:
  - channel_records: owner_principal_id
  - channel_records: company_id
  - channel_records: visibility_state
  - corporate_channel_oversight_records: company_id, channel_id
  - affiliated_streamer_references: company_id, target_principal_id
- reason: enough for first review without over-indexing

candidate_08:
- title: affiliation uniqueness strategy
- candidate: unique(company_id, target_principal_id) as active-affiliation candidate pending refinement
- reason: aligns to one company-to-target relationship baseline, subject to lifecycle review

candidate_09:
- title: projection and visibility strategy
- candidate:
  - public channel projection
  - oversight-safe projection
  - limited self-related affiliation projection
- reason: preserves public vs company-scoped vs relationship-scoped boundaries
