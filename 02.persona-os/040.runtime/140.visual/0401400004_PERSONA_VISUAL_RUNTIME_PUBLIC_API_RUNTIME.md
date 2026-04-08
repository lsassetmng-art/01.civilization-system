# ============================================================
# PERSONA VISUAL RUNTIME PUBLIC API RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: visual-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the canonical runtime behavior
for the public API exposed by Visual Runtime.


# ============================================================
# 2. REQUIRED INPUTS
# ============================================================

To create a usable session,
the runtime requires:

surface profile
manifest projection payload
host runtime options
container attachment step

Optional inputs:

explicit background request
initial visual state
initial expression
initial animation mode


# ============================================================
# 3. DEFAULTING RULES
# ============================================================

If initial visual state is absent:
use neutral default state

If expression is absent:
use manifest default expression

If animation mode is absent:
use surface-profile default animation mode

If background request is absent:
run background resolution pipeline


# ============================================================
# 4. OUTPUT RULES
# ============================================================

The runtime outputs:

bound render surface
runtime event stream
session state transitions
fallback notifications
error notifications

The runtime does not output persona truth mutation.


# ============================================================
# 5. RUNTIME ERROR BEHAVIOR
# ============================================================

Recoverable errors:

missing optional background asset
missing optional animation asset
late asset fetch timeout within retry budget

Terminal errors:

invalid manifest contract
unsupported surface contract
container attach failure beyond retry budget
session lifecycle corruption

Recoverable errors must emit event and continue by fallback.
Terminal errors must emit event and force deterministic error state.


# ============================================================
# 6. DISPOSAL RULES
# ============================================================

disposeSession must:

stop active animation
detach container binding
release session-scoped resources
stop event emission
mark session disposed

Disposal must be idempotent.
