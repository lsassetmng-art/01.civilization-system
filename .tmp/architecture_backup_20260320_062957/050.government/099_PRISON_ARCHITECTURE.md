# ============================================================
# PRISON ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Prison is a correctional institution handling detention.

attributes:
- prison_id
- nation_id
- level
- capacity
- occupancy
- security_rating

functions:
- detention
- sentence execution
- crime suppression support
- state stability support

effects:
- higher capacity reduces uncontrolled criminal overflow
- weak prison systems raise crime instability
- harsh prison policy may reduce loyalty
