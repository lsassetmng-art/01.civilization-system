# PERSONA APPLY SECURITY
status: canonical
layer: security
system: persona-os
scope: persona-apply-security

Defines baseline security for inbound apply.

# ============================================================
# PROTECTION GATE VS EXECUTION-SIDE VALIDATION
# ============================================================

VisualRuntime may participate in protected execution paths,
but PersonaOS security verdict authority remains upstream
from render execution logic.

Security documents must explicitly distinguish between:

- protection-gate verification
- authorization verdict
- integrity verification
- trusted-path verification
- render-local validation
- asset availability confirmation
- runtime execution readiness

The following equivalences are prohibited:

- render validation = security verdict
- asset lookup success = authorization success
- runtime-ready = protected-path cleared
- renderer acceptance = canonical security pass
- local fallback availability = authorized access

Execution readiness may support rendering,
but it must not silently replace canonical security truth.

