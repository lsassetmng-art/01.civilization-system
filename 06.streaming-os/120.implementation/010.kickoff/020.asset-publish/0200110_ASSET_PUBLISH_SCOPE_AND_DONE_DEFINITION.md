# ============================================================
# K2 ASSET PUBLISH SCOPE AND DONE DEFINITION
# ============================================================

status: exactness-pack
scope: archive-clip-publish
phase: K2 asset-publish
prepared_by: Zero
owner: Boss

scope_in:
- streaming-core-asset
- streaming-core-publish
- streaming-api-contracts portion for asset / publish
- asset / publish auth boundary
- asset / publish screen-to-endpoint mapping

scope_out:
- creator studio drafts
- viewer history / queue / playlist
- monetization
- moderation
- notification
- corporate
- Persona-side SQL execution

canonical_endpoints_in_scope:
- get_archive_asset_detail
- list_archive_assets
- get_clip_asset_detail
- list_clip_assets
- create_external_publish_job
- get_external_publish_job_detail
- list_external_publish_jobs

done_definition:
- archive payload exactness fixed
- clip payload exactness fixed
- external publish payload exactness fixed
- archive table-column exactness fixed
- clip table-column exactness fixed
- external publish job table-column exactness fixed
- asset auth / RLS exactness fixed
- external publish auth / RLS exactness fixed
- screen-to-endpoint mapping fixed
- no hidden reopen point remains

stop_rules:
- archive and clip identities get collapsed into one object
- external publish becomes a public viewer object
- runtime internal dispatch path leaks into public API meaning
- asset governance meaning becomes inseparable from watch-time visibility
