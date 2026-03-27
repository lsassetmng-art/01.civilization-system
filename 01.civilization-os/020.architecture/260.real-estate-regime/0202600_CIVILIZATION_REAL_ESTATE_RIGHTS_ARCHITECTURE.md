# ============================================================
# CIVILIZATION REAL ESTATE RIGHTS ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official real-estate rights architecture of CivilizationOS.

This architecture defines how land, buildings, registry,
rights, transfer, and nation-specific property regimes work.

It is designed to support:

- democratic ownership systems
- socialist state-lease systems
- militarized control systems
- imperial grant systems
- other nation-specific property regimes

This architecture must also support:
- company registered premises
- company operating premises
- housing and occupancy
- marketplace-related sale and lease flows
- nation policy diversity without breaking common system structure


# ============================================================
# 1. CORE DESIGN PRINCIPLE
# ============================================================

CivilizationOS must not model all real estate
as simple ownership only.

Real estate must be split into two layers:

1. common property object layer
2. nation-specific rights regime layer

This separation is mandatory.

Common property object layer defines:
- land parcel
- building
- building unit
- location
- cadastral/boundary identity
- registry container

Nation-specific rights regime layer defines:
- what right types are allowed
- who may hold them
- whether transfer is allowed
- whether inheritance is allowed
- whether the state may revoke or seize
- whether foreigners may hold them
- whether companies may hold them

Core principle:

property object is common  
rights regime is nation-specific

Additional control principle:

nation-specific rights regimes are data-governed  
nation-specific rights regimes must be controlled by database policy records  
nation-specific rights regimes must not be hardcoded as fixed legal behavior

This is mandatory.


# ============================================================
# 2. WHY THIS ARCHITECTURE IS REQUIRED
# ============================================================

CivilizationOS contains multiple nation types
with different legal and political philosophies.

Examples:

democratic nation:
- ownership may be purchased
- ownership may be transferred
- lease may be created
- inheritance may be allowed

social nation:
- state retains ultimate land ownership
- people or companies receive lease/use rights
- outright private title may be prohibited
- transfer may be restricted or state-mediated

military nation:
- strategic areas may be tightly controlled
- military override may exist
- seizure or forced allocation may be strong
- foreign ownership may be prohibited

imperial nation:
- crown, noble, state, and subject rights may differ
- imperial grant rights may exist
- revocation by sovereign authority may exist
- full private ownership may coexist with granted estates

A single hardcoded ownership model is insufficient.

Therefore:
right types must be abstract and nation-governed.

And:
nation-specific behavior must be resolved from DB policy records,
not from hardcoded branching logic alone.


# ============================================================
# 3. COMMON PROPERTY OBJECT LAYER
# ============================================================

The following objects must remain structurally common
across all nations.

## 3.1 LAND PARCEL

A land parcel is the canonical ground-level property object.

A parcel should define:
- parcel_id
- nation_code
- region_code
- address_ref
- cadastral_boundary_ref
- zoning_profile_ref
- parcel_status
- parcel_area
- parcel_use_class

## 3.2 BUILDING

A building is a constructed property object
placed on one parcel or a valid multi-parcel relation.

A building should define:
- building_id
- parcel_id or parcel_set_ref
- building_type
- building_status
- building_use_class
- construction_state
- occupancy_capacity

## 3.3 BUILDING UNIT

A building unit is a subdivided usable real-estate object.

Examples:
- apartment
- office room
- retail unit
- warehouse unit
- studio unit

A building unit should define:
- building_unit_id
- building_id
- unit_code
- unit_type
- unit_status
- unit_area
- occupancy_profile_ref

## 3.4 ADDRESS / LOCATION

A location object should define:
- address_id
- nation_code
- region_code
- district_code
- formal_address_text
- location_coordinates where supported

## 3.5 CADASTRAL / BOUNDARY OBJECT

A cadastral or boundary object should define:
- cadastral_boundary_id
- parcel_id
- survey_version
- boundary_geometry_ref
- boundary_status

These are common property objects.
They must not change meaning by nation type.


