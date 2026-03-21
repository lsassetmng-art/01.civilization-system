# ============================================================
# LOGGING AND ERROR HANDLING STANDARD
# ============================================================

status: canonical
scope: development
component: logging-and-error-handling-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical expectations
for runtime logs, error handling,
and production-grade error messages
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- logging structure
- runtime result states
- error message clarity
- retry and terminal failure handling
- production-safe message rules


# ============================================================
# CORE PRINCIPLE
# ============================================================

Logs and error messages must help operators,
developers, and maintainers understand
what happened, where it happened,
and what should happen next.

Silent failure is prohibited.


# ============================================================
# LOG FORMAT RULE
# ============================================================

System logs should use structured JSON
when emitted by runtime systems.

Typical fields may include:

- stage
- system
- component
- operation
- event_id
- run_id
- result
- reason_code
- retryable
- latency_ms
- timestamp


# ============================================================
# RESULT STATE RULE
# ============================================================

Three standard result states exist:

- SUCCESS
- RETRY
- DEAD

Definitions:

## SUCCESS
The operation completed correctly.

## RETRY
The operation failed in a retryable way.
Attempt count should increase.

## DEAD
The failure is terminal.
The item must not continue as active processing work.


# ============================================================
# ERROR MESSAGE RULE
# ============================================================

An error message must be understandable
in production operations.

A good error message should reveal:

- what failed
- where it failed
- why it failed when known
- whether retry is allowed
- what boundary blocked progress

Messages should be actionable when possible.


# ============================================================
# HUMAN MESSAGE RULE
# ============================================================

Human-readable error messages should be:

- short
- explicit
- operationally useful
- non-ambiguous

Good examples:

- signature verification failed; event marked DEAD
- access grant expired; usage disabled
- sync payload schema invalid; retry rejected
- database target not configured; execution aborted

Bad examples:

- failed
- invalid data
- something went wrong
- error occurred


# ============================================================
# REASON CODE RULE
# ============================================================

Where possible, logs and errors should include
a stable reason code
separate from the human-readable message.

Examples:

- SIGNATURE_VERIFICATION_FAILED
- ACCESS_GRANT_EXPIRED
- SCHEMA_VALIDATION_FAILED
- DATABASE_TARGET_MISSING
- RETRY_LIMIT_EXCEEDED

Reason codes support filtering and automation.
Human messages support operators.


# ============================================================
# RETRY RULE
# ============================================================

Retryable failures must be explicit.

A RETRY case should clearly indicate:

- why the attempt failed
- whether retry is safe
- whether attempt count increased
- when the next retry is expected if known


# ============================================================
# DEAD RULE
# ============================================================

Terminal failures must be explicit.

A DEAD case should clearly indicate:

- why the item became terminal
- which validation or limit caused it
- that active processing should stop


# ============================================================
# FAIL-CLOSED RULE
# ============================================================

When correctness or trust cannot be established,
the system should fail closed.

Logs and messages should make that visible.

Example:

- unverifiable payload rejected; fail-closed path applied


# ============================================================
# SECRET SAFETY RULE
# ============================================================

Logs and error messages must not expose:

- credentials
- raw secrets
- private keys
- full connection strings
- unsafe personally sensitive raw payloads

Operational visibility must not create security leakage.


# ============================================================
# COMMENT AND LOG RELATION RULE
# ============================================================

Comments explain why the code behaves this way.
Logs explain what happened at runtime.

Comments and logs should reinforce each other,
not duplicate each other blindly.


# ============================================================
# FINAL RULE
# ============================================================

Logs must be structured.
Errors must be understandable in production.
Retry and DEAD must be explicit.
Silent failure is prohibited.
