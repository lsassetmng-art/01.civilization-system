# ============================================================
# BUSINESS AI WORKER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: business-os
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for employment resolution,
assignment resolution, and company-grown knowledge use.

runtime areas:
- employment resolution
- assignment resolution
- usage-scope check
- company-grown knowledge read
- usage log write

rules:
- invalid employment must fail closed
- invalid assignment must fail closed
