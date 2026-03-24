# ============================================================
# CIVILIZATION EXTERNAL INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define detailed external interface rules for CivilizationOS.

interface_categories:
- governance interface
- sync interface
- approval interface
- registry interface
- inspection interface

required_fields_when_applicable:
- interface_code
- contract_version
- source_domain
- target_domain
- correlation_id
- causation_id

compatibility_rule:
External interfaces must declare compatibility semantics explicitly.

truth_boundary:
Interfaces expose governed interaction surfaces.
They do not redefine source truth ownership.
