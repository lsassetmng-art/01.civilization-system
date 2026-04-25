# ============================================================
# STREAMING PHYSICAL SCHEMA CANDIDATES OVERVIEW
# ============================================================

status: canonical-draft
system: streaming-os
domain: physical-schema-candidates
owner: Boss
prepared_by: Zero

physical_schema:
- streaming

naming_note:
Because the physical schema is fixed as `streaming`,
candidate table names may omit redundant `streaming_` prefixes
where clarity is preserved.

purpose:
Defines the overview for implementation-facing
physical schema candidate grouping in StreamingOS.

summary:
This domain proposes concrete physical-schema candidate families
based on already-fixed model meanings,
without yet freezing exact DDL.

All candidate table families in this domain
are assumed to be placed under the `streaming` schema
unless explicitly stated otherwise.

