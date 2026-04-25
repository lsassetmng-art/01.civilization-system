# ============================================================
# PERSONA OS DEVELOPMENT OVERVIEW
# ============================================================

status: implementation-ready-followup
system: PersonaOS
layer: development
canonical: true

development_principle:
Implementation proceeds in the order of contract authority, not UI convenience.

required_build_order:
1. apply inbox / validation / canonical apply / feedback
2. builder draft / api / storage / approval / publish
3. visual runtime / runtime session / snapshot
4. package / external release / license / access grant / transfer
5. outbox / retry / dead-letter / monitoring / acceptance

quality_gate:
- no module may ship with unfixed state ambiguity
- no endpoint may ship without error contract
- no persistence write path may ship without audit field set
- no release path may ship without immutability enforcement

authoritative_references:
- 120.implementation exact files
- aligned model overviews
- development guides in this directory
