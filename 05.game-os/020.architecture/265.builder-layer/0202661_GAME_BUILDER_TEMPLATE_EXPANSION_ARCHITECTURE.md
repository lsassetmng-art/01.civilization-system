# ============================================================
# GAME BUILDER TEMPLATE EXPANSION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official template expansion architecture of Game Builder.

This architecture defines how template-selected projects
expand into concrete Builder structures.

It covers:
- template clone into project
- required block expansion
- default asset set expansion
- template binding persistence
- editable/protected/override zones
- template version drift handling


# ============================================================
# 1. TEMPLATE EXPANSION ROLE
# ============================================================

Template expansion turns a template choice
into a concrete Builder project structure.

It must:
- create initial project skeleton
- create required blocks
- bind runtime/template metadata
- bind required asset family expectations
- preserve template lineage

It must not:
- create runtime ambiguity
- create hidden block structures
- silently destroy template lineage


# ============================================================
# 2. EXPANSION OUTPUTS
# ============================================================

Template expansion must produce at minimum:

- project root metadata
- runtime/template bindings
- required block skeletons
- required asset family expectations
- initial project status
- editable/protected/override zone annotations


# ============================================================
# 3. REQUIRED BLOCK EXPANSION
# ============================================================

A template must explicitly define required blocks.

Expansion must instantiate:
- required root blocks
- required child blocks
- required structural relationships
- required placeholder metadata where needed

Missing required blocks after expansion is invalid.


# ============================================================
# 4. DEFAULT ASSET EXPANSION
# ============================================================

A template may supply default assets or default bindings.

Expansion must make visible:
- template default asset source
- required asset family set
- project override capability
- unresolved asset families if template leaves them open intentionally


# ============================================================
# 5. ZONE EXPANSION
# ============================================================

Template expansion must annotate structure with zone classes:

- protected_zone
- editable_zone
- advanced_override_zone

This annotation must survive into Main Editor behavior.


# ============================================================
# 6. TEMPLATE VERSION DRIFT
# ============================================================

A project created from a template must preserve
which template version it originated from.

Template updates must not silently rewrite existing projects.

Possible future support:
- inspect newer template version availability
- offer migration or patch assistance
- preserve explicit creator choice

Silent template mutation is prohibited.


# ============================================================
# 7. FINAL ARCHITECTURAL RULE
# ============================================================

Template expansion must remain explicit,
lineage-preserving,
and runtime-safe.

Core summary:

- template choice becomes project skeleton
- required blocks are instantiated explicitly
- required asset expectations are made visible
- zone annotations are preserved
- template lineage remains explicit
- silent drift mutation is prohibited
