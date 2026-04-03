# ============================================================
# COMPANY BUILDER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: government.company_builder
document_id: 01502001

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Defines the architecture for company builder inside CivilizationOS.

This domain governs builder-side configuration of companies,
their category, structure, ownership, operating mode, presets,
and publishable company setup.

# ============================================================
# 2. SCOPE
# ============================================================

This architecture covers:

- company template definition
- ownership and operating structure
- industry and business category assignment
- staffing and facility preset linkage
- builder enum/value set
- validation and publication boundary

# ============================================================
# 3. BOUNDARY
# ============================================================

Company builder defines company design structure.

It does not own:

- nation constitution
- city-specific placement
- live runtime operations
- accounting execution

# ============================================================
# 4. RESULT
# ============================================================

Company builder is a distinct government-side builder branch
and must remain independent from nation builder and city builder.
