# ============================================================
# VISUAL RUNTIME DOCUMENT ROLE REVIEW
# ============================================================

status: canonical-review
layer: meta
domain: visual-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the reading order,
role separation,
and adoption priority
for Persona Visual Runtime documents.

The objective is not deletion.

The objective is:

clarify which documents are front-door documents
clarify which documents are detail documents
clarify which documents are host-facing
clarify which documents are internal execution detail
prevent host-side confusion
prevent duplicate entry points


# ============================================================
# 2. REVIEW CONCLUSION
# ============================================================

Visual Runtime documents are structurally valid,
but without a role review
the reading path is ambiguous.

The main ambiguity points were:

multiple overview-like documents
background-related documents at different abstraction levels
runtime detail documents without a clear host-facing doorway
implementation guidance existing without an explicit public interface chain

The strengthened document set resolves this
by establishing a canonical entry path
and by separating:

constitution
overview
host-facing architecture
runtime execution rules
host integration
implementation guidance
detailed sub-rules


# ============================================================
# 3. CANONICAL ENTRY PATH
# ============================================================

The canonical reading path for host adopters is:

1. 0101400001_PERSONA_VISUAL_RUNTIME_CONSTITUTION
2. 0201400001_PERSONA_VISUAL_RUNTIME_OVERVIEW
3. 0201400006_PERSONA_VISUAL_RUNTIME_PUBLIC_API_ARCHITECTURE
4. 0201400007_PERSONA_VISUAL_SURFACE_CONTRACT_ARCHITECTURE
5. 0201400008_PERSONA_VISUAL_BACKGROUND_RESOLUTION_ARCHITECTURE
6. 0400006_PERSONA_VISUAL_RUNTIME
7. 0401400004_PERSONA_VISUAL_RUNTIME_PUBLIC_API_RUNTIME
8. 0401400005_PERSONA_VISUAL_BACKGROUND_RESOLUTION_RUNTIME
9. 0601400001_POCKET_SECRETARY_VISUAL_RUNTIME_INTEGRATION
10. 0901400001_PERSONA_VISUAL_RUNTIME_PUBLIC_INTERFACE
11. 1201100001_VISUAL_RUNTIME_HOST_ADAPTER_IMPLEMENTATION
12. 1301400001_VISUAL_RUNTIME_DEVELOPMENT_GUIDE

This path is the official host-adoption path.


# ============================================================
# 4. ROLE CLASSIFICATION
# ============================================================

Visual Runtime documents are classified into
the following roles:

A. front-door canonical entry
B. host-facing contract
C. runtime execution detail
D. boundary / relation detail
E. implementation guidance
F. future development guidance


# ============================================================
# 5. DOCUMENT-BY-DOCUMENT ROLE REVIEW
# ============================================================


# ------------------------------------------------------------
# 5.1 CONSTITUTION
# ------------------------------------------------------------

0101400001_PERSONA_VISUAL_RUNTIME_CONSTITUTION.md

role:
front-door constitutional definition

purpose:
defines what Visual Runtime is
and what it is not

adoption_priority:
highest

notes:
all later documents must remain consistent with this document


# ------------------------------------------------------------
# 5.2 ARCHITECTURE ROOT
# ------------------------------------------------------------

0200005_PERSONA_VISUAL_ARCHITECTURE.md

role:
upper visual domain architecture

purpose:
explains the broader visual domain,
not only runtime

adoption_priority:
high, but not the first host-integration door

notes:
this document is broader than runtime itself.
It should remain as the parent architecture of the visual domain.


0201400001_PERSONA_VISUAL_RUNTIME_OVERVIEW.md

role:
runtime overview

purpose:
primary overview document for runtime itself

adoption_priority:
highest in architecture layer

notes:
this is the canonical first runtime-specific overview.


0201400002_PERSONA_VISUAL_STATE_ARCHITECTURE.md

role:
state detail architecture

purpose:
defines visual state concepts and transitions

adoption_priority:
detail document

notes:
not a front-door document.
Read after runtime overview.


0201400003_PERSONA_VISUAL_EXPRESSION_MAPPING_RULE.md

role:
expression mapping detail

purpose:
defines expression resolution logic

adoption_priority:
detail document

notes:
kept as specialized detail.
Not the main host entry.


0201400004_PERSONA_VISUAL_BACKGROUND_RUNTIME_ARCHITECTURE.md

role:
background detail architecture

purpose:
explains background architecture in detail

