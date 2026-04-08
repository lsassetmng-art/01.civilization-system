# ============================================================
# PERSONA OS EXISTING TO DOMAIN MAP ALIGNMENT REVIEW
# ============================================================

status: canonical-review
layer: meta
domain: migration-map
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines how existing PersonaOS documents
should be aligned to the new Civilization-style domain map.

The purpose is:

preserve valid existing content
avoid destructive migration
clarify canonical target domains
prepare controlled reassignment
prevent mixed-layer confusion


# ============================================================
# 2. REVIEW CONCLUSION
# ============================================================

PersonaOS already contains many valid documents,
but they were created before the new domain map
was fixed across all layers.

Therefore,
existing documents must now be evaluated
against the new domain structure.

This is not a deletion review.

This is a canonical reassignment review.


# ============================================================
# 3. TARGET DOMAIN MAP
# ============================================================

010.core
020.identity
030.state
040.memory
050.growth
060.builder
070.visual
080.runtime-hosting
090.snapshot
100.package
110.distribution
120.external-rights
130.access-license-transfer
140.integration
150.security
160.governance
170.operations-support


# ============================================================
# 4. CLASSIFICATION OUTCOMES
# ============================================================

Each existing document must be classified as one of:

A. STAY
Keep in current layer/domain because placement is already correct.

B. DUPLICATE
Keep current document, but also create a new canonical document
in the new target domain/layer.

C. MOVE
Physically move when current placement is clearly wrong
and semantic role is unambiguous.

D. SPLIT
Split one mixed document into architecture/detail,
or into earlier-layer and later-layer documents.

E. ARCHIVE-LATER
Keep temporarily untouched because it needs more detailed review.


# ============================================================
# 5. HIGH-PRIORITY EXISTING CLUSTERS
# ============================================================

The following existing clusters need priority review.

1. builder cluster
2. visual cluster
3. runtime-hosting cluster
4. growth cluster
5. snapshot cluster
6. package / distribution cluster
7. external-rights cluster
8. license / access / transfer cluster
9. integration-like documents currently under architecture
10. security-like documents currently under architecture


# ============================================================
# 6. CLUSTER-LEVEL ALIGNMENT JUDGMENT
# ============================================================


# ------------------------------------------------------------
# 6.1 BUILDER CLUSTER
# ------------------------------------------------------------

Existing meaning:
draft
authoring
validation
approval preparation
publish preparation
builder ui

Target domain:
060.builder

Layer spread:
020.architecture
030.model
040.runtime
050.flow
060.integration
070.operations
080.policy
090.interface
100.security
110.infrastructure
120.implementation
130.development

judgment:
APPROVED AS CORE CANONICAL DOMAIN

migration_rule:
Existing builder documents should converge toward 060.builder.
If an older builder document is valid but unnumbered or misgrouped,
prefer DUPLICATE or MOVE after file-by-file review.

default outcome:
STAY or DUPLICATE first, MOVE later


# ------------------------------------------------------------
# 6.2 VISUAL CLUSTER
# ------------------------------------------------------------

Existing meaning:
visual profile
visual composition
visual runtime
background rendering
expression mapping

Target domain:
070.visual

Layer spread:
020.architecture
030.model
040.runtime
050.flow
080.policy
090.interface
100.security
110.infrastructure
120.implementation
130.development

judgment:
APPROVED AS CORE CANONICAL DOMAIN

migration_rule:
Existing visual-runtime documents remain valid,
but should be interpreted through 070.visual going forward.

special note:
host-specific runtime consumption belongs in 080.runtime-hosting
when the focus is host/runtime boundary rather than visual truth itself.

default outcome:
STAY for truth/composition docs
DUPLICATE or SPLIT for host-oriented docs


# ------------------------------------------------------------
# 6.3 RUNTIME-HOSTING CLUSTER
# ------------------------------------------------------------

Existing meaning:
runtime session
host binding
surface hosting
PocketSecretary host usage
manifest consumption
container/session lifecycle

Target domain:
080.runtime-hosting

judgment:
APPROVED AS CANONICAL DOMAIN

migration_rule:
Existing host/runtime boundary documents should converge here,
even if some originated under visual domains.

default outcome:
DUPLICATE first, MOVE only after host/runtime distinction is stable


# ------------------------------------------------------------
# 6.4 GROWTH CLUSTER
# ------------------------------------------------------------

Existing meaning:
growth request
growth apply
growth result event
growth history
external request consumption

Target domain:
050.growth

judgment:
APPROVED AS CORE TRUTH DOMAIN

migration_rule:
Growth-related truth, runtime, flow, policy, and interface docs
must converge toward 050.growth.

