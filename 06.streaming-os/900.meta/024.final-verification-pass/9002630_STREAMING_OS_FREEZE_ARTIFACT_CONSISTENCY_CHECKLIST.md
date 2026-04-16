# ============================================================
# STREAMING OS FREEZE ARTIFACT CONSISTENCY CHECKLIST
# ============================================================

status: canonical-meta
system: streaming-os
owner: Boss
prepared_by: Zero

# ============================================================
# 1. TARGET FREEZE ARTIFACTS
# ============================================================

target_freeze_artifacts:
- executable-ddl-freeze
- final-api-freeze
- final-rls-and-auth-freeze
- final-scheduler-binding-freeze
- freeze-phase-summary

# ============================================================
# 2. CHECK ITEMS
# ============================================================

check_items:
- executable DDL freeze aligns with exact DDL candidates
- final API freeze aligns with exact API contracts
- final RLS/auth freeze aligns with access-control exact mapping
- final scheduler binding freeze aligns with runtime job families
- freeze summary correctly describes actual freeze artifacts present
- freeze summaries and related artifacts do not drop:
  - multilingual interpretation
  - multi-currency interpretation
  - nation-aware currency display interpretation
  - iPhone / Android / PC / tablet interpretation

# ============================================================
# 3. SPECIFIC CONSISTENCY CHECKS
# ============================================================

specific_checks:
- endpoint catalog names match exact API contract intent
- table family names in RLS freeze correspond to executable DDL table names
- runtime queue names correspond to earlier scheduler/queue exact mapping docs
- migration order still makes sense after executable DDL freeze additions
- meta summaries do not claim completion for artifacts that are still absent
- platform / international support wording remains aligned between precision summary,
  freeze summary,
  handoff summary,
  and closeout summary

# ============================================================
# 4. FAILURE SIGNS
# ============================================================

failure_signs:
- freeze docs rename core objects inconsistently
- DDL and RLS refer to different table family names
- API freeze catalog diverges from contract docs
- scheduler freeze diverges from runtime job docs
- meta summary overstates completion
- platform / international support wording appears in only some freeze summaries

