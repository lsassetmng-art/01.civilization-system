# ============================================================
# VISUAL RUNTIME FOUNDATION ABSORPTION MAP
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
subdomain: visual-runtime
owner: Boss
prepared_by: Zero

purpose:
Maps the VisualRuntime foundation reflection patch rules
to concrete existing PersonaOS canonical documents
that should absorb them.

# ============================================================
# 0. ABSORPTION BASIS
# ============================================================

source_patchset:
- 00_VISUAL_RUNTIME_FOUNDATION_REFLECTION_PATCHSET.md

absorption_goal:
Move the VisualRuntime reflection rules from meta patch form
into the actual PersonaOS canonical foundation documents
without losing authority separation or stage separation.

core_fixed_position:
VisualRuntime is a PersonaOS foundation-side visual execution layer.
It consumes canonical visual truth and produces execution artifacts,
but it does not own Persona canonical truth.

# ============================================================
# 1. PRIMARY ABSORPTION TARGETS
# ============================================================

primary_targets:
- 020.architecture/0200005_PERSONA_VISUAL_ARCHITECTURE.md
- 020.architecture/0200010_PERSONA_RENDERING_ARCHITECTURE.md
- 020.architecture/0200004_PERSONA_RUNTIME_ARCHITECTURE.md
- 040.runtime/0400006_PERSONA_VISUAL_RUNTIME.md
- 040.runtime/0400011_PERSONA_ENGINE_RUNTIME.md
- 040.runtime/0400014_PERSONA_RUNTIME_ARCHITECTURE.md

