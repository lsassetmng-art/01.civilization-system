# PERSONA TRUSTED CALLER SECURITY
status: canonical
layer: security
system: persona-os
scope: persona-trusted-caller-security

Defines trusted caller validation requirements.

# ============================================================
# TRUSTED CALLER TRUTH VS RUNTIME CONVENIENCE
# ============================================================

Trusted-caller truth remains upstream from VisualRuntime execution.

Render/session readiness, local acceptance,
or host-side convenience behavior must not be interpreted as
trusted-caller truth.

The following equivalences are prohibited:

- renderer/session ready = trusted caller
- local render acceptance = trusted caller verified
- execution convenience = caller trust truth
- host/runtime usability = canonical caller trust

Render execution may depend on upstream trusted-caller truth,
but it does not redefine or replace it.

