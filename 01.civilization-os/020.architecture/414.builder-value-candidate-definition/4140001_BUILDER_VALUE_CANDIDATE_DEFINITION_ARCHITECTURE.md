# ============================================================
# BUILDER VALUE CANDIDATE DEFINITION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: builder-value-candidate-definition
component: builder-value-candidate-definition

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical architecture
for builder item fields
that must use controlled value candidates
instead of unrestricted free text.

This architecture covers:

- Nation Builder
- Company Builder
- City Builder
- placeable facility state
- placeable infrastructure candidates


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Fields that shape rules,
authority,
play style,
placement logic,
or nation difference
must use explicit candidate values.

Fields that only describe names,
notes,
or narrative explanation
may remain free text.


# ============================================================
# 3. CLASSIFICATION PRINCIPLE
# ============================================================

candidate_value_required_fields:
- governance fields
- structure fields
- authority fields
- mode fields
- route fields
- type fields
- tier fields
- operator fields
- placement class fields

free_text_preferred_fields:
- display name
- narrative description
- memo
- slogan
- optional flavor text


# ============================================================
# 4. FINAL RULE
# ============================================================

Builder definitions must remain
stable,
searchable,
and implementation-friendly
through explicit value candidates.