adoption_priority:
detail architecture

notes:
this should remain,
but 0201400008 becomes the host-facing background resolution doorway.


0201400005_PERSONA_BUILDER_TO_VISUAL_RUNTIME_ARCHITECTURE.md

role:
boundary architecture

purpose:
defines the boundary between builder and runtime

adoption_priority:
very high detail

notes:
critical to prevent builder/runtime confusion.
Keep as a major supporting document.


0201400006_PERSONA_VISUAL_RUNTIME_PUBLIC_API_ARCHITECTURE.md

role:
host-facing architecture doorway

purpose:
defines what the host sees as the runtime public API

adoption_priority:
highest

notes:
this is one of the core new front-door documents.


0201400007_PERSONA_VISUAL_SURFACE_CONTRACT_ARCHITECTURE.md

role:
host-facing contract architecture

purpose:
defines render surface contract semantics

adoption_priority:
highest

notes:
required for PocketSecretary and all hosts.


0201400008_PERSONA_VISUAL_BACKGROUND_RESOLUTION_ARCHITECTURE.md

role:
host-facing background resolution architecture

purpose:
defines canonical background priority and fallback structure

adoption_priority:
highest

notes:
this is the canonical background doorway for host understanding.


# ------------------------------------------------------------
# 5.3 MODEL
# ------------------------------------------------------------

0302400_PERSONA_VISUAL_PROFILE_MODEL.md

role:
visual profile truth model

purpose:
stores visual profile truth

adoption_priority:
supporting model

notes:
important, but not a host integration entry document.


0302406_PERSONA_DELIVERY_MANIFEST_MODEL.md

role:
manifest-related truth model

purpose:
defines manifest delivery data basis

adoption_priority:
supporting model

notes:
important for runtime inputs,
not a host-facing first read.


0302407_PERSONA_MANIFEST_PROJECTION_MODEL.md

role:
runtime input projection model

purpose:
defines runtime-consumable manifest projection

adoption_priority:
high supporting model

notes:
strongly related to runtime input.


0301400001_PERSONA_VISUAL_SURFACE_PROFILE_MODEL.md

role:
surface contract model

purpose:
defines reusable surface profile data

adoption_priority:
high

notes:
new model required for host integration clarity.


0301400002_PERSONA_VISUAL_RUNTIME_SESSION_MODEL.md

role:
runtime execution model

purpose:
defines session lifecycle state

adoption_priority:
high

notes:
new runtime-session model for explicit host/runtime lifecycle reasoning.


# ------------------------------------------------------------
# 5.4 RUNTIME
# ------------------------------------------------------------

0400006_PERSONA_VISUAL_RUNTIME.md

role:
runtime general rule document

purpose:
defines runtime overall behavior

adoption_priority:
highest in runtime layer

notes:
remains the main runtime general document.


0401400001_PERSONA_VISUAL_ANIMATION_RUNTIME_RULE.md

role:
animation-specific detail runtime document

purpose:
defines animation rules

adoption_priority:
detail runtime

notes:
keep as specialized execution detail.


0401400002_PERSONA_VISUAL_COMPOSE_RUNTIME.md

role:
composition-specific detail runtime document

purpose:
defines compose execution behavior

adoption_priority:
detail runtime

notes:
keep as specialized execution detail.


0401400003_VISUAL_RUNTIME_BACKGROUND_COMPOSE_RULE.md

role:
background compose detail runtime document

purpose:
defines actual background composition behavior

adoption_priority:
detail runtime

notes:
keep as specialized detail under the higher-level background runtime rule.


0401400004_PERSONA_VISUAL_RUNTIME_PUBLIC_API_RUNTIME.md

role:
host-facing runtime execution rule

purpose:
defines defaults, outputs, errors, disposal semantics

adoption_priority:
highest

notes:
core runtime contract for hosts.


0401400005_PERSONA_VISUAL_BACKGROUND_RESOLUTION_RUNTIME.md

role:
background runtime contract

purpose:
defines executable background resolution pipeline

adoption_priority:
highest

notes:
core runtime contract for host-facing background understanding.


0402402_PERSONA_MANIFEST_DELIVERY_RUNTIME.md

role:
input-delivery supporting runtime

purpose:
defines delivery behavior of manifest data

adoption_priority:
supporting

notes:
important for upstream input delivery,
but not the runtime rendering doorway.


# ------------------------------------------------------------
# 5.5 FLOW
# ------------------------------------------------------------

