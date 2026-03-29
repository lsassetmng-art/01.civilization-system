# ============================================================
# PROPERTY ROLE SEPARATION MODEL
# ============================================================

status: canonical
layer: model
scope: builder-execution-and-property-revenue-distribution
component: property-role-separation

owner: Boss
prepared_by: Zero


# PROPERTY ROLES

property_roles:
- owner
- tenant
- operator
- occupant
- leaseholder
- assigned_resident


# RULE

Role separation is mandatory.

Using,
operating,
or residing in a property
must not automatically imply ownership.


# FINAL RULE

Property role semantics
must remain explicit and non-collapsed.
