# ============================================================
# LIFE OS MULTILINGUAL SUPPORT
# ============================================================

status: canonical-draft
system: life-os
layer: constitution
domain: core
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional multilingual support principle of LifeOS.

summary:
LifeOS must support multilingual usage.
Language preference, generated output language,
and locale-aware presentation must be handled intentionally and consistently.

constitutional_rules:
- multilingual support is a constitutional additive requirement
- UI language and generated output language may be separately controlled
- fallback language must be defined
- mixed-language output inside one screen or one summary should be avoided
- translated wording must preserve original meaning
- multilingual handling must not weaken privacy or sensitivity boundaries

required_scope:
- ui text localization
- review localization
- summary localization
- reminder localization
- locale-aware date and number presentation

boundary_rules:
- multilingual support does not change LifeOS source truth
- multilingual support does not override Persona expression ownership
- multilingual support must remain deterministic and reviewable

conclusion:
LifeOS must support multilingual interaction and multilingual output
as a constitutional premise for future design and implementation.
