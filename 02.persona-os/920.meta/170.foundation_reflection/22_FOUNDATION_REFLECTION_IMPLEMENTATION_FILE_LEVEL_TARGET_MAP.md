# ============================================================
# PERSONA OS FOUNDATION REFLECTION IMPLEMENTATION FILE-LEVEL TARGET MAP
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
owner: Boss
prepared_by: Zero

purpose:
Maps VisualRuntime-related foundation reflection rules
to likely implementation-layer absorption targets inside PersonaOS.

# ============================================================
# 0. TARGETING PRINCIPLE
# ============================================================

selection_rule:
Choose implementation files that are most likely to encode:
- runtime/session handling
- cache handling
- render result handling
- persistence handling
- fallback handling
- status vocabulary in execution paths

must_preserve:
- execution artifact vs canonical truth separation
- runtime/session state vs canonical state separation
- render output vs canonical visual truth separation
- local validation vs security verdict separation
- diagnostics/support trace vs authority record separation

# ============================================================
# 1. PRIMARY IMPLEMENTATION TARGET AREAS
# ============================================================

primary_target_areas:
- 120.implementation/*visual*
- 120.implementation/*runtime*
- 120.implementation/*render*
- 120.implementation/*compose*
- 120.implementation/*engine*
- 120.implementation/*cache*
- 120.implementation/*storage*
- 120.implementation/*apply*

why_primary:
These files are the most likely place where non-authoritative
execution semantics can drift back into implementation truth semantics.

# ============================================================
# 2. IMPLEMENTATION FILE-LEVEL QUESTIONS
# ============================================================

for_each_candidate_file_check:
- does this file serialize render output
- does this file persist local cache
- does this file define runtime/session reuse
- does this file define fallback behavior
- does this file define execution status vocabulary
- does this file describe commit confirmation handling
- does this file expose local validation language
- does this file write support/diagnostic data

if_yes:
This file is a likely implementation normalization target.

# ============================================================
# 3. REQUIRED INSERTION THEMES
# ============================================================

implementation_insert_themes:
- local cache is non-authoritative
- render output is non-authoritative unless explicit canonical adoption path exists
- runtime/session state is disposable
- fallback behavior is execution-side only
- execution success is not canonical commit success
- local validation is not security verdict
- support traces are not authority records

# ============================================================
# 4. PRIORITY BUCKETS
# ============================================================

tier_1_expected_candidates:
- visual runtime implementation files
- render composition implementation files
- cache/storage implementation files
- engine/runtime implementation files

tier_2_expected_candidates:
- apply-path implementation files
- response/status implementation files
- diagnostics-related implementation files

tier_3_expected_candidates:
- adjacent helper implementation files
- low-level utility files that only indirectly expose status wording

# ============================================================
# 5. OUTPUT OF NEXT STEP
# ============================================================

next_output_expected:
- implementation insert text
- implementation execution plan
- implementation execution record

# ============================================================
# 6. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This target map defines how to find the real implementation-layer
absorption points for VisualRuntime non-authoritative rules.
It should be used to prevent implementation details
from silently reintroducing truth-owner drift.
