# PERSONA SIGNATURE VALIDATION SECURITY
status: canonical
layer: security
system: persona-os
scope: persona-signature-validation-security

Defines signature or trusted-dispatch validation requirements.

# ============================================================
# SIGNATURE VALIDATION VS LOCAL EXECUTION ACCEPTANCE
# ============================================================

Signature validation truth remains upstream
from VisualRuntime execution behavior.

VisualRuntime may accept inputs for local execution,
but local asset or input usability must not be interpreted as
signature verification truth.

The following equivalences are prohibited:

- local input accepted = signature verified
- asset usable = signature valid
- renderer-ready = signed-trust confirmed
- local fallback accepted = signature success

Render-local acceptance is execution readiness only.
It does not replace canonical signature validation truth.

