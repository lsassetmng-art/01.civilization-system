# ============================================================
# RELIGIOUS CORPORATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: industry-pack
component: religious-corporation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the official architecture for religious_corporation.

religious_corporation is a user-creatable special entity
that operates doctrine, ritual, donation, and temple-related activity.


# ============================================================
# 2. CORE RESPONSIBILITIES
# ============================================================

- doctrine creation and distribution
- ritual operation
- donation program support
- community and faith structure support
- temple-centered facility governance


# ============================================================
# 3. SITE POSTURE
# ============================================================

Required:
- headquarters
- temple_site

Optional:
- branch
- service_site


# ============================================================
# 4. OUTPUT POSTURE
# ============================================================

Primary outputs:
- doctrine_text
- ritual_material
- recruitment_program
- donation_program
- religious_event_access


# ============================================================
# 5. LISTING RULE
# ============================================================

religious_corporation is base non-listable.


# ============================================================
# 6. FINAL RULE
# ============================================================

religious_corporation is a special non-standard company type
with doctrine-centered and ritual-centered operation.
