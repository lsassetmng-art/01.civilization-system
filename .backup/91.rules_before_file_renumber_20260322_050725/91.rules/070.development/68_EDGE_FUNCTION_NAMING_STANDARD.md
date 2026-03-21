# ============================================================
# EDGE FUNCTION NAMING STANDARD
# ============================================================

status: canonical
scope: development
component: edge-function-naming-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical naming rules
for Edge Functions
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- naming format for Edge Functions
- readability expectations
- domain/action separation
- stability and clarity rules


# ============================================================
# CORE PRINCIPLE
# ============================================================

An Edge Function name should reveal:

- which domain it belongs to
- what action it performs

The name should be operationally readable
without opening the implementation.


# ============================================================
# FORMAT RULE
# ============================================================

Edge Functions should use:

domain-action

Examples:

persona-apply
event-dispatcher
audit-notify
ai-summary
license-sync
growth-ingest


# ============================================================
# CASE RULE
# ============================================================

Edge Function names should use:

- lowercase letters
- hyphen-separated words

Underscore and mixed-case naming
should be avoided for canonical function names.


# ============================================================
# DOMAIN RULE
# ============================================================

The domain part should identify
the primary ownership or operating context.

Examples:

- persona
- business
- civilization
- audit
- event
- sync


# ============================================================
# ACTION RULE
# ============================================================

The action part should identify
what the function does structurally.

Examples:

- apply
- dispatch
- notify
- consume
- sync
- verify
- ingest

Prefer explicit action names
over vague words like do, run, or process.


# ============================================================
# STABILITY RULE
# ============================================================

Published Edge Function names
should remain stable unless:

- domain ownership changed
- action meaning changed
- the old name became structurally misleading


# ============================================================
# FINAL RULE
# ============================================================

Canonical Edge Function names must use:

domain-action

Names must be readable, stable,
and operationally meaningful.
