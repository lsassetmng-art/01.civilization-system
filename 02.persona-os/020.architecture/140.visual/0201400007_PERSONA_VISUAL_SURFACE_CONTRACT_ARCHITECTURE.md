# ============================================================
# PERSONA VISUAL SURFACE CONTRACT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: visual-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the canonical architecture
for visual surface contracts.

A surface contract defines the rendering context
into which Visual Runtime must compose output.


# ============================================================
# 2. SURFACE CONTRACT FIELDS
# ============================================================

Every surface contract must define:

surface_code
surface_class
width_policy
height_policy
aspect_policy
safe_area_policy
persona_anchor_policy
background_visibility_policy
animation_budget_policy
interaction_policy
fallback_policy


# ============================================================
# 3. CANONICAL SURFACE CLASSES
# ============================================================

The canonical surface classes are:

assistant_main
assistant_compact
chat_side
profile_card
full_scene
thumbnail
market_preview

Additional classes may exist,
but they must be explicitly approved.


# ============================================================
# 4. CONTRACT ROLE
# ============================================================

Surface contract determines:

layout constraints
composition bounds
anchor behavior
background visibility
animation intensity
resource budget
interaction capability

Runtime output must always be interpreted
through an explicit surface contract.


# ============================================================
# 5. DESIGN RULES
# ============================================================

1. Surface contract must be independent from host UI toolkit.
2. Surface contract must be stable across Android, web, and other hosts.
3. Surface contract must not contain app-specific widget references.
4. Surface contract must decide runtime behavior,
   not host guesswork.
5. Surface contract must be serializable and testable.


# ============================================================
# 6. POCKETSECRETARY VIEW
# ============================================================

PocketSecretary must consume a declared surface class
instead of inferring rendering rules from screen names.

Example mapping:

home assistant screen -> assistant_main
compact list item -> assistant_compact
chat thread side display -> chat_side
detail profile screen -> profile_card

This removes ambiguity from host integration.

# EXACT READY ARCHITECTURE REINFORCEMENT

status_extension: author-reviewed-with-architecture-reinforcement
reinforced_at: 20260417_150617
reinforcement_scope:
- component boundary clarification
- flow boundary clarification
- persistence edge clarification
- failure path clarification

domain: visual

minimum_architecture_requirements:
- define entry component
- define coordination or orchestration component
- define persistence or state boundary
- define outbound interface or integration boundary
- define reject, retry, and terminal failure path where applicable

mandatory_flow_requirements:
- happy path
- reject or block path
- retry or recovery path where applicable
- dead-letter or terminal failure path where applicable

mandatory_boundary_requirements:
- no hidden write path
- no shortcut around validation or policy
- no silent external effect
- no terminal action without observable evidence

architecture_ready_note:
This reinforcement does not replace the authored architectural content above.
It marks the minimum exact-ready architectural items that must be explicit
before implementation contract fixation is considered complete.
