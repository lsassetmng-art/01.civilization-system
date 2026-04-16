# ============================================================
# PERSONA OS FOUNDATION REFLECTION WORDING TUNING TARGET LIST
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete wording-tuning targets after structural closure
of VisualRuntime-related foundation reflection inside PersonaOS.

# ============================================================
# 0. TARGETING RULE
# ============================================================

selection_rule:
Targets are prioritized by:
- semantic load
- nearby-context awkwardness risk
- repetition density
- chance of residual wording roughness
- impact on later implementation/development normalization

tuning_scope:
- wording only
- no authority-boundary weakening
- no stage-separation weakening
- no semantic expansion

# ============================================================
# 1. TIER 1 TARGETS
# ============================================================

tier_1_targets:
- 040.runtime/0400006_PERSONA_VISUAL_RUNTIME.md
- 020.architecture/0200010_PERSONA_RENDERING_ARCHITECTURE.md
- 090.interface/093_PERSONA_APPLY_STATUS_INTERFACE.md
- 100.security/100_PERSONA_APPLY_SECURITY.md
- 070.operations/070_PERSONA_APPLY_OPERATIONS.md

tier_1_reason:
These files carry the heaviest semantic load for
VisualRuntime non-authoritative execution wording.

expected_tuning_focus:
- smooth insertion boundaries
- reduce repetition
- tighten heavy caution language
- improve local readability

# ============================================================
# 2. TIER 2 TARGETS
# ============================================================

tier_2_targets:
- 090.interface/091_PERSONA_APPLY_RESPONSE_INTERFACE.md
- 100.security/103_PERSONA_SIGNATURE_VALIDATION_SECURITY.md
- 070.operations/074_PERSONA_APPLY_AUDIT_OPERATIONS.md
- 020.architecture/0200005_PERSONA_VISUAL_ARCHITECTURE.md
- 020.architecture/0200004_PERSONA_RUNTIME_ARCHITECTURE.md

tier_2_reason:
These files are important but slightly less exposed
to wording drift than tier 1.

expected_tuning_focus:
- avoid duplicated warnings
- align inserted blocks with surrounding style
- tighten local transitions

# ============================================================
# 3. TIER 3 TARGETS
# ============================================================

tier_3_targets:
- 040.runtime/0400011_PERSONA_ENGINE_RUNTIME.md
- 040.runtime/0400014_PERSONA_RUNTIME_ARCHITECTURE.md
- 090.interface/090_PERSONA_APPLY_REQUEST_INTERFACE.md
- 090.interface/092_PERSONA_REJECT_RESPONSE_INTERFACE.md
- 100.security/101_PERSONA_TRUSTED_CALLER_SECURITY.md
- 100.security/102_PERSONA_REPLAY_PROTECTION_SECURITY.md
- 100.security/104_PERSONA_APPLY_AUDIT_SECURITY.md
- 070.operations/071_PERSONA_REJECT_INVESTIGATION_OPERATIONS.md
- 070.operations/075_PERSONA_ACCEPTANCE_HEALTHCHECK_OPERATIONS.md

tier_3_reason:
These files still matter, but their wording issues are more likely
to be local polish rather than load-bearing semantic risk.

expected_tuning_focus:
- remove rough joins
- normalize phrase cadence
- reduce local awkwardness

# ============================================================
# 4. SHARED TUNING PATTERNS
# ============================================================

shared_tuning_patterns:
- repeated "must not silently" clauses too close together
- repeated "authoritative truth" phrases in adjacent sentences
- abrupt jump from old text into inserted block
- abrupt jump from inserted block back into old text
- duplicated list intros with near-identical meaning
- overlong warning paragraphs that can be split cleanly

# ============================================================
# 5. MUST-PRESERVE RULES
# ============================================================

must_preserve:
- canonical visual truth remains upstream
- VisualRuntime remains non-authoritative
- render output remains non-authoritative
- runtime state remains disposable
- diagnostics remain evidence only
- render executed is not authoritative truth
- output displayed is not authoritative truth
- renderer-valid is not security-cleared
- display-visible is not governance-cleared

# ============================================================
# 6. RECOMMENDED EXECUTION ORDER
# ============================================================

recommended_execution_order:
1. 0400006_PERSONA_VISUAL_RUNTIME.md
2. 0200010_PERSONA_RENDERING_ARCHITECTURE.md
3. 093_PERSONA_APPLY_STATUS_INTERFACE.md
4. 100_PERSONA_APPLY_SECURITY.md
5. 070_PERSONA_APPLY_OPERATIONS.md
6. then remaining tier 2
7. then remaining tier 3

# ============================================================
# 7. COMPLETION CONDITION
# ============================================================

completion_condition:
The wording-tuning phase is complete when:
- tier 1 files read naturally
- no meaningful repetition problem remains in tier 1
- no local contradiction remains
- authority and stage rules remain explicit
- remaining tier 2/3 files are either tuned or judged already acceptable

# ============================================================
# 8. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This target list defines the practical order of wording-only cleanup
after structural stabilization of VisualRuntime foundation reflection.
It should be used to sequence minimal, semantics-preserving
readability improvements across PersonaOS canonical files.
