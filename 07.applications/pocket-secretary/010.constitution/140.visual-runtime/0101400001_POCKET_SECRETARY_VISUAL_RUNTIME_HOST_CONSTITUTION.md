# ============================================================
# POCKET SECRETARY VISUAL RUNTIME HOST CONSTITUTION
# ============================================================

status: canonical
layer: constitution
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

PocketSecretary is a host application
for Persona Visual Runtime.

PocketSecretary must embed Visual Runtime
as a shared canonical rendering component.

PocketSecretary must not reimplement
canonical persona rendering semantics.


# ============================================================
# 2. HOST POSITION
# ============================================================

PocketSecretary is responsible for:

screen ownership
container ownership
host lifecycle ownership
runtime session ownership
host UX around runtime output

PocketSecretary is not responsible for:

persona composition semantics
background priority redefinition
builder rule execution
visual truth mutation


# ============================================================
# 3. CONSTITUTIONAL RULES
# ============================================================

1. PocketSecretary must use canonical runtime contracts.
2. PocketSecretary must choose an explicit surface contract.
3. PocketSecretary must dispose runtime sessions explicitly.
4. PocketSecretary must preserve runtime fallback semantics.
5. PocketSecretary must remain persona-first in degraded conditions.
