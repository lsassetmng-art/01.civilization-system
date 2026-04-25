# ============================================================
# K5 SCOPE AND DONE DEFINITION
# ============================================================

status: exactness-pack
scope: corporate-essential
phase: K5 corporate-essential
prepared_by: Zero
owner: Boss

scope_in:
- streaming-channel
- streaming-corporate-oversight
- streaming-api-contracts portion for corporate essential
- corporate auth boundary
- corporate screen-to-endpoint mapping

scope_out:
- monetization detail
- ranking / ad
- Persona-side SQL execution

canonical_endpoints_in_scope:
- get_channel_detail
- upsert_channel_record
- upsert_corporate_oversight_record
- upsert_affiliated_streamer_reference

done_definition:
- corporate payload exactness fixed
- channel and oversight table-column exactness fixed
- corporate auth / RLS exactness fixed
- screen-to-endpoint mapping fixed
- no hidden reopen point remains

stop_rules:
- public channel profile and corporate oversight visibility get mixed
- affiliation becomes equivalent to ownership mutation
- affiliated streamer reference becomes a public channel identity substitute
- corporate control-plane state leaks into viewer public projections
