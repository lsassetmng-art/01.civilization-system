# ============================================================
# SIGNATURE STANDARD
# ============================================================

status: canonical
scope: security
component: signature-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical signature standard
for signed payloads and signed artifacts
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- when signatures are used
- what signatures are expected to protect
- what validation means in signed contexts
- what signed artifacts must not imply automatically


# ============================================================
# CORE PRINCIPLE
# ============================================================

A signature proves signed integrity
only within the assumptions of the signing model.

A signature does not automatically prove
business validity, policy validity, or runtime safety.


# ============================================================
# SIGNED ARTIFACT RULE
# ============================================================

Signed artifacts may include:

- signed snapshots
- signed manifests
- signed release payloads
- signed verification materials

The signed scope must be explicit.


# ============================================================
# VALIDATION RULE
# ============================================================

Signature-aware consumers must verify:

- expected signature presence when required
- expected signer or trust path when relevant
- payload integrity
- signature applicability to the artifact scope

A valid signature does not override
other required validation layers.


# ============================================================
# NON-IMPLICATION RULE
# ============================================================

A valid signature does not automatically mean:

- policy approval
- license validity
- access validity
- runtime safety
- current freshness

Those meanings require their own checks.


# ============================================================
# FINAL RULE
# ============================================================

A signature is an integrity and trust-path mechanism,
not a universal validity shortcut.

Signature verification must be explicit and scoped.
