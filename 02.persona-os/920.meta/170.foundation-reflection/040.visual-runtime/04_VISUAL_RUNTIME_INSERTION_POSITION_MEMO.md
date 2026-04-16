# ============================================================
# VISUAL RUNTIME INSERTION POSITION MEMO
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
subdomain: visual-runtime
owner: Boss
prepared_by: Zero

purpose:
Fixes concrete insertion-position candidates for the first two
highest-priority canonical absorption targets after checking
their current integrated canonical body.

# ============================================================
# 1. TARGET: 0200010_PERSONA_RENDERING_ARCHITECTURE
# ============================================================

current_title_seen:
- PERSONA RENDERING SPECIFICATION
- PersonaOS Visual Runtime Canonical Spec v2.3

current_strength:
- anchor mode described
- autocenter specification described
- rendering flow described
- supported creation paths described
- performance/future extensions described

current_gap:
The current document explains rendering behavior well,
but it does not strongly and explicitly fix the boundary between:
- canonical visual truth
- execution-stage render behavior
- render artifacts/output
- runtime correction/fallback behavior

recommended_insertion_position_a:
Immediately after:
# ============================================================
# RENDERING FLOW
# ============================================================

why_a:
This is the most natural place to explain that
matrix construction, centroid correction, anchor interpretation,
and final draw behavior are execution-stage semantics
under canonical input authority.

recommended_insertion_position_b:
Immediately before:
# ============================================================
# CURRENT CANONICAL STATUS
# ============================================================

why_b:
This is the best place to add a final authority-boundary chapter
without breaking the existing rendering spec flow.

preferred_choice:
B is slightly stronger for canonical wording,
A is slightly stronger for execution semantics.
Best practical solution:
- insert execution-boundary explanation after RENDERING FLOW
- insert short fixed-statement block before CURRENT CANONICAL STATUS

what_should_be_inserted_here:
- canonical visual truth remains upstream
- render plan and output are execution artifacts
- render success does not imply canonical mutation
- display success does not imply authoritative truth
- runtime correction/fallback does not silently become canonical truth

# ============================================================
# 2. TARGET: 0400006_PERSONA_VISUAL_RUNTIME
# ============================================================

current_title_seen:
- PERSONA VISUAL RUNTIME

current_strength:
- identifies component
- contains a short flow skeleton
- mentions storage

current_gap:
The current wording is too thin and too strong in the wrong place.

Current PURPOSE:
Manage persona visual identity generation.

This risks over-reading VisualRuntime as if it owns
visual identity truth generation authority.

Current FLOW:
visual-generation-job-create
↓
visual-compose
↓
client render
↓
visual-render-result-commit

This risks collapsing:
- compose
- render
- result commit

without stage separation.

recommended_insertion_position_a:
Replace the current PURPOSE block entirely.

why_a:
The current sentence is the biggest semantic risk in this document.

recommended_insertion_position_b:
Insert a new block immediately after PURPOSE and before FLOW.

why_b:
Needed to define:
- VisualRuntime is internal execution layer
- it does not own canonical truth
- runtime state is disposable
- output is non-authoritative

recommended_insertion_position_c:
Replace or expand FLOW so that stage separation is visible.

why_c:
The current flow is too compressed and suggests
render-result-commit as if render success directly becomes
canonical result.

preferred_choice:
Use all three:
- rewrite PURPOSE
- insert role/state/non-authority block before FLOW
- rewrite FLOW with stage separation wording

what_should_be_inserted_here:
- VisualRuntime is a PersonaOS-internal execution layer
- it consumes canonical visual inputs
- it does not own canonical visual truth
- render/session/cache/output/support artifacts are non-authoritative
- input accepted is not canonical commit
- render executed is not authoritative truth
- output displayed is not authoritative truth

# ============================================================
# 3. PATCH PRIORITY
# ============================================================

highest_priority_patch:
1. 0400006 purpose correction
2. 0400006 flow correction
3. 0200010 authority-boundary insertion
4. 0200010 non-authoritative output statement

reason:
0400006 currently has the greatest semantic compression risk.
0200010 is already richer, so it mainly needs boundary reinforcement.

# ============================================================
# 4. PRACTICAL ABSORPTION RULE
# ============================================================

practical_rule:
Do not weaken existing rendering details.
Only add authority-boundary clarification and stage-separation clarity.

for_0200010:
preserve spec richness
+ add boundary language

for_0400006:
replace compressed wording
+ add explicit execution-layer semantics

# ============================================================
# 5. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
The current integrated canonical confirms that
0200010 mainly needs authority-boundary reinforcement,
while 0400006 needs stronger role correction,
runtime-state clarification, and flow-stage separation.
These insertion positions should be treated as the canonical
absorption points for the first VisualRuntime correction pass.
