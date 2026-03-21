# BUSINESS_PERSONA_USAGE_BINDING_MODEL

status: canonical
layer: model
domain: persona
owner: Boss
prepared_by: Zero

## PURPOSE
Bind a Persona release to a BusinessOS usage context.

## FIELDS
- business_persona_usage_binding_id
- business_app_id
- business_workspace_id
- business_module_id
- business_persona_release_ref_id
- usage_role
- binding_state
- bound_at
- unbound_at

## RULE
Binding is valid only while Persona release, license, and access states remain valid.