0501400001_PERSONA_VISUAL_DISPLAY_SURFACE_FLOW.md

role:
display flow detail

purpose:
defines display-related runtime flow

adoption_priority:
supporting flow

notes:
keep as detailed flow support.


0501400002_PERSONA_VISUAL_RUNTIME_HOST_INTEGRATION_FLOW.md

role:
host integration flow

purpose:
defines the official host sequence

adoption_priority:
highest

notes:
this is the operational host flow doorway.


0502402_PERSONA_MANIFEST_DELIVERY_FLOW.md

role:
manifest delivery supporting flow

purpose:
defines how manifest reaches runtime domain

adoption_priority:
supporting

notes:
input delivery support, not host entry.


# ------------------------------------------------------------
# 5.6 INTEGRATION
# ------------------------------------------------------------

0601400001_POCKET_SECRETARY_VISUAL_RUNTIME_INTEGRATION.md

role:
PocketSecretary host integration spec

purpose:
defines exactly how PocketSecretary must consume the runtime

adoption_priority:
highest for PocketSecretary

notes:
this is the main PocketSecretary-facing integration document.


# ------------------------------------------------------------
# 5.7 OPERATIONS
# ------------------------------------------------------------

0701400001_PERSONA_VISUAL_RUNTIME_OPERATION.md

role:
runtime observability and operation document

purpose:
defines monitoring priorities and incident classes

adoption_priority:
high operational document

notes:
required for stable production use.


0702402_PERSONA_MANIFEST_DELIVERY_OPERATION.md

role:
manifest delivery operation support

purpose:
defines delivery-side operational handling

adoption_priority:
supporting

notes:
adjacent, not the main runtime operation doorway.


# ------------------------------------------------------------
# 5.8 POLICY
# ------------------------------------------------------------

0801400001_PERSONA_VISUAL_RUNTIME_HOSTING_POLICY.md

role:
host compliance policy

purpose:
defines what host apps may and may not do

adoption_priority:
highest

notes:
important for keeping PocketSecretary and future hosts aligned.


0802402_PERSONA_MANIFEST_DELIVERY_POLICY.md

role:
manifest delivery policy support

purpose:
defines policy around upstream delivery

adoption_priority:
supporting

notes:
adjacent policy, not the host doorway.


# ------------------------------------------------------------
# 5.9 INTERFACE
# ------------------------------------------------------------

0901400001_PERSONA_VISUAL_RUNTIME_PUBLIC_INTERFACE.md

role:
public I/O contract

purpose:
defines request / response / event / error interface

adoption_priority:
highest

notes:
this is the formal host-facing interface definition.


0902402_PERSONA_MANIFEST_DELIVERY_INTERFACE_DETAIL.md

role:
manifest delivery interface support

purpose:
defines upstream input interface detail

adoption_priority:
supporting

notes:
not the main rendering host entry.


# ------------------------------------------------------------
# 5.10 IMPLEMENTATION
# ------------------------------------------------------------

VISUAL_RUNTIME_ARCHITECTURE_CANONICAL.md

role:
existing implementation-side canonical reference

purpose:
implementation-side architectural support

adoption_priority:
supporting implementation reference

notes:
keep as implementation support.
It should not replace the host-facing public interface documents.


1200004_PERSONA_VISUAL_COMPOSE_SPEC.md

role:
compose implementation detail

purpose:
defines detailed composition implementation specification

adoption_priority:
detail implementation

notes:
keep as a deep implementation document.


1201100001_VISUAL_RUNTIME_HOST_ADAPTER_IMPLEMENTATION.md

role:
host adapter implementation doorway

purpose:
defines the thin adapter pattern for hosts

adoption_priority:
highest

notes:
main implementation doorway for host-side integration.


1201100002_VISUAL_RUNTIME_ANDROID_RENDER_SURFACE_IMPLEMENTATION.md

role:
Android host implementation guidance

purpose:
defines Android render-surface integration pattern

adoption_priority:
highest for Android hosts

notes:
critical for PocketSecretary implementation clarity.


# ------------------------------------------------------------
# 5.11 DEVELOPMENT
# ------------------------------------------------------------

1301400001_VISUAL_RUNTIME_DEVELOPMENT_GUIDE.md

role:
future change control and development guidance

purpose:
defines how runtime evolves without breaking hosts

adoption_priority:
highest for future maintainers

notes:
should be used as the guardrail for future extensions.


