# ============================================================
# RESEARCH AND TECHNOLOGY UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: research-and-technology-ui
component: research-and-technology-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for research, laboratory,
technology development,
systems research,
energy-support research,
and advanced technical operation in Civilization.

This document covers the UI family
where research-program continuity,
staff allocation,
equipment readiness,
output visibility,
and technical-service truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- research / technology / energy-support-related architectures
- Facility Type Master Architecture
- program, lab, equipment, staffing,
  budget, and output-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
research scoring formulas,
experiment internals,
technical output formulas,
budget formulas,
or lower research-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Research and technology UI
is the canonical UI family
for research-oriented facilities in Civilization.

This family applies when the primary truth is:

- research program operation
- laboratory or technical-site continuity
- researcher and technical-staff allocation
- equipment readiness
- program output visibility
- technical support continuity
- budget and resource posture
- research-linked service stability

Research UI is not identical to:

- manufacturing UI
- education UI
- infrastructure-only UI
- media UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- research UI structure
- research-operation screen responsibility
- relation between setup, operation, auto, and intervention
- program / staff / equipment / output surface composition
- relation between research truth and linked education / manufacturing / infrastructure truth

This document must not redefine:

- experiment internals
- research-output formulas
- technical-evaluation internals
- lower budget formulas
- lower research-record truth
- lower project-state internals

Those remain owned by
existing research architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. RESEARCH SERVICE TRUTH
# ============================================================

Research and technology UI belongs to
the research_technology_and_energy family.

This family may include:

- research institute
- technology support facility
- systems training center where research truth dominates
- energy support research facility
- advanced technical support complex
- laboratory-oriented site
  where research-service truth dominates

Research UI must resolve from
canonical_ui_target
and dominant research-service truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Research UI must allow
the operator to understand and manage
a live research institution
as part of the persistent Civilization world.

Research UI must expose:

- what research programs are active
- how staff and laboratories are allocated
- how equipment and technical resources are behaving
- how output and progress are changing
- how budget and support posture are holding
- what bottlenecks or instability are emerging
- what interventions are required

Research UI must not collapse
into abstract project bookkeeping only.


# ============================================================
# 6. RESEARCH UI LIFECYCLE
# ============================================================

The canonical research UI lifecycle is:

post-placement setup
-> institution and research-scope setup
-> program and staff setup
-> equipment and support setup
-> ongoing research operation
-> auto research operation where supported
-> observation
-> issue detection
-> intervention
-> continued research operation

This lifecycle must support
persistent program continuity,
world-linked technical development,
and long-cycle output visibility.


# ============================================================
# 7. RESEARCH UI MODES
# ============================================================

Research UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- program_mode where appropriate
- lab_mode where appropriate
- equipment_mode where appropriate
- authority_mode where appropriate


# ============================================================
# 8. RESEARCH COMMON SURFACES
# ============================================================

Research UI must inherit
the common facility UI frame
and must expose research-specialized surfaces.

Canonical research surfaces include:

- research summary surface
- institution identity and research-role surface
- program and focus surface
- staff and allocation surface
- laboratory and equipment surface
- output and progress surface
- budget and support visibility surface where applicable
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and research event surface
- permission and role surface
- linked education / manufacturing / infrastructure / support-facility surface


# ============================================================
# 9. RESEARCH SUMMARY SURFACE
# ============================================================

The research summary surface must provide
fast understanding of current research state.

This should expose visibility into:

- institution type
- active program posture
- staffing posture
- equipment posture
- output posture
- active issues
- active alerts
- current automation posture where supported
- recent intervention state


# ============================================================
# 10. INSTITUTION IDENTITY AND RESEARCH-ROLE SURFACE
# ============================================================

This surface defines
what kind of research institution exists.

It should expose:

- institution classification
- research or technical posture
- operating organization context
- district or jurisdiction context
- service-scope visibility
- linked research identity
- special public-facing role where relevant


# ============================================================
# 11. PROGRAM AND FOCUS SURFACE
# ============================================================

This surface covers
what research work is active.

It should expose:

- program grouping
- focus visibility
- overloaded or underused areas
- unsupported areas
- priority posture
- reconfiguration pressure


# ============================================================
# 12. STAFF AND ALLOCATION SURFACE
# ============================================================

This surface covers
human research capacity.

It should expose:

- staff grouping
- allocation posture
- coverage state
- overload flag
- specialization-need visibility
- reassignment need


# ============================================================
# 13. LABORATORY AND EQUIPMENT SURFACE
# ============================================================

This surface covers
technical readiness.

It should expose:

- lab grouping
- equipment posture
- readiness visibility
- degradation visibility
- bottleneck flag
- correction need


# ============================================================
# 14. OUTPUT AND PROGRESS SURFACE
# ============================================================

This surface covers
what the research effort is producing.

It should expose:

- output posture
- progress visibility
- unstable progress visibility
- blocked output flag
- correction urgency
- milestone posture where applicable


# ============================================================
# 15. BUDGET AND SUPPORT VISIBILITY SURFACE
# ============================================================

Where applicable,
the UI should expose
research-support posture.

It should expose:

- budget visibility
- support visibility
- burden concentration
- under-supported area visibility
- correction need


# ============================================================
# 16. AUTOMATION AND POLICY SURFACE
# ============================================================

Where research domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current research-operation posture
- program / staffing / equipment automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals


# ============================================================
# 17. KPI AND REPORT SURFACE
# ============================================================

Research KPI visibility is mandatory.

Typical KPI groups include:

- program continuity posture
- staffing sufficiency
- equipment readiness
- output posture
- support posture
- intervention frequency


# ============================================================
# 18. ISSUE AND ALERT SURFACE
# ============================================================

Research operation requires
explicit issue visibility.

Typical issue families include:

- staffing shortage
- equipment instability
- blocked progress
- under-supported program
- output degradation
- lab bottleneck
- urgent intervention trigger


# ============================================================
# 19. INTERVENTION STRUCTURE
# ============================================================

Research intervention must be explicit.

Typical intervention families include:

- reprioritize program
- reassign staff
- escalate equipment support
- correct technical bottleneck
- rebalance support posture
- temporary operating-posture correction where supported

Intervention must connect
to visible research conditions.


# ============================================================
# 20. RESEARCH / EDUCATION / MANUFACTURING RELATION
# ============================================================

Research UI is related to
education,
manufacturing,
and infrastructure systems,
but is not identical to them.

Research truth covers:

- research-program continuity
- technical output visibility
- laboratory readiness
- long-cycle technical development

Education truth covers:

- student and academic continuity

Manufacturing truth covers:

- production-process continuity
- transformation of inputs to outputs

Research UI may link to those surfaces,
but research-service truth must remain primary
when research routing is selected.


# ============================================================
# 21. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
research UI-edited truths such as:

- program grouping
- staff grouping
- equipment grouping
- output grouping
- support grouping
- issue grouping
- intervention target entities where needed

090.interface should define
research UI contracts such as:

- research summary exposure
- program and focus surfaces
- staff and allocation surfaces
- laboratory and equipment surfaces
- output and progress surfaces
- support visibility surfaces
- issue and intervention exposure contracts


# ============================================================
# 22. FINAL RULE
# ============================================================

Research and technology UI in Civilization must remain:

- research-service-truth aligned
- program-visible
- staffing-visible
- equipment-visible
- output-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from education-only or manufacturing-only truth

Research UI must treat research institutions
as live technical-development reality,
not only as project bookkeeping.
