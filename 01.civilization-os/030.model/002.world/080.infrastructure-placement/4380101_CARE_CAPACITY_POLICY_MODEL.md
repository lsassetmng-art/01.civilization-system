# ============================================================
# CARE CAPACITY POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: hospital-detailed-configuration-and-auto-operation
component: care-capacity-policy

owner: Boss
prepared_by: Zero


care_capacity_policies:
- outpatient_priority
- inpatient_priority
- emergency_priority
- balanced_care
- specialist_priority
- public_access_priority
- military_emergency_priority


# FINAL RULE

Care capacity policy
must shape access and load distribution.
