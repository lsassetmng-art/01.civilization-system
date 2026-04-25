# PERSONA EDGE APPLY ORCHESTRATOR ENV AND SECRET DEPENDENCY SPEC

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_113916

purpose:
Fixes the environment and secret dependency set of the orchestrator.

mandatory_env:
- INTERNAL_DISPATCH_TOKEN
- PERSONA_SUPABASE_URL
- PERSONA_SERVICE_ROLE_KEY
- SNAPSHOT_ISSUE_URL

optional_env_best_effort:
- PERSONAOS_KEY_ID
- PERSONAOS_ED25519_PRIVATE_KEY_PKCS8_B64

env_dependency_rules:
- missing mandatory env = fail-closed
- missing optional signing env = warn-capable, non-blocking under current policy
- service role key is internal only and must not be treated as external surface
- snapshot issue url is internal orchestration dependency, not external public interface

secret_boundary_rules:
- internal dispatch token is request gate material
- service role key is DB authority material
- signing private key is audit-sign support material
- no secret may be returned to caller or written into external response

