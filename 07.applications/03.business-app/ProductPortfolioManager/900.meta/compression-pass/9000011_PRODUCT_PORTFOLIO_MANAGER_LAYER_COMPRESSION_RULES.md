# ============================================================
# PRODUCT PORTFOLIO MANAGER LAYER COMPRESSION RULES
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines how each layer should be compressed or standardized
without losing design intent.

layer_rules:

  constitution:
    keep:
      - meaning boundaries
      - source-of-truth boundaries
      - non-negotiable principles
    compress:
      - repeated contrast phrases when already established elsewhere
    avoid:
      - implementation-style requirement wording

  architecture:
    keep:
      - structural roles
      - surface relations
      - domain responsibilities
    compress:
      - repeated warnings already owned by constitution/policy unless architecture-specific
    avoid:
      - field-by-field model semantics

  model:
    keep:
      - entity meaning
      - field semantics
      - relation semantics
    compress:
      - repeated governance phrases not specific to model meaning
    avoid:
      - UI wording

  flow:
    keep:
      - actor progression
      - state progression
      - handoff meaning
    compress:
      - repeated generic cautions already fixed in policy/security unless flow-specific
    avoid:
      - pure architecture summaries

  integration:
    keep:
      - source boundary
      - reference semantics
      - metadata expectations
    compress:
      - repeated "not truth" phrasing where already firmly established
    avoid:
      - UI-heavy wording

  operations:
    keep:
      - cadence
      - handling discipline
      - operational metrics
    compress:
      - repeated constitutional warnings unless operator-facing handling depends on them
    avoid:
      - exact schema semantics

  policy:
    keep:
      - interpretation rules
      - allowed/disallowed meaning
      - separation rules
    compress:
      - architecture descriptions
    avoid:
      - implementation checklist style wording

  security:
    keep:
      - authority boundaries
      - access rules
      - tamper-resistance expectations
    compress:
      - repeated business-value exposition not tied to security meaning
    avoid:
      - generic product descriptions

  implementation:
    keep:
      - non-code requirements
      - screen/API/data requirement statements
    compress:
      - long repeated boundary reminders already fixed above unless needed for implementation safety
    avoid:
      - code or DDL

  meta:
    keep:
      - navigation
      - cleanup guidance
      - restart support
    compress:
      - redundant summaries that merely restate root overview

formal_conclusion:
Compression should make each layer sound more like itself.