# ============================================================
# 4. RIGHTS LAYER
# ============================================================

Rights must be modeled separately from property objects.

A property object exists.
A right is granted, owned, leased, assigned, or restricted
according to nation rules.

## 4.1 PROPERTY RIGHT

A property right is the canonical legal/effective relation
between a holder and a property object.

A property right should define:
- property_right_id
- nation_code
- property_object_type
- property_object_ref
- right_type
- holder_type
- holder_ref
- right_status
- origin_rule_ref
- transferability_rule_ref
- inheritance_rule_ref
- revocation_rule_ref
- issued_at
- expires_at nullable

## 4.2 HOLDER TYPES

Holder types may include:
- individual
- company
- nation
- state organ
- noble house
- military authority
- public trust
- cooperative body

## 4.3 RIGHT TYPES

Right types are not fixed to ownership only.

Possible right types include:
- ownership_right
- co_ownership_right
- lease_right
- tenancy_right
- occupancy_right
- state_allocation_right
- development_right
- commercial_use_right
- agricultural_use_right
- military_use_right
- imperial_grant_right
- easement_right
- lien_right
- mortgage_right

Ownership is only one right type among many.

This is a mandatory rule.


# ============================================================
# 5. NATION PROPERTY REGIME LAYER
# ============================================================

Nation-specific legal diversity must be expressed
through property regime rules, not through separate object universes.

## 5.1 NATION PROPERTY REGIME

A nation property regime should define:
- nation_property_regime_id
- nation_code
- regime_type
- regime_status
- default_land_right_model
- default_building_right_model
- foreign_holding_policy_ref
- company_holding_policy_ref
- inheritance_policy_ref
- expropriation_policy_ref

regime_type examples:
- democratic_private_title
- socialist_state_lease
- military_controlled
- imperial_grant
- communal_land
- hybrid_mixed

## 5.2 RIGHT TYPE RULES

A nation must define which right types are:
- allowed
- restricted
- prohibited
- state_approval_required

This should be expressed through:
- nation_property_right_type_rule

Example:
democratic nation
- ownership_right = allowed
- lease_right = allowed

social nation
- ownership_right = prohibited for land
- state_allocation_right = allowed
- lease_right = allowed with state control

military nation
- ownership_right = limited
- military_use_right = strong
- foreign_holding = prohibited

imperial nation
- imperial_grant_right = allowed
- ownership_right = conditionally allowed
- sovereign_revocation = strong

## 5.3 HOLDER ELIGIBILITY RULES

A nation must define who may hold what.

Examples:
- individuals may hold apartments
- companies may hold commercial units
- foreign companies may not hold strategic parcels
- nobles may hold grant-based estates
- military may occupy restricted areas without civil title

This should be expressed through:
- nation_property_holder_eligibility_rule

## 5.4 TRANSFER RULES

A nation must define transfer conditions.

Examples:
- free transfer
- state approval required
- inheritance only
- non-transferable lease
- limited transfer among approved parties

This should be expressed through:
- nation_property_transfer_rule

## 5.5 OVERRIDE / SEIZURE / EXPROPRIATION RULES

A nation must define when rights may be:
- revoked
- seized
- expired
- superseded
- forcibly reassigned

This should be expressed through:
- nation_property_expropriation_rule
- nation_property_override_rule

## 5.6 DATA-GOVERNED CONTROL RULE

The nation property regime layer must be data-governed.

This means:

- allowed right types must be DB-controlled
- holder eligibility must be DB-controlled
- transferability must be DB-controlled
- inheritance behavior must be DB-controlled
- expropriation behavior must be DB-controlled
- foreign/company holding behavior must be DB-controlled
- strategic restriction behavior must be DB-controlled

The architecture defines the model classes and semantics.
The active legal behavior must be resolved from policy records.

This layer must not rely on fixed hardcoded assumptions like:
- all democracies always allow all ownership
- all socialist states always prohibit all private rights
- all military states always seize all strategic land

Nation differences, law revisions, and future tuning
must be possible through DB policy updates.

