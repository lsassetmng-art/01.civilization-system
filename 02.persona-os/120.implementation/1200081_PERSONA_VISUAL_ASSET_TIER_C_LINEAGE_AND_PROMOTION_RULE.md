# PERSONA VISUAL ASSET TIER C LINEAGE AND PROMOTION RULE

status: tier-c-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_182828

purpose:
Fixes exact lineage and promotion rules for visual and asset family behavior.

lineage_sources:
- visual input payload
- template reference
- compose input reference
- upload subject reference
- generated part source context
- manifest build input reference

promotion_rules:
- visual-job-create may produce workstate only
- visual-compose may produce candidate output only
- visual-upload may persist candidate output only
- persona-auto-generate-part may produce candidate asset only
- persona_build_manifest may produce manifest support output only
- promotion to released_artifact requires publish path completion
- promotion to released_artifact requires lineage continuity

lineage_rules:
- every candidate output must retain traceable source lineage
- every released artifact must retain candidate-to-release lineage
- release lineage must remain distinct from work-state lineage
- signed delivery helper may reference authorized artifact delivery but does not promote state by itself

