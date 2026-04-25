# ============================================================
# PERSONA OS CIVILIZATION STRUCTURE ALIGNMENT REVIEW
# ============================================================

status: canonical-review
layer: meta
domain: structure
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines how PersonaOS
must align its top-level structure
to the CivilizationOS structure.

The goal is:

align top-level layers
preserve valid existing documents
avoid destructive moves before review
prepare later migration in a controlled way


# ============================================================
# 2. REVIEW CONCLUSION
# ============================================================

PersonaOS is structurally close to CivilizationOS,
but it is not yet fully aligned.

The main gaps were:

missing 060.integration
missing 100.security
missing 110.infrastructure

These top-level layers should exist
in PersonaOS as canonical layers.

Existing architecture subfolders already contain
documents related to integration and security,
so a migration review is required before file moves.


# ============================================================
# 3. TARGET TOP-LEVEL STRUCTURE
# ============================================================

PersonaOS should use the following top-level structure:

010.constitution
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
900.society
910.civilization
920.meta

Supplementary utility folders may remain:

999.archive
999.archive/999.archive/999.dump


# ============================================================
# 4. CURRENT OBSERVATION
# ============================================================

PersonaOS already has these canonical layers:

010.constitution
020.architecture
030.model
040.runtime
050.flow
070.operations
080.policy
090.interface
120.implementation
130.development
900.society
910.civilization
920.meta

But PersonaOS also contains integration-like and security-like
domains under architecture-level subfolders.

Therefore:

alignment is not a creation-only task
alignment is also a role reassignment task


# ============================================================
# 5. ALIGNMENT RULE
# ============================================================

Top-level layers must align with CivilizationOS.

Domain meaning must follow layer meaning.

Therefore:

020.architecture remains the place for design structure
060.integration becomes the place for integration-layer contracts
100.security becomes the place for security-layer contracts
110.infrastructure becomes the place for infrastructure-layer contracts

Architecture may still describe integration and security architecture,
but canonical integration/security/infrastructure layer documents
must eventually live in their own top-level layers.


# ============================================================
# 6. INITIAL REASSIGNMENT CANDIDATES
# ============================================================

The following existing architecture subtrees
are likely reassignment candidates:

020.architecture/060.integration
020.architecture/100.security

These must be reviewed file-by-file
before any physical move.

Reason:

some documents may be true architecture documents
some may actually belong to integration or security layers
some may need layered duplication rather than relocation


# ============================================================
# 7. WHAT SHOULD STAY IN 020.ARCHITECTURE
# ============================================================

The following kinds of documents should remain in architecture:

system structure
subsystem boundaries
domain relationships
builder-to-runtime boundaries
truth ownership boundaries
host/runtime separation
distribution authority boundaries
high-level security architecture
high-level integration architecture

Architecture explains structure and boundaries.
It does not replace later-layer operational contracts.


# ============================================================
# 8. WHAT SHOULD MOVE OR BE DUPLICATED INTO 060.INTEGRATION
# ============================================================

The following kinds of documents should eventually exist
in 060.integration:

host integration contracts
cross-system inbound/outbound contract definitions
PocketSecretary integration contracts
BusinessOS integration contracts
StreamingOS integration contracts
external package/release consumption contracts
event transport integration rules
consumer/provider responsibility contracts

Rule:
If a document defines how PersonaOS integrates with another system,
that content belongs canonically in integration layer.

Architecture-level equivalent may still remain
as a structural overview document.


# ============================================================
# 9. WHAT SHOULD MOVE OR BE DUPLICATED INTO 100.SECURITY
# ============================================================

The following kinds of documents should eventually exist
in 100.security:

persona truth protection rules
approval gate security
release/export security
local-only asset security
sensitive state handling
key/token handling
growth apply safety checks
distribution/license abuse prevention
host-embedded runtime security rules
security incident handling specific to PersonaOS

Rule:
If a document defines mandatory protection behavior,
threat boundary, or security control,
that content belongs canonically in security layer.

Architecture-level equivalent may still remain
as a structural security explanation.


# ============================================================
# 10. WHAT SHOULD MOVE OR BE CREATED IN 110.INFRASTRUCTURE
# ============================================================

The following kinds of documents should eventually exist
in 110.infrastructure:

runtime deployment foundation
asset delivery infrastructure
manifest delivery infrastructure
cache / CDN / bucket / storage infrastructure
key infrastructure
pipeline infrastructure
build/runtime environment infrastructure
render asset serving infrastructure
background asset infrastructure
host embedding technical foundation where infra-specific

Rule:
If a document defines technical substrate
rather than business, runtime, or policy meaning,
it belongs to infrastructure layer.


# ============================================================
# 11. MIGRATION PRINCIPLE
# ============================================================

Migration must follow this order:

Phase 1:
create missing top-level layers

Phase 2:
review existing documents and classify them

Phase 3:
create missing canonical layer documents
without deleting architecture documents

Phase 4:
move only documents whose current placement
is clearly wrong and whose layer role is unambiguous

Phase 5:
update indexes and overviews

This review currently covers Phase 2 policy.


# ============================================================
# 12. DOCUMENT CLASSIFICATION RULES
# ============================================================

Each document should be classified into one of these outcomes:

A. stay in current layer
B. duplicate into a new canonical layer
C. move to a new canonical layer
D. split into architecture part + later-layer part

This avoids destructive oversimplification.


# ============================================================
# 13. RECOMMENDED FIRST DOMAINS TO REVIEW
# ============================================================

The following PersonaOS domains should be reviewed first
for Civilization-style structure alignment:

visual-runtime
builder
growth
distribution / external-rights
host integration
security-sensitive release paths
manifest delivery
package delivery

These domains are the most likely
to already contain mixed layer semantics.


# ============================================================
# 14. NO-DELETION RULE
# ============================================================

No valid existing document should be deleted
only because the top-level structure changed.

Layer alignment is not a reason for information loss.

Preserve meaning first.
Refine placement second.


# ============================================================
# 15. FINAL DECISION
# ============================================================

PersonaOS must align its top-level structure
to the CivilizationOS layer structure.

The alignment is approved with the following method:

create missing top-level layers first
review existing mixed-layer domains second
migrate carefully by role
update indexes after reassignment

This is the canonical migration path.
