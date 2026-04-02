# ============================================================
# CIVILIZATION NATION BUILDER EXTENDED ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the extended nation builder architecture
inside CivilizationOS.

This extension adds:
- nation templates
- identity symbols and colors
- governance and authority structure
- major city role definitions
- population composition
- priority industries
- culture/religion/value tags
- public service baselines
- holiday/event definitions
- operating difficulty/profile
- initial nation parameter frame
- nation notifications/dashboard


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Nation builder should support not only
legal/administrative structure,
but also civilization-facing identity and operational context.

Core principle:

a nation is not only a ruleset
but also a political, symbolic, social,
economic, and operational structure


# ============================================================
# 2. EXTENDED NATION DOMAINS
# ============================================================

The extended nation builder should support at minimum:
- nation template and preset
- symbolic identity
- governance seats and authority structure
- city hierarchy and city roles
- population composition
- industrial priority structure
- culture/religion/value profile
- public service baseline
- holiday and national event profile
- operating difficulty / governance profile
- initial parameter frame
- notification/dashboard profile


# ============================================================
# 3. TEMPLATE PRINCIPLE
# ============================================================

Nation builder should support nation templates.

Examples:
- commercial_nation_template
- education_nation_template
- military_nation_template
- culture_nation_template
- religion_nation_template
- hybrid_nation_template

Templates are presets,
not immutable final truth.


# ============================================================
# 4. SYMBOLIC IDENTITY PRINCIPLE
# ============================================================

Nation identity should support:
- flag
- emblem / crest
- national colors
- map color
- display identity set

Symbolic identity is distinct from legal identity.


# ============================================================
# 5. GOVERNANCE PRINCIPLE
# ============================================================

Nation builder should support governance structure.

Minimum governance support:
- governance style
- authority seats
- head-of-state profile
- head-of-government profile
- legislature profile
- judiciary profile
- military command profile
- religious authority relation where applicable


# ============================================================
# 6. CITY HIERARCHY PRINCIPLE
# ============================================================

Nation builder should support more than one city role.

Minimum city roles:
- capital_city
- sub_capital_city
- industrial_core_city
- academic_core_city
- port_core_city
- religious_core_city
- cultural_core_city

These roles should connect to facilities,
zoning, and company distribution later.


# ============================================================
# 7. POPULATION / INDUSTRY / VALUE PRINCIPLE
# ============================================================

Nation builder should support:
- population composition
- priority industries
- culture/religion/value tags

These define the social/economic character of the nation,
not only its rules.


# ============================================================
# 8. PUBLIC SERVICE / EVENT PRINCIPLE
# ============================================================

Nation builder should support:
- public service baseline targets
- holiday profile
- national event profile

These are important for later operations,
social simulation, and scheduling logic.


# ============================================================
# 9. INITIAL FRAME PRINCIPLE
# ============================================================

Nation builder should support an initial parameter frame
without forcing immediate final numeric fixation.

This frame may include:
- initial facility frame
- initial company frame
- initial market frame
- initial population frame
- initial asset frame

This is preparatory structure for later nation data setup.


# ============================================================
# 10. NOTIFICATION PRINCIPLE
# ============================================================

Nation builder should support a nation notification/dashboard profile.

Minimum notification families:
- opening notification
- company notification
- market/listing notification
- infrastructure notification
- religion/culture notification
- service shortage notification


# ============================================================
# 11. FINAL ARCHITECTURAL RULE
# ============================================================

Extended nation builder in CivilizationOS must be:
- identity-aware
- governance-aware
- city-role-aware
- population-aware
- industry-aware
- culture-aware
- service-aware
- event-aware
- notification-aware
