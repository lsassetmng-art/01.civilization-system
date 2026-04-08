# ============================================================
# PERSONA IDENTITY POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: identity
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of identity policies.

summary:
Identity policy governs internal identity authority,
public identity derivation,
identity continuity,
and explicit handling of identity-safe changes.

policy_groups:
internal identity protection
public identity derivation
presentation naming update
identity continuity protection

change_rules:
internal authority identity must be strongly restricted
display_name and alias may be updated under explicit policy
public_name may be updated only through explicit public-facing identity policy
identity continuity must remain auditable

boundary:
Public-facing identity must not replace internal authority identity.
Identity policy does not grant security authority.
Identity policy does not redefine persona state.
