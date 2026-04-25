# ============================================================
# APPLICATION COMMON COMPONENTS INDEX
# ============================================================

status: canonical
layer: applications
domain: common-components
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This index organizes reusable common components
for cross-application use under 07.applications.

# ============================================================
# 2. ROOT FILES
# ============================================================

- 000_APPLICATION_COMMON_COMPONENTS_INDEX.md
- 000_APPLICATION_COMMON_COMPONENTS_OVERVIEW.md
- 00_APPLICATION_COMMON_COMPONENTS_INTEGRATED.md

# ============================================================
# 3. SCOPE
# ============================================================

This folder contains:
- cross-application reusable component catalog
- canonical reuse boundary guidance
- PersonaOS-side shared meaning references
- BusinessOS-side shared capability references
- additive reusable candidates derived from application design work

# ============================================================
# 4. PRIMARY CONTENT
# ============================================================

- Common component catalog
- Ownership boundary summary
- Reuse decision guidance
- App-side residual responsibility guidance
- ShiftManager-derived additive common candidates

# ============================================================
# 5. USAGE RULE
# ============================================================

When designing a new application:
1. check this folder first
2. identify reusable common components
3. push reusable meaning to PersonaOS / BusinessOS when appropriate
4. keep only app-specific UI / entry / flow in the app design
5. add newly identified cross-app reusable candidates back into this folder

# ============================================================

# ============================================================
# 6. ADDITIVE LEDGER FILES
# ============================================================

additional_files:
- 003_APPLICATION_COMMON_COMPONENT_QUICKFORECAST_ADDITIVE_INDEX.md
- 003_APPLICATION_COMMON_COMPONENT_QUICKFORECAST_ADDITIVE.md
- 004_APPLICATION_COMMON_COMPONENTS_ADDITIVE_LEDGER_CANONICAL.md

meaning:
These files are additive staging files.

They are used to:
- collect newly discovered reusable components
- preserve promotion candidates before fixing them
- avoid polluting the fixed common set too early
- support later promotion into integrated / ledger / matrix

rule:
A component may first appear in an additive ledger,
then be promoted into:
- 00_APPLICATION_COMMON_COMPONENTS_INTEGRATED.md
- 001_APPLICATION_COMMON_COMPONENT_LEDGER.md
- 002_APPLICATION_COMMON_COMPONENT_REFERENCE_MATRIX.md

after abstraction quality and reuse clarity are confirmed.


# ============================================================
# 7. MASTER REGISTRY FILE
# ============================================================

additional_files:
- 011_APPLICATION_COMMON_COMPONENT_MASTER_REGISTRY.md

meaning:
This file is the consolidated registry of all fixed, additive,
absorbed, internal, and family-level common-component work
registered so far.

use_rule:
When the workspace grows large,
use this file first to understand current registration status
before editing ledger / matrix / additive files separately.

