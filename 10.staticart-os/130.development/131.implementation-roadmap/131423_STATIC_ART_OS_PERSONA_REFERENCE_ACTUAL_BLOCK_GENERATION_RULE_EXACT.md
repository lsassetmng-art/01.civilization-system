# ============================================================
# STATIC ART OS PERSONA REFERENCE ACTUAL BLOCK GENERATION RULE EXACT
# ============================================================

status: active-exact-generation-rule
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define generation rules for turning templates into concrete actual block files.

generation_rule:
- generate from the master template plus the package-specific template
- preserve stable section order
- do not drop required fields
- do not invent sections that bypass review structure
- keep naming and numbering deterministic

recommended_generation_pattern:
  identity:
    - package_id + block sequence => block_id
  file_name:
    - package-derived readable file name
  section_order:
    - identity
    - purpose
    - scope
    - preconditions
    - touched_scope
    - no_touch_scope
    - execution_steps
    - expected_outputs
    - evidence_outputs
    - close_gate
    - failure_handling
    - rollback_or_safe_stop

generation_constraints:
- one generated block should correspond to one reviewable unit
- mixed scope allowed only when still bounded and explainable
- generation must not strip boundary warnings for brevity
- generation must not compress evidence expectations into vague statements

recommended_generation_examples:
- PR-A02-B01 for DB bounded migration authoring
- PR-A03-B01 for reflection wiring
- PR-A04-B01 for read-side response extension
- PR-A05-B02 for public surface enablement
- PR-A06-B01 for acceptance evidence assembly
- PR-A07-B01 for rollout guard readiness

generation_judgement:
- generated block quality is valid only if another reviewer can understand execution intent without guessing
