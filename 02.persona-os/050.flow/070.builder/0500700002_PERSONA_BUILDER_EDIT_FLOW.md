# ============================================================
# PERSONA BUILDER EDIT FLOW
# ============================================================

status: canonical
scope: persona.builder.edit.flow
system: persona-os
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical edit flow for Persona Builder.

This flow governs controlled modification
of Builder draft content.


# ============================================================
# FLOW
# ============================================================

1. draft load requested
2. actor access checked
3. section scope selected
4. change set submitted
5. section state updated
6. changed-section markers updated
7. prior validation invalidated if material
8. prior approval invalidated if material
9. audit record written
10. draft returned to editing state

Edit flow must fail closed if:

- draft does not exist
- actor has no authority
- section scope is invalid
- change set is structurally invalid
- audit persistence fails


# ============================================================
# OUTPUT
# ============================================================

Edit flow outputs:

- updated draft state
- updated section state
- change set reference
- invalidation markers where required
- audit reference
