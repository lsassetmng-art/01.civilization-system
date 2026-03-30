# ============================================================
# PERSONA USER SPECIFIC USAGE STATE MODEL
# ============================================================

status: canonical
scope: persona.user.specific.usage.state.model
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the canonical model for user-specific variation
when the same Persona is used by multiple users.


# PRIMARY KEY

- persona_user_specific_usage_state_id


# NATURAL KEY

- persona_id
- user_id


# FIELDS

- persona_user_specific_usage_state_id
- persona_id
- user_id
- affinity_score
- trust_score
- familiarity_score
- communication_comfort_score
- shared_history_score
- emotional_closeness_score
- response_tuning_profile
- memory_exposure_level
- learned_preference_adaptation
- created_at
- updated_at


# RULE

User-specific usage state must not overwrite
shared base Persona truth.


# FINAL DEFINITION

The same Persona may be used by multiple users,
but usage-driven changes must be stored
per user as separate usage state.