## 5.7 FAIL-CLOSED RULE

If required nation property regime records are:
- missing
- contradictory
- unresolved
- invalid for the requested operation

then the system must fail closed.

Examples:
- transfer request must be rejected
- registry update must be rejected
- listing activation must be rejected
- closing completion must be rejected

No property right operation may continue
under ambiguous regime policy.


# ============================================================
# 6. REGISTRY LAYER
# ============================================================

The registry must be common in structure,
while the registered right types differ by nation.

This avoids one registry per ideology.

## 6.1 REAL ESTATE REGISTRY BOOK

A registry book should define:
- real_estate_registry_book_id
- nation_code
- registry_scope
- registry_status

## 6.2 REAL ESTATE REGISTRY ENTRY

A registry entry should define:
- real_estate_registry_entry_id
- registry_book_id
- property_object_type
- property_object_ref
- property_right_id
- right_type
- holder_type
- holder_ref
- entry_status
- effective_from
- effective_to nullable

## 6.3 TITLE / RIGHT CHAIN

A chain record should define:
- property_right_chain_record_id
- property_object_ref
- previous_right_ref nullable
- current_right_ref
- chain_event_type
- chain_event_at

chain_event_type examples:
- issue
- transfer
- inheritance
- revocation
- seizure
- lease_creation
- lease_expiry
- mortgage_creation
- lien_release

## 6.4 ENCUMBRANCE RECORD

An encumbrance record should define:
- encumbrance_record_id
- property_object_ref
- encumbrance_type
- priority_order
- holder_ref
- status

This is how liens, mortgages, easements,
or similar burdens remain visible.

Registry structure is common.
What gets registered depends on nation rules.

Registry acceptance must use DB-governed regime rules
when deciding whether a right type is registrable,
transferable, or revocable in that nation.


# ============================================================
# 7. TRANSACTION LAYER
# ============================================================

Real estate requires a dedicated transaction layer.

General marketplace sale logic is not enough.

## 7.1 PROPERTY LISTING

A property listing should define:
- property_listing_id
- property_object_ref
- offered_right_type
- seller_holder_ref
- listing_status
- listing_price_or_terms
- eligibility_rule_ref

## 7.2 PROPERTY OFFER

A property offer should define:
- property_offer_id
- property_listing_id
- buyer_holder_ref
- offered_terms
- offer_status

## 7.3 PROPERTY CONTRACT

A property contract should define:
- property_contract_id
- property_listing_id
- seller_holder_ref
- buyer_holder_ref
- contract_type
- settlement_terms
- approval_requirements
- contract_status

contract_type examples:
- sale
- lease
- state_allocation
- grant
- transfer_of_use
- inheritance_execution

## 7.4 CLOSING / SETTLEMENT

A closing record should define:
- property_closing_record_id
- property_contract_id
- settlement_status
- registry_update_status
- transfer_completion_status

## 7.5 DISPUTE / HOLD

A dispute record should define:
- property_dispute_id
- property_object_ref
- disputed_right_ref
- dispute_status
- freeze_effect

No property transfer should become final
without registry and settlement alignment.

Transaction evaluation must use DB-controlled regime policy
for:
- seller eligibility
- buyer eligibility
- offered right legality
- transfer legality
- approval requirement
- post-closing registry acceptance


# ============================================================
# 8. COMPANY LOCATION AND GAMEOS SELLER RELATION
# ============================================================

This architecture is required because companies
that sell games in GameOS must exist somewhere in Civilization.

A company may need:

- registered office
- operating premises
- owned building
- leased office
- granted district space
- state-assigned development parcel

Therefore a company should connect to real estate through:
- company_registered_premises
- company_operating_premises
- property_right_holder = company

A game-selling company may therefore be:

- owner of a commercial building unit
- tenant of an office unit
- holder of a state allocation right
- holder of an imperial grant right

GameOS seller eligibility may later depend on:
- valid company
- valid registered premises
- valid nation/legal existence

This connection is strategic and must be preserved.

