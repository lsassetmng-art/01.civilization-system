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
