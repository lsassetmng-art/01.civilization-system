# ============================================================
# K2 ASSET PUBLISH ORDINARY REVIEW SCOPE
# ============================================================

status: canonical-scope
layer: meta
domain: k1-k2-ordinary-review-restart
system: StreamingOS
prepared_by: Zero
owner: Boss

review_scope:
- archive asset exact payload
- clip asset exact payload
- external publish exact payload
- table-column exactness
- auth / rls exactness
- screen to endpoint mapping
- api transport exactness
- payload to ddl mapping
- ddl draft reading

review_focus:
- signed snapshot / formal Persona result ref display consistency
- release/license/access formal reference consistency
- no local persona profile canonical meaning
- no local persona-rights canonical meaning

review_non_focus:
- implementation coding
- db apply
- PersonaOS redesign
