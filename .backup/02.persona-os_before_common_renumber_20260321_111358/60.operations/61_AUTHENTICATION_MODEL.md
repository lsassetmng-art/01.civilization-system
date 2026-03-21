# ============================================================
# PERSONA AUTHENTICATION MODEL
# ============================================================

status: canonical
component: persona-authentication

owner: Boss
prepared_by: Zero

# PURPOSE

Define how users and applications authenticate
to PersonaOS.

# AUTHENTICATION TYPES

User authentication

Handled via Supabase Auth.

Application authentication

Handled via service keys or internal tokens.

# AUTHENTICATION FLOW

Client → Auth provider → access token → API access

# PRINCIPLE

Authentication verifies identity.
Authorization determines permission.

