# ============================================================
# CODING COMMENT STANDARD
# ============================================================

status: canonical
scope: development
component: coding-comment-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical expectations
for source code comments
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- what comments should explain
- what comments should avoid
- how comments should support maintenance
- how comments should remain useful in production-facing systems


# ============================================================
# CORE PRINCIPLE
# ============================================================

Comments should explain meaning,
intent, safety, and operational risk.

Comments should not merely repeat the code.


# ============================================================
# REQUIRED COMMENT CASES
# ============================================================

Comments should be added when the code includes:

- structural boundary logic
- security-sensitive validation
- source-of-truth protection
- retry / DEAD / fail-closed behavior
- unusual constraints
- non-obvious implementation reason
- migration or compatibility handling


# ============================================================
# GOOD COMMENT RULE
# ============================================================

A good comment explains:

- why this logic exists
- what risk it prevents
- what boundary it protects
- what condition causes special handling
- what would break if it were removed


# ============================================================
# BAD COMMENT RULE
# ============================================================

Avoid comments that only restate the code.

Bad examples:

- increment counter
- call function
- set variable

These comments add noise without meaning.


# ============================================================
# MAINTENANCE RULE
# ============================================================

Comments should help a future maintainer understand:

- the structural intent
- the operational consequence
- the reason for validation or rejection
- the meaning of retry or terminal failure


# ============================================================
# PRODUCTION RULE
# ============================================================

Comments in production-facing systems
should support safe maintenance and incident understanding.

Comments should remain clear even when read
during debugging, incident review, or hotfix work.


# ============================================================
# LANGUAGE RULE
# ============================================================

Comments should be short, explicit, and unambiguous.

Prefer meaning over decoration.
Prefer structural explanation over narrative wording.


# ============================================================
# FINAL RULE
# ============================================================

Comments must explain intent, risk, boundary, or reason.

Do not comment what is obvious.
Comment what protects correctness.