special note:
integration contracts for BusinessOS or other systems
may also have corresponding 140.integration documents.

default outcome:
STAY for core truth docs
DUPLICATE for integration-facing variants


# ------------------------------------------------------------
# 6.5 SNAPSHOT CLUSTER
# ------------------------------------------------------------

Existing meaning:
snapshot issue
snapshot verification
release-oriented immutable unit
snapshot delivery basis

Target domain:
090.snapshot

judgment:
APPROVED AS CANONICAL DOMAIN

migration_rule:
Existing snapshot documents should converge toward 090.snapshot.

default outcome:
STAY or MOVE depending on current placement clarity


# ------------------------------------------------------------
# 6.6 PACKAGE / DISTRIBUTION CLUSTER
# ------------------------------------------------------------

Existing meaning:
package
package item
assembly
release
distribution record
publish channel

Target domains:
100.package
110.distribution

judgment:
APPROVED AS TWO DISTINCT DOMAINS

migration_rule:
Assembly meaning belongs in 100.package.
Channel/release meaning belongs in 110.distribution.

default outcome:
SPLIT mixed docs where needed


# ------------------------------------------------------------
# 6.7 EXTERNAL-RIGHTS CLUSTER
# ------------------------------------------------------------

Existing meaning:
external release
external usage
distribution to outside systems
rights boundary

Target domain:
120.external-rights

judgment:
APPROVED AS CANONICAL DOMAIN

migration_rule:
Documents about authority to release/use persona outside PersonaOS
must converge here.

default outcome:
STAY or MOVE depending on current scope purity


# ------------------------------------------------------------
# 6.8 LICENSE / ACCESS / TRANSFER CLUSTER
# ------------------------------------------------------------

Existing meaning:
license
access grant
transfer
usage permission
consumer rights

Target domain:
130.access-license-transfer

judgment:
APPROVED AS CANONICAL DOMAIN

migration_rule:
Rights execution documents should converge here.

default outcome:
STAY for already-pure rights docs
SPLIT where mixed with general distribution meaning


# ------------------------------------------------------------
# 6.9 INTEGRATION-LIKE ARCHITECTURE CLUSTER
# ------------------------------------------------------------

Existing meaning:
some documents currently describe integration semantics
inside architecture subtrees

Target domain:
140.integration
and/or 060.integration by layer

judgment:
REVIEW REQUIRED

migration_rule:
Structural overview may stay in architecture.
Operational/provider-consumer contract meaning
must also exist in integration layer.

default outcome:
DUPLICATE or SPLIT


# ------------------------------------------------------------
# 6.10 SECURITY-LIKE ARCHITECTURE CLUSTER
# ------------------------------------------------------------

Existing meaning:
some documents currently describe protection requirements
inside architecture subtrees

Target domain:
150.security
and/or 100.security by layer

judgment:
REVIEW REQUIRED

migration_rule:
High-level threat/boundary explanation may stay in architecture.
Protection controls and mandatory enforcement meaning
must also exist in security layer.

default outcome:
DUPLICATE or SPLIT


# ============================================================
# 7. MIGRATION PRIORITY ORDER
# ============================================================

Migration should proceed in this order:

Priority 1:
050.growth
060.builder
070.visual
080.runtime-hosting

Priority 2:
090.snapshot
100.package
110.distribution

Priority 3:
120.external-rights
130.access-license-transfer

Priority 4:
140.integration
150.security
160.governance
170.operations-support

Reason:
Priority 1 domains define the active core of PersonaOS behavior.


# ============================================================
# 8. FILE-BY-FILE REVIEW RULE
# ============================================================

Before moving any existing file,
ask these questions:

1. Is the current layer correct?
2. Is the current domain correct?
3. Is the document pure or mixed?
4. Does the document describe structure or enforcement?
5. Does it need a corresponding later-layer duplicate?
6. Would moving it reduce clarity or improve clarity?

Only after these questions may MOVE be chosen.


# ============================================================
# 9. NO-DESTRUCTION RULE
# ============================================================

No existing valid document should be deleted
only because the new domain map exists.

Preserve meaning first.
Align placement second.
Update indexes third.
Move only when safe.


# ============================================================
# 10. OFFICIAL MIGRATION STYLE
# ============================================================

The official migration style is:

review first
duplicate or split where necessary
move only after role clarity
update indexes after alignment
archive only after stability is proven


# ============================================================
# 11. FINAL DECISION
# ============================================================

The new domain map is approved
as the canonical target structure for PersonaOS.

Existing documents must now be aligned
through controlled cluster-by-cluster review,
not by destructive bulk movement.

This review is the canonical migration base.