secondary_targets:
- 070.operations/*
- 090.interface/*
- 100.security/*
- 120.implementation/*
- 130.development/*

# ============================================================
# 2. FILE-BY-FILE ABSORPTION PLAN
# ============================================================

# ------------------------------------------------------------
# 2.1 PERSONA VISUAL ARCHITECTURE
# ------------------------------------------------------------

target_file:
020.architecture/0200005_PERSONA_VISUAL_ARCHITECTURE.md

must_absorb:
- canonical visual truth remains upstream from execution
- VisualRuntime is not visual truth authority
- render output does not replace canonical visual truth
- render/session/cache artifacts are non-authoritative
- visual truth and execution artifacts must be structurally separated

why_here:
This file should define the top-level visual authority boundary.

patch_payload_summary:
Add explicit language that PersonaOS visual truth is canonical,
while VisualRuntime consumes that truth and emits non-authoritative
execution artifacts.

# ------------------------------------------------------------
# 2.2 PERSONA RENDERING ARCHITECTURE
# ------------------------------------------------------------

target_file:
020.architecture/0200010_PERSONA_RENDERING_ARCHITECTURE.md

must_absorb:
- render plan vs canonical visual truth separation
- anchor/layer/offset/rig resolution as execution-stage behavior
- local corrections must not silently become truth mutation
- rendered output is not canonical source
- render success is not canonical completion

why_here:
This file already describes the rendering specification,
so it is the strongest location for execution-vs-truth separation.

patch_payload_summary:
Strengthen the rendering spec so that all anchor/XY/autocenter/runtime
behavior is clearly positioned as execution logic under canonical input authority.

# ------------------------------------------------------------
# 2.3 PERSONA RUNTIME ARCHITECTURE
# ------------------------------------------------------------

target_file:
020.architecture/0200004_PERSONA_RUNTIME_ARCHITECTURE.md

must_absorb:
- render session is disposable runtime state
- execution/runtime state does not replace Persona truth
- runtime-hosted visual execution remains subordinate to canonical truth
- stale session reuse must remain non-authoritative and fail-safe

why_here:
This file is the right place to establish global runtime semantics.

patch_payload_summary:
Add the rule that runtime-side state, including visual runtime state,
is disposable execution state and not truth ownership.

# ------------------------------------------------------------
# 2.4 PERSONA VISUAL RUNTIME
# ------------------------------------------------------------

target_file:
040.runtime/0400006_PERSONA_VISUAL_RUNTIME.md

must_absorb:
- current purpose text is too broad if it implies truth generation ownership
- "manage persona visual identity generation" must be tightened
- visual-compose / client render / render-result-commit
  must be separated by stage semantics
- render result is not automatically canonical visual truth
- execution artifacts must remain non-authoritative unless explicitly adopted

why_here:
This is the most direct runtime document for VisualRuntime.

patch_payload_summary:
Rewrite the runtime purpose and flow so it describes
visual execution and composition under canonical authority,
not visual truth ownership.

# ------------------------------------------------------------
# 2.5 PERSONA ENGINE RUNTIME
# ------------------------------------------------------------

target_file:
040.runtime/0400011_PERSONA_ENGINE_RUNTIME.md

must_absorb:
- engine runtime is execution coordinator, not truth owner
- engine state is runtime orchestration state
- output generation does not imply canonical mutation

why_here:
Engine runtime likely coordinates execution behavior
that can be overread as authority.

patch_payload_summary:
Clarify that engine/runtime orchestration remains
execution-side and non-authoritative.

# ------------------------------------------------------------
# 2.6 PERSONA RUNTIME ARCHITECTURE (RUNTIME LAYER)
# ------------------------------------------------------------

target_file:
040.runtime/0400014_PERSONA_RUNTIME_ARCHITECTURE.md

must_absorb:
- runtime-wide stage separation
- runtime state vs canonical truth
- visual runtime as a subordinate internal execution layer

why_here:
This file can carry runtime-layer harmonization
after architecture-level rules are tightened.

patch_payload_summary:
Add runtime-wide wording that visual execution artifacts
do not overwrite canonical truth.

# ------------------------------------------------------------
# 2.7 OPERATIONS TARGETS
# ------------------------------------------------------------

target_area:
070.operations/*

must_absorb:
- render diagnostics are support data
- performance traces are support data
- render logs are not canonical truth
- observability must not overclaim commit/truth

why_here:
Operations docs govern monitoring, audit, and investigation semantics.

patch_payload_summary:
Add explicit language that visual runtime traces
are support evidence only.

# ------------------------------------------------------------
# 2.8 INTERFACE TARGETS
# ------------------------------------------------------------

target_area:
090.interface/*

must_absorb:
- canonical input reference vs resolved render input
- render executed vs canonical commit
- output displayed vs authoritative truth
- renderer-valid vs security-cleared where applicable

why_here:
Interface docs must preserve stage boundaries in payloads and statuses.

patch_payload_summary:
Introduce clearer stage/status vocabulary for visual execution flows.

# ------------------------------------------------------------
# 2.9 SECURITY TARGETS
# ------------------------------------------------------------

target_area:
100.security/*

must_absorb:
- render validation is not security verdict
- asset/runtime availability is not canonical authorization
- protected visual input paths still depend on Persona security truth

why_here:
Security docs must prevent render-layer convenience
from being mistaken for protection-gate truth.

patch_payload_summary:
Add render-specific non-authority rules to security wording.

# ============================================================
# 3. ABSORPTION ORDER
# ============================================================

recommended_absorption_order:
1. 0200005_PERSONA_VISUAL_ARCHITECTURE.md
2. 0200010_PERSONA_RENDERING_ARCHITECTURE.md
3. 0200004_PERSONA_RUNTIME_ARCHITECTURE.md
4. 0400006_PERSONA_VISUAL_RUNTIME.md
5. 0400011_PERSONA_ENGINE_RUNTIME.md
6. 0400014_PERSONA_RUNTIME_ARCHITECTURE.md
7. 090.interface/*
8. 100.security/*
9. 070.operations/*
10. 120.implementation/*
11. 130.development/*

reason:
Visual authority and rendering semantics must be corrected first,
then runtime orchestration, then interface/security/operations support language.

# ============================================================
# 4. DO-NOT-LOSE RULES DURING ABSORPTION
# ============================================================

must_preserve:
- canonical visual truth remains upstream
- render output is non-authoritative
- runtime session state is disposable
- render cache is non-authoritative
- render diagnostics are support traces only
- committed truth is distinct from render execution
- display/output does not imply canonical completion

# ============================================================
# 5. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
The VisualRuntime foundation reflection patchset should be absorbed
primarily into PersonaOS visual architecture,
rendering architecture, and visual/runtime documents.
During absorption, PersonaOS must preserve the rule that
VisualRuntime is an internal execution layer under canonical authority,
not a truth-owning authority layer.
