# ============================================================
# PERSONA PROFILE COMPOSITION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for profile composition handling.

required_fields:
- persona_id
- visual_profile_code or voice_profile_code or skill_profile_code or animation_profile_code
- component basis
- version basis
- correlation_id

success_condition:
- profile composition request classified and routed safely

failure_condition:
- invalid target
- missing persona or component basis
- incompatible profile-composition handling