Whether a company may hold a given right type
must be resolved by DB-controlled holder eligibility policy.


# ============================================================
# 9. HOUSING VS COMMERCIAL VS STRATEGIC PROPERTY
# ============================================================

The architecture must distinguish property classes.

Minimum property classes:
- residential
- commercial
- industrial
- agricultural
- civic
- military
- strategic_restricted

These classes affect:
- eligible holders
- allowed right types
- transferability
- foreign ownership
- company ownership
- override/seizure conditions

The effect of each class must be resolved
through DB-governed regime and rule records,
not hardcoded one-off logic.


# ============================================================
# 10. INHERITANCE, LEASE, AND OWNERSHIP MUST BE DISTINCT
# ============================================================

The system must never collapse these concepts.

Ownership:
- strongest full title-type relation where allowed

Lease:
- time-bounded or condition-bounded use relation

Occupancy:
- right to inhabit/use without full title

Inheritance:
- chain event that changes holder according to nation rule

Grant:
- sovereign/state-issued special right

These must remain distinct in model and registry.

Their legality and transition behavior
must be DB-controlled by nation policy records.


# ============================================================
# 11. FOREIGN / EXTERNAL HOLDER POLICY
# ============================================================

Each nation may define policy for:
- foreign individual holding
- foreign company holding
- inter-nation company holding
- strategic district exclusion
- reciprocal holding rule

This is mandatory for later trade and cross-border activity.

Model support should include:
- nation_property_foreign_holder_rule

Actual allowance/restriction behavior
must be controlled by DB policy records.


# ============================================================
# 12. MINIMUM REQUIRED MODEL SET
# ============================================================

At minimum, the next model layer should include:

common object layer:
- land_parcel
- building
- building_unit
- property_address
- cadastral_boundary

rights layer:
- property_right
- property_right_holder
- property_right_chain_record
- property_encumbrance_record
- occupancy_record

regime layer:
- nation_property_regime
- nation_property_right_type_rule
- nation_property_holder_eligibility_rule
- nation_property_transfer_rule
- nation_property_expropriation_rule
- nation_property_foreign_holder_rule
- nation_property_override_rule

registry layer:
- real_estate_registry_book
- real_estate_registry_entry

transaction layer:
- property_listing
- property_offer
- property_contract
- property_closing_record
- property_dispute

company linkage layer:
- company_registered_premises
- company_operating_premises


# ============================================================
# 13. VALIDATION PRINCIPLE
# ============================================================

A property transaction must be invalid if:
- the right type is prohibited by nation regime
- the holder type is not eligible
- transferability conditions are not satisfied
- encumbrance blocks transfer
- registry update is incomplete
- state approval is missing where required

A registry record must be invalid if:
- property object is unresolved
- right type is unresolved
- holder is unresolved
- chain continuity is broken

If required DB-controlled regime policy cannot be resolved,
the operation must fail closed.

This architecture is intended to be validation-friendly.


# ============================================================
# 14. RUNTIME / POLICY RESOLUTION ORDER
# ============================================================

When evaluating any property action,
the system should resolve in the following order:

1. property object existence
2. nation_code
3. nation_property_regime
4. right_type legality
5. holder eligibility
6. transfer / inheritance / override rules
7. encumbrance / registry state
8. transaction eligibility
9. settlement / closing completion
10. registry final update

If any required policy record is missing or conflicting,
processing must stop.


# ============================================================
# 15. FINAL ARCHITECTURAL RULE
# ============================================================

CivilizationOS real estate must be modeled as:

common property objects
+
nation-specific right regimes
+
common registry structure
+
regulated transaction flow

Nation-specific right regimes must be DB-controlled,
not hardcoded as fixed legal behavior.

Core summary:

- land/building/unit are common objects
- rights are nation-governed
- ownership is only one right type
- registry structure is common, registered rights differ by nation
- democratic, social, military, imperial, and hybrid regimes are all possible
- company premises and GameOS-selling companies can be connected cleanly
- nation-specific rights logic must be resolved from DB policy records
- ambiguous policy must fail closed
