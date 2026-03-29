# ============================================================
# PUBLIC OFFICE CLASS ENUM MODEL
# ============================================================

status: canonical
layer: model
scope: public-office-actor-compatibility
component: public-office-class-enum

owner: Boss
prepared_by: Zero


# ============================================================
# 1. OFFICE CLASSES
# ============================================================

public_office_class_enum:
- civil_service_office
- political_office
- military_office
- judicial_office
- ceremonial_office
- public_corporation_office
- support_execution_role


# ============================================================
# 2. FINAL RULE
# ============================================================

Every office or role
must map to one primary public_office_class.