# ============================================================
# 6. OVERLAP JUDGMENT
# ============================================================

The reviewed set contains overlap,
but the overlap is mostly valid and layered.

The overlap types are:

1. valid layered overlap
architecture vs runtime vs interface

2. valid overview/detail overlap
overview vs detailed background / animation / compose rules

3. valid integration specialization
general runtime host contract vs PocketSecretary-specific integration

This overlap should remain.

It is not duplicate waste.
It is layered specialization.

However,
documents at the same abstraction level
must avoid becoming parallel front doors.


# ============================================================
# 7. OFFICIAL FRONT-DOOR DOCUMENTS
# ============================================================

The following documents are declared
official front-door documents:

0101400001_PERSONA_VISUAL_RUNTIME_CONSTITUTION.md
0201400001_PERSONA_VISUAL_RUNTIME_OVERVIEW.md
0201400006_PERSONA_VISUAL_RUNTIME_PUBLIC_API_ARCHITECTURE.md
0201400007_PERSONA_VISUAL_SURFACE_CONTRACT_ARCHITECTURE.md
0201400008_PERSONA_VISUAL_BACKGROUND_RESOLUTION_ARCHITECTURE.md
0400006_PERSONA_VISUAL_RUNTIME.md
0401400004_PERSONA_VISUAL_RUNTIME_PUBLIC_API_RUNTIME.md
0401400005_PERSONA_VISUAL_BACKGROUND_RESOLUTION_RUNTIME.md
0601400001_POCKET_SECRETARY_VISUAL_RUNTIME_INTEGRATION.md
0901400001_PERSONA_VISUAL_RUNTIME_PUBLIC_INTERFACE.md
1201100001_VISUAL_RUNTIME_HOST_ADAPTER_IMPLEMENTATION.md
1301400001_VISUAL_RUNTIME_DEVELOPMENT_GUIDE.md

All other documents are supporting documents
unless another explicit review states otherwise.


# ============================================================
# 8. DOCUMENTS THAT MUST REMAIN SUPPORTING
# ============================================================

The following should remain supporting-detail documents
and should not act as primary host entry points:

0200005_PERSONA_VISUAL_ARCHITECTURE.md
0201400002_PERSONA_VISUAL_STATE_ARCHITECTURE.md
0201400003_PERSONA_VISUAL_EXPRESSION_MAPPING_RULE.md
0201400004_PERSONA_VISUAL_BACKGROUND_RUNTIME_ARCHITECTURE.md
0201400005_PERSONA_BUILDER_TO_VISUAL_RUNTIME_ARCHITECTURE.md
0401400001_PERSONA_VISUAL_ANIMATION_RUNTIME_RULE.md
0401400002_PERSONA_VISUAL_COMPOSE_RUNTIME.md
0401400003_VISUAL_RUNTIME_BACKGROUND_COMPOSE_RULE.md
0501400001_PERSONA_VISUAL_DISPLAY_SURFACE_FLOW.md
0302400_PERSONA_VISUAL_PROFILE_MODEL.md
0302406_PERSONA_DELIVERY_MANIFEST_MODEL.md
0302407_PERSONA_MANIFEST_PROJECTION_MODEL.md
0402402_PERSONA_MANIFEST_DELIVERY_RUNTIME.md
0502402_PERSONA_MANIFEST_DELIVERY_FLOW.md
0702402_PERSONA_MANIFEST_DELIVERY_OPERATION.md
0802402_PERSONA_MANIFEST_DELIVERY_POLICY.md
0902402_PERSONA_MANIFEST_DELIVERY_INTERFACE_DETAIL.md
VISUAL_RUNTIME_ARCHITECTURE_CANONICAL.md
1200004_PERSONA_VISUAL_COMPOSE_SPEC.md


# ============================================================
# 9. ACTION RULES
# ============================================================

1. Do not delete existing valid detail documents.
2. Use front-door documents as official reading and onboarding path.
3. Use supporting documents only after the entry path is understood.
4. Update future indexes to reflect this review.
5. Prevent new parallel front-door documents unless explicitly reviewed.
6. Keep PocketSecretary integration aligned with the front-door set.


# ============================================================
# 10. FINAL DECISION
# ============================================================

Visual Runtime documentation is approved
with strengthened canonical front-door structure.

The set is now considered understandable
for shared-runtime usage
and specifically understandable
for PocketSecretary as a compliant host application,
provided that future index / overview files reflect this role separation.
