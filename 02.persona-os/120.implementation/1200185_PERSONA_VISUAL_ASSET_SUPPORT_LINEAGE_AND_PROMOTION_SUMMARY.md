# PERSONA VISUAL ASSET SUPPORT LINEAGE AND PROMOTION SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_063817

purpose:
Condenses lineage and promotion semantics across the visual and asset support bundle.

lineage sources:
- visual input payload
- template reference
- compose input reference
- upload subject reference
- generated part source context
- manifest build input reference

promotion backbone:
workstate_job
-> composed_candidate
-> uploaded_candidate or generated_candidate
-> release_ready_candidate
-> publish path
-> released_artifact

lineage rules:
- every candidate output must retain source lineage
- manifest support output must remain attributable to persona_or_asset_reference
- uploaded candidate must remain attributable to upload subject reference
- generated candidate must remain attributable to generation subject reference
- released artifact must remain attributable to candidate-to-release lineage
- release lineage must remain distinct from work-state lineage

hard rules:
- promotion to released_artifact requires publish path completion
- promotion to released_artifact requires release-safe lineage continuity
- no visual or asset support function may promote directly to released_artifact by default
