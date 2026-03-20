# ============================================================
# CIVILIZATION ALL DOMAIN SPECS
# CivilizationOS Canonical Bundle
# ============================================================

status: canonical-bundle
scope: civilization.all-domain.specs
component: civilization-all-domain-specs

owner: Boss
prepared_by: Zero

description:
Bundle of formal domain specifications for all CivilizationOS domains.
This file is intended as the canonical bulk foundation before per-model design expansion.

domain_count: 120

# ============================================================
# DOMAIN SPECIFICATIONS
# ============================================================

# ------------------------------------------------------------
# WORLD_SYSTEM
# ------------------------------------------------------------

model_id: 0200010000
domain_name: world_system
system_name: world_to_nation_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for world within CivilizationOS.

main_models:
- world_system
- world_registry
- world_entity
- world_network
- world_policy_anchor

main_metrics:
- world_index
- world_capacity
- world_risk_score
- world_growth_rate
- world_stability_indicator

main_events:
- world_started
- world_disrupted
- world_expanded
- world_stressed
- world_stabilized

main_policies:
- world_policy
- world_regulation
- world_support_program

main_registries:
- world_registry
- world_event_log
- world_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# REGION_SYSTEM
# ------------------------------------------------------------

model_id: 0200020000
domain_name: region_system
system_name: world_to_nation_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for region within CivilizationOS.

main_models:
- region_system
- region_registry
- region_entity
- region_network
- region_policy_anchor

main_metrics:
- region_index
- region_capacity
- region_risk_score
- region_growth_rate
- region_stability_indicator

main_events:
- region_started
- region_disrupted
- region_expanded
- region_stressed
- region_stabilized

main_policies:
- region_policy
- region_regulation
- region_support_program

main_registries:
- region_registry
- region_event_log
- region_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# NATION_SYSTEM
# ------------------------------------------------------------

model_id: 0200030000
domain_name: nation_system
system_name: world_to_nation_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for nation within CivilizationOS.

main_models:
- nation_system
- nation_registry
- nation_entity
- nation_network
- nation_policy_anchor

main_metrics:
- nation_index
- nation_capacity
- nation_risk_score
- nation_growth_rate
- nation_stability_indicator

main_events:
- nation_started
- nation_disrupted
- nation_expanded
- nation_stressed
- nation_stabilized

main_policies:
- nation_policy
- nation_regulation
- nation_support_program

main_registries:
- nation_registry
- nation_event_log
- nation_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# SUBNATIONAL_GOVERNMENT_SYSTEM
# ------------------------------------------------------------

model_id: 0200040000
domain_name: subnational_government_system
system_name: world_to_nation_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for subnational_government within CivilizationOS.

main_models:
- subnational_government_system
- subnational_government_registry
- subnational_government_entity
- subnational_government_network
- subnational_government_policy_anchor

main_metrics:
- subnational_government_index
- subnational_government_capacity
- subnational_government_risk_score
- subnational_government_growth_rate
- subnational_government_stability_indicator

main_events:
- subnational_government_started
- subnational_government_disrupted
- subnational_government_expanded
- subnational_government_stressed
- subnational_government_stabilized

main_policies:
- subnational_government_policy
- subnational_government_regulation
- subnational_government_support_program

main_registries:
- subnational_government_registry
- subnational_government_event_log
- subnational_government_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# GOVERNMENT_SYSTEM
# ------------------------------------------------------------

model_id: 0200050000
domain_name: government_system
system_name: governance_and_legal_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for government within CivilizationOS.

main_models:
- government_system
- government_registry
- government_entity
- government_network
- government_policy_anchor

main_metrics:
- government_index
- government_capacity
- government_risk_score
- government_growth_rate
- government_stability_indicator

main_events:
- government_started
- government_disrupted
- government_expanded
- government_stressed
- government_stabilized

main_policies:
- government_policy
- government_regulation
- government_support_program

main_registries:
- government_registry
- government_event_log
- government_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# LEGISLATIVE_SYSTEM
# ------------------------------------------------------------

model_id: 0200060000
domain_name: legislative_system
system_name: governance_and_legal_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for legislative within CivilizationOS.

main_models:
- legislative_system
- legislative_registry
- legislative_entity
- legislative_network
- legislative_policy_anchor

main_metrics:
- legislative_index
- legislative_capacity
- legislative_risk_score
- legislative_growth_rate
- legislative_stability_indicator

main_events:
- legislative_started
- legislative_disrupted
- legislative_expanded
- legislative_stressed
- legislative_stabilized

main_policies:
- legislative_policy
- legislative_regulation
- legislative_support_program

main_registries:
- legislative_registry
- legislative_event_log
- legislative_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# JUDICIAL_SYSTEM
# ------------------------------------------------------------

model_id: 0200070000
domain_name: judicial_system
system_name: governance_and_legal_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for judicial within CivilizationOS.

main_models:
- judicial_system
- judicial_registry
- judicial_entity
- judicial_network
- judicial_policy_anchor

main_metrics:
- judicial_index
- judicial_capacity
- judicial_risk_score
- judicial_growth_rate
- judicial_stability_indicator

main_events:
- judicial_started
- judicial_disrupted
- judicial_expanded
- judicial_stressed
- judicial_stabilized

main_policies:
- judicial_policy
- judicial_regulation
- judicial_support_program

main_registries:
- judicial_registry
- judicial_event_log
- judicial_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# ELECTION_SYSTEM
# ------------------------------------------------------------

model_id: 0200080000
domain_name: election_system
system_name: governance_and_legal_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for election within CivilizationOS.

main_models:
- election_system
- election_registry
- election_entity
- election_network
- election_policy_anchor

main_metrics:
- election_index
- election_capacity
- election_risk_score
- election_growth_rate
- election_stability_indicator

main_events:
- election_started
- election_disrupted
- election_expanded
- election_stressed
- election_stabilized

main_policies:
- election_policy
- election_regulation
- election_support_program

main_registries:
- election_registry
- election_event_log
- election_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# PUBLIC_ADMINISTRATION_SYSTEM
# ------------------------------------------------------------

model_id: 0200090000
domain_name: public_administration_system
system_name: governance_and_legal_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for public_administration within CivilizationOS.

main_models:
- public_administration_system
- public_administration_registry
- public_administration_entity
- public_administration_network
- public_administration_policy_anchor

main_metrics:
- public_administration_index
- public_administration_capacity
- public_administration_risk_score
- public_administration_growth_rate
- public_administration_stability_indicator

main_events:
- public_administration_started
- public_administration_disrupted
- public_administration_expanded
- public_administration_stressed
- public_administration_stabilized

main_policies:
- public_administration_policy
- public_administration_regulation
- public_administration_support_program

main_registries:
- public_administration_registry
- public_administration_event_log
- public_administration_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# CENTRAL_BANK_SYSTEM
# ------------------------------------------------------------

model_id: 0200100000
domain_name: central_bank_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for central_bank within CivilizationOS.

main_models:
- central_bank_system
- central_bank_registry
- central_bank_entity
- central_bank_network
- central_bank_policy_anchor

main_metrics:
- central_bank_index
- central_bank_capacity
- central_bank_risk_score
- central_bank_growth_rate
- central_bank_stability_indicator

main_events:
- central_bank_started
- central_bank_disrupted
- central_bank_expanded
- central_bank_stressed
- central_bank_stabilized

main_policies:
- central_bank_policy
- central_bank_regulation
- central_bank_support_program

main_registries:
- central_bank_registry
- central_bank_event_log
- central_bank_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# CURRENCY_SYSTEM
# ------------------------------------------------------------

model_id: 0200110000
domain_name: currency_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for currency within CivilizationOS.

main_models:
- currency_system
- currency_registry
- currency_entity
- currency_network
- currency_policy_anchor

main_metrics:
- currency_index
- currency_capacity
- currency_risk_score
- currency_growth_rate
- currency_stability_indicator

main_events:
- currency_started
- currency_disrupted
- currency_expanded
- currency_stressed
- currency_stabilized

main_policies:
- currency_policy
- currency_regulation
- currency_support_program

main_registries:
- currency_registry
- currency_event_log
- currency_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# BANKING_SYSTEM
# ------------------------------------------------------------

model_id: 0200120000
domain_name: banking_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for banking within CivilizationOS.

main_models:
- commercial_bank
- investment_bank
- bank_deposit
- bank_loan
- capital_adequacy_ratio

main_metrics:
- deposit_growth
- loan_growth
- nonperforming_loan_ratio
- liquidity_coverage_ratio
- capital_adequacy_ratio

main_events:
- bank_run_started
- liquidity_stress_detected
- bank_resolution_started
- deposit_outflow_surge
- credit_tightening_started

main_policies:
- monetary_policy
- prudential_regulation
- deposit_insurance_policy

main_registries:
- bank_registry
- bank_license_registry
- bank_supervision_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- savings
- payments
- credit
- mortgage
- financial stress

erp_touchpoints:
- cash management
- lending
- payment settlement
- treasury
- compliance

# ------------------------------------------------------------
# PAYMENT_SYSTEM
# ------------------------------------------------------------

model_id: 0200130000
domain_name: payment_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for payment within CivilizationOS.

main_models:
- payment_system
- payment_registry
- payment_entity
- payment_network
- payment_policy_anchor

main_metrics:
- payment_index
- payment_capacity
- payment_risk_score
- payment_growth_rate
- payment_stability_indicator

main_events:
- payment_started
- payment_disrupted
- payment_expanded
- payment_stressed
- payment_stabilized

main_policies:
- payment_policy
- payment_regulation
- payment_support_program

main_registries:
- payment_registry
- payment_event_log
- payment_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# CAPITAL_MARKET_SYSTEM
# ------------------------------------------------------------

model_id: 0200140000
domain_name: capital_market_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for capital_market within CivilizationOS.

main_models:
- capital_market_system
- capital_market_registry
- capital_market_entity
- capital_market_network
- capital_market_policy_anchor

main_metrics:
- capital_market_index
- capital_market_capacity
- capital_market_risk_score
- capital_market_growth_rate
- capital_market_stability_indicator

main_events:
- capital_market_started
- capital_market_disrupted
- capital_market_expanded
- capital_market_stressed
- capital_market_stabilized

main_policies:
- capital_market_policy
- capital_market_regulation
- capital_market_support_program

main_registries:
- capital_market_registry
- capital_market_event_log
- capital_market_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# STOCK_MARKET_SYSTEM
# ------------------------------------------------------------

model_id: 0200150000
domain_name: stock_market_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for stock_market within CivilizationOS.

main_models:
- stock_market_system
- stock_market_registry
- stock_market_entity
- stock_market_network
- stock_market_policy_anchor

main_metrics:
- stock_market_index
- stock_market_capacity
- stock_market_risk_score
- stock_market_growth_rate
- stock_market_stability_indicator

main_events:
- stock_market_started
- stock_market_disrupted
- stock_market_expanded
- stock_market_stressed
- stock_market_stabilized

main_policies:
- stock_market_policy
- stock_market_regulation
- stock_market_support_program

main_registries:
- stock_market_registry
- stock_market_event_log
- stock_market_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# BOND_MARKET_SYSTEM
# ------------------------------------------------------------

model_id: 0200160000
domain_name: bond_market_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for bond_market within CivilizationOS.

main_models:
- bond_market_system
- bond_market_registry
- bond_market_entity
- bond_market_network
- bond_market_policy_anchor

main_metrics:
- bond_market_index
- bond_market_capacity
- bond_market_risk_score
- bond_market_growth_rate
- bond_market_stability_indicator

main_events:
- bond_market_started
- bond_market_disrupted
- bond_market_expanded
- bond_market_stressed
- bond_market_stabilized

main_policies:
- bond_market_policy
- bond_market_regulation
- bond_market_support_program

main_registries:
- bond_market_registry
- bond_market_event_log
- bond_market_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# FX_MARKET_SYSTEM
# ------------------------------------------------------------

model_id: 0200170000
domain_name: fx_market_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for fx_market within CivilizationOS.

main_models:
- fx_market_system
- fx_market_registry
- fx_market_entity
- fx_market_network
- fx_market_policy_anchor

main_metrics:
- fx_market_index
- fx_market_capacity
- fx_market_risk_score
- fx_market_growth_rate
- fx_market_stability_indicator

main_events:
- fx_market_started
- fx_market_disrupted
- fx_market_expanded
- fx_market_stressed
- fx_market_stabilized

main_policies:
- fx_market_policy
- fx_market_regulation
- fx_market_support_program

main_registries:
- fx_market_registry
- fx_market_event_log
- fx_market_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# DERIVATIVES_MARKET_SYSTEM
# ------------------------------------------------------------

model_id: 0200180000
domain_name: derivatives_market_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for derivatives_market within CivilizationOS.

main_models:
- derivatives_market_system
- derivatives_market_registry
- derivatives_market_entity
- derivatives_market_network
- derivatives_market_policy_anchor

main_metrics:
- derivatives_market_index
- derivatives_market_capacity
- derivatives_market_risk_score
- derivatives_market_growth_rate
- derivatives_market_stability_indicator

main_events:
- derivatives_market_started
- derivatives_market_disrupted
- derivatives_market_expanded
- derivatives_market_stressed
- derivatives_market_stabilized

main_policies:
- derivatives_market_policy
- derivatives_market_regulation
- derivatives_market_support_program

main_registries:
- derivatives_market_registry
- derivatives_market_event_log
- derivatives_market_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# ASSET_MANAGEMENT_SYSTEM
# ------------------------------------------------------------

model_id: 0200190000
domain_name: asset_management_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for asset_management within CivilizationOS.

main_models:
- asset_management_system
- asset_management_registry
- asset_management_entity
- asset_management_network
- asset_management_policy_anchor

main_metrics:
- asset_management_index
- asset_management_capacity
- asset_management_risk_score
- asset_management_growth_rate
- asset_management_stability_indicator

main_events:
- asset_management_started
- asset_management_disrupted
- asset_management_expanded
- asset_management_stressed
- asset_management_stabilized

main_policies:
- asset_management_policy
- asset_management_regulation
- asset_management_support_program

main_registries:
- asset_management_registry
- asset_management_event_log
- asset_management_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# INSURANCE_SYSTEM
# ------------------------------------------------------------

model_id: 0200200000
domain_name: insurance_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for insurance within CivilizationOS.

main_models:
- insurance_system
- insurance_registry
- insurance_entity
- insurance_network
- insurance_policy_anchor

main_metrics:
- insurance_index
- insurance_capacity
- insurance_risk_score
- insurance_growth_rate
- insurance_stability_indicator

main_events:
- insurance_started
- insurance_disrupted
- insurance_expanded
- insurance_stressed
- insurance_stabilized

main_policies:
- insurance_policy
- insurance_regulation
- insurance_support_program

main_registries:
- insurance_registry
- insurance_event_log
- insurance_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# PUBLIC_FINANCE_SYSTEM
# ------------------------------------------------------------

model_id: 0200210000
domain_name: public_finance_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for public_finance within CivilizationOS.

main_models:
- public_finance_system
- public_finance_registry
- public_finance_entity
- public_finance_network
- public_finance_policy_anchor

main_metrics:
- public_finance_index
- public_finance_capacity
- public_finance_risk_score
- public_finance_growth_rate
- public_finance_stability_indicator

main_events:
- public_finance_started
- public_finance_disrupted
- public_finance_expanded
- public_finance_stressed
- public_finance_stabilized

main_policies:
- public_finance_policy
- public_finance_regulation
- public_finance_support_program

main_registries:
- public_finance_registry
- public_finance_event_log
- public_finance_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# TAXATION_SYSTEM
# ------------------------------------------------------------

model_id: 0200220000
domain_name: taxation_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for taxation within CivilizationOS.

main_models:
- taxation_system
- taxation_registry
- taxation_entity
- taxation_network
- taxation_policy_anchor

main_metrics:
- taxation_index
- taxation_capacity
- taxation_risk_score
- taxation_growth_rate
- taxation_stability_indicator

main_events:
- taxation_started
- taxation_disrupted
- taxation_expanded
- taxation_stressed
- taxation_stabilized

main_policies:
- taxation_policy
- taxation_regulation
- taxation_support_program

main_registries:
- taxation_registry
- taxation_event_log
- taxation_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# MACROECONOMY_SYSTEM
# ------------------------------------------------------------

model_id: 0200230000
domain_name: macroeconomy_system
system_name: population_and_economy_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for macroeconomy within CivilizationOS.

main_models:
- macroeconomy_system
- macroeconomy_registry
- macroeconomy_entity
- macroeconomy_network
- macroeconomy_policy_anchor

main_metrics:
- macroeconomy_index
- macroeconomy_capacity
- macroeconomy_risk_score
- macroeconomy_growth_rate
- macroeconomy_stability_indicator

main_events:
- macroeconomy_started
- macroeconomy_disrupted
- macroeconomy_expanded
- macroeconomy_stressed
- macroeconomy_stabilized

main_policies:
- macroeconomy_policy
- macroeconomy_regulation
- macroeconomy_support_program

main_registries:
- macroeconomy_registry
- macroeconomy_event_log
- macroeconomy_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# HOUSEHOLD_SYSTEM
# ------------------------------------------------------------

model_id: 0200240000
domain_name: household_system
system_name: population_and_economy_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for household within CivilizationOS.

main_models:
- household_system
- household_registry
- household_entity
- household_network
- household_policy_anchor

main_metrics:
- household_index
- household_capacity
- household_risk_score
- household_growth_rate
- household_stability_indicator

main_events:
- household_started
- household_disrupted
- household_expanded
- household_stressed
- household_stabilized

main_policies:
- household_policy
- household_regulation
- household_support_program

main_registries:
- household_registry
- household_event_log
- household_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# LABOR_SYSTEM
# ------------------------------------------------------------

model_id: 0200250000
domain_name: labor_system
system_name: population_and_economy_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for labor within CivilizationOS.

main_models:
- labor_system
- labor_registry
- labor_entity
- labor_network
- labor_policy_anchor

main_metrics:
- labor_index
- labor_capacity
- labor_risk_score
- labor_growth_rate
- labor_stability_indicator

main_events:
- labor_started
- labor_disrupted
- labor_expanded
- labor_stressed
- labor_stabilized

main_policies:
- labor_policy
- labor_regulation
- labor_support_program

main_registries:
- labor_registry
- labor_event_log
- labor_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# POPULATION_SYSTEM
# ------------------------------------------------------------

model_id: 0200260000
domain_name: population_system
system_name: population_and_economy_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for population within CivilizationOS.

main_models:
- population_system
- population_registry
- population_entity
- population_network
- population_policy_anchor

main_metrics:
- population_index
- population_capacity
- population_risk_score
- population_growth_rate
- population_stability_indicator

main_events:
- population_started
- population_disrupted
- population_expanded
- population_stressed
- population_stabilized

main_policies:
- population_policy
- population_regulation
- population_support_program

main_registries:
- population_registry
- population_event_log
- population_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# MIGRATION_SYSTEM
# ------------------------------------------------------------

model_id: 0200270000
domain_name: migration_system
system_name: population_and_economy_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for migration within CivilizationOS.

main_models:
- migration_system
- migration_registry
- migration_entity
- migration_network
- migration_policy_anchor

main_metrics:
- migration_index
- migration_capacity
- migration_risk_score
- migration_growth_rate
- migration_stability_indicator

main_events:
- migration_started
- migration_disrupted
- migration_expanded
- migration_stressed
- migration_stabilized

main_policies:
- migration_policy
- migration_regulation
- migration_support_program

main_registries:
- migration_registry
- migration_event_log
- migration_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# EDUCATION_SYSTEM
# ------------------------------------------------------------

model_id: 0200280000
domain_name: education_system
system_name: social_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for education within CivilizationOS.

main_models:
- education_system
- education_registry
- education_entity
- education_network
- education_policy_anchor

main_metrics:
- education_index
- education_capacity
- education_risk_score
- education_growth_rate
- education_stability_indicator

main_events:
- education_started
- education_disrupted
- education_expanded
- education_stressed
- education_stabilized

main_policies:
- education_policy
- education_regulation
- education_support_program

main_registries:
- education_registry
- education_event_log
- education_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# HEALTHCARE_SYSTEM
# ------------------------------------------------------------

model_id: 0200290000
domain_name: healthcare_system
system_name: social_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for healthcare within CivilizationOS.

main_models:
- hospital
- clinic
- physician_workforce
- hospital_bed_capacity
- health_insurance_coverage

main_metrics:
- waiting_time
- life_expectancy
- out_of_pocket_spending
- bed_occupancy_rate
- health_outcome_index

main_events:
- hospital_capacity_exceeded
- epidemic_detected
- vaccination_campaign_started
- drug_shortage_detected
- emergency_mode_activated

main_policies:
- healthcare_policy
- insurance_policy
- public_health_policy

main_registries:
- hospital_registry
- disease_registry
- provider_license_registry

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- care access
- cost burden
- prevention
- emergency care
- long-term health

erp_touchpoints:
- employee health costs
- insurance administration
- sick leave impact
- occupational health
- pharma procurement

# ------------------------------------------------------------
# PUBLIC_HEALTH_SYSTEM
# ------------------------------------------------------------

model_id: 0200300000
domain_name: public_health_system
system_name: social_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for public_health within CivilizationOS.

main_models:
- public_health_system
- public_health_registry
- public_health_entity
- public_health_network
- public_health_policy_anchor

main_metrics:
- public_health_index
- public_health_capacity
- public_health_risk_score
- public_health_growth_rate
- public_health_stability_indicator

main_events:
- public_health_started
- public_health_disrupted
- public_health_expanded
- public_health_stressed
- public_health_stabilized

main_policies:
- public_health_policy
- public_health_regulation
- public_health_support_program

main_registries:
- public_health_registry
- public_health_event_log
- public_health_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# PHARMACEUTICAL_SYSTEM
# ------------------------------------------------------------

model_id: 0200310000
domain_name: pharmaceutical_system
system_name: civilization_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for pharmaceutical within CivilizationOS.

main_models:
- pharmaceutical_system
- pharmaceutical_registry
- pharmaceutical_entity
- pharmaceutical_network
- pharmaceutical_policy_anchor

main_metrics:
- pharmaceutical_index
- pharmaceutical_capacity
- pharmaceutical_risk_score
- pharmaceutical_growth_rate
- pharmaceutical_stability_indicator

main_events:
- pharmaceutical_started
- pharmaceutical_disrupted
- pharmaceutical_expanded
- pharmaceutical_stressed
- pharmaceutical_stabilized

main_policies:
- pharmaceutical_policy
- pharmaceutical_regulation
- pharmaceutical_support_program

main_registries:
- pharmaceutical_registry
- pharmaceutical_event_log
- pharmaceutical_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# SCIENCE_SYSTEM
# ------------------------------------------------------------

model_id: 0200320000
domain_name: science_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for science within CivilizationOS.

main_models:
- science_system
- science_registry
- science_entity
- science_network
- science_policy_anchor

main_metrics:
- science_index
- science_capacity
- science_risk_score
- science_growth_rate
- science_stability_indicator

main_events:
- science_started
- science_disrupted
- science_expanded
- science_stressed
- science_stabilized

main_policies:
- science_policy
- science_regulation
- science_support_program

main_registries:
- science_registry
- science_event_log
- science_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# TECHNOLOGY_SYSTEM
# ------------------------------------------------------------

model_id: 0200330000
domain_name: technology_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for technology within CivilizationOS.

main_models:
- technology_system
- technology_registry
- technology_entity
- technology_network
- technology_policy_anchor

main_metrics:
- technology_index
- technology_capacity
- technology_risk_score
- technology_growth_rate
- technology_stability_indicator

main_events:
- technology_started
- technology_disrupted
- technology_expanded
- technology_stressed
- technology_stabilized

main_policies:
- technology_policy
- technology_regulation
- technology_support_program

main_registries:
- technology_registry
- technology_event_log
- technology_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# DATA_SYSTEM
# ------------------------------------------------------------

model_id: 0200340000
domain_name: data_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for data within CivilizationOS.

main_models:
- data_system
- data_registry
- data_entity
- data_network
- data_policy_anchor

main_metrics:
- data_index
- data_capacity
- data_risk_score
- data_growth_rate
- data_stability_indicator

main_events:
- data_started
- data_disrupted
- data_expanded
- data_stressed
- data_stabilized

main_policies:
- data_policy
- data_regulation
- data_support_program

main_registries:
- data_registry
- data_event_log
- data_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# AI_SYSTEM
# ------------------------------------------------------------

model_id: 0200350000
domain_name: ai_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for ai within CivilizationOS.

main_models:
- ai_system
- ai_registry
- ai_entity
- ai_network
- ai_policy_anchor

main_metrics:
- ai_index
- ai_capacity
- ai_risk_score
- ai_growth_rate
- ai_stability_indicator

main_events:
- ai_started
- ai_disrupted
- ai_expanded
- ai_stressed
- ai_stabilized

main_policies:
- ai_policy
- ai_regulation
- ai_support_program

main_registries:
- ai_registry
- ai_event_log
- ai_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# TELECOM_SYSTEM
# ------------------------------------------------------------

model_id: 0200360000
domain_name: telecom_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for telecom within CivilizationOS.

main_models:
- telecom_system
- telecom_registry
- telecom_entity
- telecom_network
- telecom_policy_anchor

main_metrics:
- telecom_index
- telecom_capacity
- telecom_risk_score
- telecom_growth_rate
- telecom_stability_indicator

main_events:
- telecom_started
- telecom_disrupted
- telecom_expanded
- telecom_stressed
- telecom_stabilized

main_policies:
- telecom_policy
- telecom_regulation
- telecom_support_program

main_registries:
- telecom_registry
- telecom_event_log
- telecom_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# INTERNET_SYSTEM
# ------------------------------------------------------------

model_id: 0200370000
domain_name: internet_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for internet within CivilizationOS.

main_models:
- internet_system
- internet_registry
- internet_entity
- internet_network
- internet_policy_anchor

main_metrics:
- internet_index
- internet_capacity
- internet_risk_score
- internet_growth_rate
- internet_stability_indicator

main_events:
- internet_started
- internet_disrupted
- internet_expanded
- internet_stressed
- internet_stabilized

main_policies:
- internet_policy
- internet_regulation
- internet_support_program

main_registries:
- internet_registry
- internet_event_log
- internet_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# CYBERSECURITY_SYSTEM
# ------------------------------------------------------------

model_id: 0200380000
domain_name: cybersecurity_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for cybersecurity within CivilizationOS.

main_models:
- cybersecurity_system
- cybersecurity_registry
- cybersecurity_entity
- cybersecurity_network
- cybersecurity_policy_anchor

main_metrics:
- cybersecurity_index
- cybersecurity_capacity
- cybersecurity_risk_score
- cybersecurity_growth_rate
- cybersecurity_stability_indicator

main_events:
- cybersecurity_started
- cybersecurity_disrupted
- cybersecurity_expanded
- cybersecurity_stressed
- cybersecurity_stabilized

main_policies:
- cybersecurity_policy
- cybersecurity_regulation
- cybersecurity_support_program

main_registries:
- cybersecurity_registry
- cybersecurity_event_log
- cybersecurity_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# ENERGY_SYSTEM
# ------------------------------------------------------------

model_id: 0200390000
domain_name: energy_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for energy within CivilizationOS.

main_models:
- power_plant
- energy_market
- grid_operator
- fuel_supply
- battery_storage_site

main_metrics:
- electricity_generation
- energy_price_index
- peak_load
- reserve_margin
- grid_frequency

main_events:
- oil_supply_disrupted
- grid_failure_occurred
- renewable_capacity_added
- fuel_price_spike
- load_shedding_started

main_policies:
- energy_policy
- climate_policy
- grid_stability_policy

main_registries:
- generation_asset_registry
- grid_incident_log
- fuel_supply_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- electricity access
- household energy bill
- transport cost
- heating and cooling
- blackout exposure

erp_touchpoints:
- factory power continuity
- energy procurement
- fuel cost
- grid outage response
- carbon compliance

# ------------------------------------------------------------
# OIL_GAS_SYSTEM
# ------------------------------------------------------------

model_id: 0200400000
domain_name: oil_gas_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for oil_gas within CivilizationOS.

main_models:
- oil_gas_system
- oil_gas_registry
- oil_gas_entity
- oil_gas_network
- oil_gas_policy_anchor

main_metrics:
- oil_gas_index
- oil_gas_capacity
- oil_gas_risk_score
- oil_gas_growth_rate
- oil_gas_stability_indicator

main_events:
- oil_gas_started
- oil_gas_disrupted
- oil_gas_expanded
- oil_gas_stressed
- oil_gas_stabilized

main_policies:
- oil_gas_policy
- oil_gas_regulation
- oil_gas_support_program

main_registries:
- oil_gas_registry
- oil_gas_event_log
- oil_gas_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# ELECTRIC_POWER_SYSTEM
# ------------------------------------------------------------

model_id: 0200410000
domain_name: electric_power_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for electric_power within CivilizationOS.

main_models:
- electric_power_system
- electric_power_registry
- electric_power_entity
- electric_power_network
- electric_power_policy_anchor

main_metrics:
- electric_power_index
- electric_power_capacity
- electric_power_risk_score
- electric_power_growth_rate
- electric_power_stability_indicator

main_events:
- electric_power_started
- electric_power_disrupted
- electric_power_expanded
- electric_power_stressed
- electric_power_stabilized

main_policies:
- electric_power_policy
- electric_power_regulation
- electric_power_support_program

main_registries:
- electric_power_registry
- electric_power_event_log
- electric_power_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# WATER_SYSTEM
# ------------------------------------------------------------

model_id: 0200420000
domain_name: water_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for water within CivilizationOS.

main_models:
- water_system
- water_registry
- water_entity
- water_network
- water_policy_anchor

main_metrics:
- water_index
- water_capacity
- water_risk_score
- water_growth_rate
- water_stability_indicator

main_events:
- water_started
- water_disrupted
- water_expanded
- water_stressed
- water_stabilized

main_policies:
- water_policy
- water_regulation
- water_support_program

main_registries:
- water_registry
- water_event_log
- water_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# CLIMATE_SYSTEM
# ------------------------------------------------------------

model_id: 0200430000
domain_name: climate_system
system_name: environment_and_settlement_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for climate within CivilizationOS.

main_models:
- climate_system
- climate_registry
- climate_entity
- climate_network
- climate_policy_anchor

main_metrics:
- climate_index
- climate_capacity
- climate_risk_score
- climate_growth_rate
- climate_stability_indicator

main_events:
- climate_started
- climate_disrupted
- climate_expanded
- climate_stressed
- climate_stabilized

main_policies:
- climate_policy
- climate_regulation
- climate_support_program

main_registries:
- climate_registry
- climate_event_log
- climate_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# ENVIRONMENT_SYSTEM
# ------------------------------------------------------------

model_id: 0200440000
domain_name: environment_system
system_name: environment_and_settlement_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for environment within CivilizationOS.

main_models:
- environment_system
- environment_registry
- environment_entity
- environment_network
- environment_policy_anchor

main_metrics:
- environment_index
- environment_capacity
- environment_risk_score
- environment_growth_rate
- environment_stability_indicator

main_events:
- environment_started
- environment_disrupted
- environment_expanded
- environment_stressed
- environment_stabilized

main_policies:
- environment_policy
- environment_regulation
- environment_support_program

main_registries:
- environment_registry
- environment_event_log
- environment_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# AGRICULTURE_SYSTEM
# ------------------------------------------------------------

model_id: 0200450000
domain_name: agriculture_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for agriculture within CivilizationOS.

main_models:
- agriculture_system
- agriculture_registry
- agriculture_entity
- agriculture_network
- agriculture_policy_anchor

main_metrics:
- agriculture_index
- agriculture_capacity
- agriculture_risk_score
- agriculture_growth_rate
- agriculture_stability_indicator

main_events:
- agriculture_started
- agriculture_disrupted
- agriculture_expanded
- agriculture_stressed
- agriculture_stabilized

main_policies:
- agriculture_policy
- agriculture_regulation
- agriculture_support_program

main_registries:
- agriculture_registry
- agriculture_event_log
- agriculture_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# FOOD_SYSTEM
# ------------------------------------------------------------

model_id: 0200460000
domain_name: food_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for food within CivilizationOS.

main_models:
- food_system
- food_registry
- food_entity
- food_network
- food_policy_anchor

main_metrics:
- food_index
- food_capacity
- food_risk_score
- food_growth_rate
- food_stability_indicator

main_events:
- food_started
- food_disrupted
- food_expanded
- food_stressed
- food_stabilized

main_policies:
- food_policy
- food_regulation
- food_support_program

main_registries:
- food_registry
- food_event_log
- food_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# FISHERIES_SYSTEM
# ------------------------------------------------------------

model_id: 0200470000
domain_name: fisheries_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for fisheries within CivilizationOS.

main_models:
- fisheries_system
- fisheries_registry
- fisheries_entity
- fisheries_network
- fisheries_policy_anchor

main_metrics:
- fisheries_index
- fisheries_capacity
- fisheries_risk_score
- fisheries_growth_rate
- fisheries_stability_indicator

main_events:
- fisheries_started
- fisheries_disrupted
- fisheries_expanded
- fisheries_stressed
- fisheries_stabilized

main_policies:
- fisheries_policy
- fisheries_regulation
- fisheries_support_program

main_registries:
- fisheries_registry
- fisheries_event_log
- fisheries_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# FORESTRY_SYSTEM
# ------------------------------------------------------------

model_id: 0200480000
domain_name: forestry_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for forestry within CivilizationOS.

main_models:
- forestry_system
- forestry_registry
- forestry_entity
- forestry_network
- forestry_policy_anchor

main_metrics:
- forestry_index
- forestry_capacity
- forestry_risk_score
- forestry_growth_rate
- forestry_stability_indicator

main_events:
- forestry_started
- forestry_disrupted
- forestry_expanded
- forestry_stressed
- forestry_stabilized

main_policies:
- forestry_policy
- forestry_regulation
- forestry_support_program

main_registries:
- forestry_registry
- forestry_event_log
- forestry_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# MINING_SYSTEM
# ------------------------------------------------------------

model_id: 0200490000
domain_name: mining_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for mining within CivilizationOS.

main_models:
- mining_system
- mining_registry
- mining_entity
- mining_network
- mining_policy_anchor

main_metrics:
- mining_index
- mining_capacity
- mining_risk_score
- mining_growth_rate
- mining_stability_indicator

main_events:
- mining_started
- mining_disrupted
- mining_expanded
- mining_stressed
- mining_stabilized

main_policies:
- mining_policy
- mining_regulation
- mining_support_program

main_registries:
- mining_registry
- mining_event_log
- mining_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# MANUFACTURING_SYSTEM
# ------------------------------------------------------------

model_id: 0200500000
domain_name: manufacturing_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for manufacturing within CivilizationOS.

main_models:
- manufacturing_system
- manufacturing_registry
- manufacturing_entity
- manufacturing_network
- manufacturing_policy_anchor

main_metrics:
- manufacturing_index
- manufacturing_capacity
- manufacturing_risk_score
- manufacturing_growth_rate
- manufacturing_stability_indicator

main_events:
- manufacturing_started
- manufacturing_disrupted
- manufacturing_expanded
- manufacturing_stressed
- manufacturing_stabilized

main_policies:
- manufacturing_policy
- manufacturing_regulation
- manufacturing_support_program

main_registries:
- manufacturing_registry
- manufacturing_event_log
- manufacturing_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# SEMICONDUCTOR_SYSTEM
# ------------------------------------------------------------

model_id: 0200510000
domain_name: semiconductor_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for semiconductor within CivilizationOS.

main_models:
- semiconductor_system
- semiconductor_registry
- semiconductor_entity
- semiconductor_network
- semiconductor_policy_anchor

main_metrics:
- semiconductor_index
- semiconductor_capacity
- semiconductor_risk_score
- semiconductor_growth_rate
- semiconductor_stability_indicator

main_events:
- semiconductor_started
- semiconductor_disrupted
- semiconductor_expanded
- semiconductor_stressed
- semiconductor_stabilized

main_policies:
- semiconductor_policy
- semiconductor_regulation
- semiconductor_support_program

main_registries:
- semiconductor_registry
- semiconductor_event_log
- semiconductor_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# AUTOMOTIVE_SYSTEM
# ------------------------------------------------------------

model_id: 0200520000
domain_name: automotive_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for automotive within CivilizationOS.

main_models:
- automotive_system
- automotive_registry
- automotive_entity
- automotive_network
- automotive_policy_anchor

main_metrics:
- automotive_index
- automotive_capacity
- automotive_risk_score
- automotive_growth_rate
- automotive_stability_indicator

main_events:
- automotive_started
- automotive_disrupted
- automotive_expanded
- automotive_stressed
- automotive_stabilized

main_policies:
- automotive_policy
- automotive_regulation
- automotive_support_program

main_registries:
- automotive_registry
- automotive_event_log
- automotive_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# CONSTRUCTION_SYSTEM
# ------------------------------------------------------------

model_id: 0200530000
domain_name: construction_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for construction within CivilizationOS.

main_models:
- construction_system
- construction_registry
- construction_entity
- construction_network
- construction_policy_anchor

main_metrics:
- construction_index
- construction_capacity
- construction_risk_score
- construction_growth_rate
- construction_stability_indicator

main_events:
- construction_started
- construction_disrupted
- construction_expanded
- construction_stressed
- construction_stabilized

main_policies:
- construction_policy
- construction_regulation
- construction_support_program

main_registries:
- construction_registry
- construction_event_log
- construction_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# REAL_ESTATE_SYSTEM
# ------------------------------------------------------------

model_id: 0200540000
domain_name: real_estate_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for real_estate within CivilizationOS.

main_models:
- real_estate_system
- real_estate_registry
- real_estate_entity
- real_estate_network
- real_estate_policy_anchor

main_metrics:
- real_estate_index
- real_estate_capacity
- real_estate_risk_score
- real_estate_growth_rate
- real_estate_stability_indicator

main_events:
- real_estate_started
- real_estate_disrupted
- real_estate_expanded
- real_estate_stressed
- real_estate_stabilized

main_policies:
- real_estate_policy
- real_estate_regulation
- real_estate_support_program

main_registries:
- real_estate_registry
- real_estate_event_log
- real_estate_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# INFRASTRUCTURE_SYSTEM
# ------------------------------------------------------------

model_id: 0200550000
domain_name: infrastructure_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for infrastructure within CivilizationOS.

main_models:
- infrastructure_system
- infrastructure_registry
- infrastructure_entity
- infrastructure_network
- infrastructure_policy_anchor

main_metrics:
- infrastructure_index
- infrastructure_capacity
- infrastructure_risk_score
- infrastructure_growth_rate
- infrastructure_stability_indicator

main_events:
- infrastructure_started
- infrastructure_disrupted
- infrastructure_expanded
- infrastructure_stressed
- infrastructure_stabilized

main_policies:
- infrastructure_policy
- infrastructure_regulation
- infrastructure_support_program

main_registries:
- infrastructure_registry
- infrastructure_event_log
- infrastructure_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# TRANSPORT_SYSTEM
# ------------------------------------------------------------

model_id: 0200560000
domain_name: transport_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for transport within CivilizationOS.

main_models:
- transport_system
- transport_registry
- transport_entity
- transport_network
- transport_policy_anchor

main_metrics:
- transport_index
- transport_capacity
- transport_risk_score
- transport_growth_rate
- transport_stability_indicator

main_events:
- transport_started
- transport_disrupted
- transport_expanded
- transport_stressed
- transport_stabilized

main_policies:
- transport_policy
- transport_regulation
- transport_support_program

main_registries:
- transport_registry
- transport_event_log
- transport_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# SHIPPING_SYSTEM
# ------------------------------------------------------------

model_id: 0200570000
domain_name: shipping_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for shipping within CivilizationOS.

main_models:
- shipping_system
- shipping_registry
- shipping_entity
- shipping_network
- shipping_policy_anchor

main_metrics:
- shipping_index
- shipping_capacity
- shipping_risk_score
- shipping_growth_rate
- shipping_stability_indicator

main_events:
- shipping_started
- shipping_disrupted
- shipping_expanded
- shipping_stressed
- shipping_stabilized

main_policies:
- shipping_policy
- shipping_regulation
- shipping_support_program

main_registries:
- shipping_registry
- shipping_event_log
- shipping_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# AVIATION_SYSTEM
# ------------------------------------------------------------

model_id: 0200580000
domain_name: aviation_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for aviation within CivilizationOS.

main_models:
- aviation_system
- aviation_registry
- aviation_entity
- aviation_network
- aviation_policy_anchor

main_metrics:
- aviation_index
- aviation_capacity
- aviation_risk_score
- aviation_growth_rate
- aviation_stability_indicator

main_events:
- aviation_started
- aviation_disrupted
- aviation_expanded
- aviation_stressed
- aviation_stabilized

main_policies:
- aviation_policy
- aviation_regulation
- aviation_support_program

main_registries:
- aviation_registry
- aviation_event_log
- aviation_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# RAILWAY_SYSTEM
# ------------------------------------------------------------

model_id: 0200590000
domain_name: railway_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for railway within CivilizationOS.

main_models:
- railway_system
- railway_registry
- railway_entity
- railway_network
- railway_policy_anchor

main_metrics:
- railway_index
- railway_capacity
- railway_risk_score
- railway_growth_rate
- railway_stability_indicator

main_events:
- railway_started
- railway_disrupted
- railway_expanded
- railway_stressed
- railway_stabilized

main_policies:
- railway_policy
- railway_regulation
- railway_support_program

main_registries:
- railway_registry
- railway_event_log
- railway_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# LOGISTICS_SYSTEM
# ------------------------------------------------------------

model_id: 0200600000
domain_name: logistics_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for logistics within CivilizationOS.

main_models:
- logistics_system
- logistics_registry
- logistics_entity
- logistics_network
- logistics_policy_anchor

main_metrics:
- logistics_index
- logistics_capacity
- logistics_risk_score
- logistics_growth_rate
- logistics_stability_indicator

main_events:
- logistics_started
- logistics_disrupted
- logistics_expanded
- logistics_stressed
- logistics_stabilized

main_policies:
- logistics_policy
- logistics_regulation
- logistics_support_program

main_registries:
- logistics_registry
- logistics_event_log
- logistics_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# TRADE_SYSTEM
# ------------------------------------------------------------

model_id: 0200610000
domain_name: trade_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for trade within CivilizationOS.

main_models:
- trade_system
- trade_registry
- trade_entity
- trade_network
- trade_policy_anchor

main_metrics:
- trade_index
- trade_capacity
- trade_risk_score
- trade_growth_rate
- trade_stability_indicator

main_events:
- trade_started
- trade_disrupted
- trade_expanded
- trade_stressed
- trade_stabilized

main_policies:
- trade_policy
- trade_regulation
- trade_support_program

main_registries:
- trade_registry
- trade_event_log
- trade_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# CUSTOMS_SYSTEM
# ------------------------------------------------------------

model_id: 0200620000
domain_name: customs_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for customs within CivilizationOS.

main_models:
- customs_system
- customs_registry
- customs_entity
- customs_network
- customs_policy_anchor

main_metrics:
- customs_index
- customs_capacity
- customs_risk_score
- customs_growth_rate
- customs_stability_indicator

main_events:
- customs_started
- customs_disrupted
- customs_expanded
- customs_stressed
- customs_stabilized

main_policies:
- customs_policy
- customs_regulation
- customs_support_program

main_registries:
- customs_registry
- customs_event_log
- customs_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# RETAIL_SYSTEM
# ------------------------------------------------------------

model_id: 0200630000
domain_name: retail_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for retail within CivilizationOS.

main_models:
- retail_system
- retail_registry
- retail_entity
- retail_network
- retail_policy_anchor

main_metrics:
- retail_index
- retail_capacity
- retail_risk_score
- retail_growth_rate
- retail_stability_indicator

main_events:
- retail_started
- retail_disrupted
- retail_expanded
- retail_stressed
- retail_stabilized

main_policies:
- retail_policy
- retail_regulation
- retail_support_program

main_registries:
- retail_registry
- retail_event_log
- retail_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# WHOLESALE_SYSTEM
# ------------------------------------------------------------

model_id: 0200640000
domain_name: wholesale_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for wholesale within CivilizationOS.

main_models:
- wholesale_system
- wholesale_registry
- wholesale_entity
- wholesale_network
- wholesale_policy_anchor

main_metrics:
- wholesale_index
- wholesale_capacity
- wholesale_risk_score
- wholesale_growth_rate
- wholesale_stability_indicator

main_events:
- wholesale_started
- wholesale_disrupted
- wholesale_expanded
- wholesale_stressed
- wholesale_stabilized

main_policies:
- wholesale_policy
- wholesale_regulation
- wholesale_support_program

main_registries:
- wholesale_registry
- wholesale_event_log
- wholesale_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# ECOMMERCE_SYSTEM
# ------------------------------------------------------------

model_id: 0200650000
domain_name: ecommerce_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for ecommerce within CivilizationOS.

main_models:
- ecommerce_system
- ecommerce_registry
- ecommerce_entity
- ecommerce_network
- ecommerce_policy_anchor

main_metrics:
- ecommerce_index
- ecommerce_capacity
- ecommerce_risk_score
- ecommerce_growth_rate
- ecommerce_stability_indicator

main_events:
- ecommerce_started
- ecommerce_disrupted
- ecommerce_expanded
- ecommerce_stressed
- ecommerce_stabilized

main_policies:
- ecommerce_policy
- ecommerce_regulation
- ecommerce_support_program

main_registries:
- ecommerce_registry
- ecommerce_event_log
- ecommerce_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# COMPANY_SYSTEM
# ------------------------------------------------------------

model_id: 0200660000
domain_name: company_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for company within CivilizationOS.

main_models:
- company_system
- company_registry
- company_entity
- company_network
- company_policy_anchor

main_metrics:
- company_index
- company_capacity
- company_risk_score
- company_growth_rate
- company_stability_indicator

main_events:
- company_started
- company_disrupted
- company_expanded
- company_stressed
- company_stabilized

main_policies:
- company_policy
- company_regulation
- company_support_program

main_registries:
- company_registry
- company_event_log
- company_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# STARTUP_SYSTEM
# ------------------------------------------------------------

model_id: 0200670000
domain_name: startup_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for startup within CivilizationOS.

main_models:
- startup_system
- startup_registry
- startup_entity
- startup_network
- startup_policy_anchor

main_metrics:
- startup_index
- startup_capacity
- startup_risk_score
- startup_growth_rate
- startup_stability_indicator

main_events:
- startup_started
- startup_disrupted
- startup_expanded
- startup_stressed
- startup_stabilized

main_policies:
- startup_policy
- startup_regulation
- startup_support_program

main_registries:
- startup_registry
- startup_event_log
- startup_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# VENTURE_CAPITAL_SYSTEM
# ------------------------------------------------------------

model_id: 0200680000
domain_name: venture_capital_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for venture_capital within CivilizationOS.

main_models:
- venture_capital_system
- venture_capital_registry
- venture_capital_entity
- venture_capital_network
- venture_capital_policy_anchor

main_metrics:
- venture_capital_index
- venture_capital_capacity
- venture_capital_risk_score
- venture_capital_growth_rate
- venture_capital_stability_indicator

main_events:
- venture_capital_started
- venture_capital_disrupted
- venture_capital_expanded
- venture_capital_stressed
- venture_capital_stabilized

main_policies:
- venture_capital_policy
- venture_capital_regulation
- venture_capital_support_program

main_registries:
- venture_capital_registry
- venture_capital_event_log
- venture_capital_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# PRIVATE_EQUITY_SYSTEM
# ------------------------------------------------------------

model_id: 0200690000
domain_name: private_equity_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for private_equity within CivilizationOS.

main_models:
- private_equity_system
- private_equity_registry
- private_equity_entity
- private_equity_network
- private_equity_policy_anchor

main_metrics:
- private_equity_index
- private_equity_capacity
- private_equity_risk_score
- private_equity_growth_rate
- private_equity_stability_indicator

main_events:
- private_equity_started
- private_equity_disrupted
- private_equity_expanded
- private_equity_stressed
- private_equity_stabilized

main_policies:
- private_equity_policy
- private_equity_regulation
- private_equity_support_program

main_registries:
- private_equity_registry
- private_equity_event_log
- private_equity_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# CONSUMER_MARKET_SYSTEM
# ------------------------------------------------------------

model_id: 0200700000
domain_name: consumer_market_system
system_name: population_and_economy_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for consumer_market within CivilizationOS.

main_models:
- consumer_market_system
- consumer_market_registry
- consumer_market_entity
- consumer_market_network
- consumer_market_policy_anchor

main_metrics:
- consumer_market_index
- consumer_market_capacity
- consumer_market_risk_score
- consumer_market_growth_rate
- consumer_market_stability_indicator

main_events:
- consumer_market_started
- consumer_market_disrupted
- consumer_market_expanded
- consumer_market_stressed
- consumer_market_stabilized

main_policies:
- consumer_market_policy
- consumer_market_regulation
- consumer_market_support_program

main_registries:
- consumer_market_registry
- consumer_market_event_log
- consumer_market_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# TOURISM_SYSTEM
# ------------------------------------------------------------

model_id: 0200710000
domain_name: tourism_system
system_name: culture_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for tourism within CivilizationOS.

main_models:
- tourism_system
- tourism_registry
- tourism_entity
- tourism_network
- tourism_policy_anchor

main_metrics:
- tourism_index
- tourism_capacity
- tourism_risk_score
- tourism_growth_rate
- tourism_stability_indicator

main_events:
- tourism_started
- tourism_disrupted
- tourism_expanded
- tourism_stressed
- tourism_stabilized

main_policies:
- tourism_policy
- tourism_regulation
- tourism_support_program

main_registries:
- tourism_registry
- tourism_event_log
- tourism_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# HOSPITALITY_SYSTEM
# ------------------------------------------------------------

model_id: 0200720000
domain_name: hospitality_system
system_name: culture_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for hospitality within CivilizationOS.

main_models:
- hospitality_system
- hospitality_registry
- hospitality_entity
- hospitality_network
- hospitality_policy_anchor

main_metrics:
- hospitality_index
- hospitality_capacity
- hospitality_risk_score
- hospitality_growth_rate
- hospitality_stability_indicator

main_events:
- hospitality_started
- hospitality_disrupted
- hospitality_expanded
- hospitality_stressed
- hospitality_stabilized

main_policies:
- hospitality_policy
- hospitality_regulation
- hospitality_support_program

main_registries:
- hospitality_registry
- hospitality_event_log
- hospitality_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# MEDIA_SYSTEM
# ------------------------------------------------------------

model_id: 0200730000
domain_name: media_system
system_name: culture_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for media within CivilizationOS.

main_models:
- media_system
- media_registry
- media_entity
- media_network
- media_policy_anchor

main_metrics:
- media_index
- media_capacity
- media_risk_score
- media_growth_rate
- media_stability_indicator

main_events:
- media_started
- media_disrupted
- media_expanded
- media_stressed
- media_stabilized

main_policies:
- media_policy
- media_regulation
- media_support_program

main_registries:
- media_registry
- media_event_log
- media_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# CULTURE_SYSTEM
# ------------------------------------------------------------

model_id: 0200740000
domain_name: culture_system
system_name: culture_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for culture within CivilizationOS.

main_models:
- culture_system
- culture_registry
- culture_entity
- culture_network
- culture_policy_anchor

main_metrics:
- culture_index
- culture_capacity
- culture_risk_score
- culture_growth_rate
- culture_stability_indicator

main_events:
- culture_started
- culture_disrupted
- culture_expanded
- culture_stressed
- culture_stabilized

main_policies:
- culture_policy
- culture_regulation
- culture_support_program

main_registries:
- culture_registry
- culture_event_log
- culture_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# SPORTS_SYSTEM
# ------------------------------------------------------------

model_id: 0200750000
domain_name: sports_system
system_name: culture_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for sports within CivilizationOS.

main_models:
- sports_league
- sports_team
- sports_event
- stadium
- athlete_registry

main_metrics:
- ticket_sales
- sports_revenue
- attendance_rate
- broadcast_value
- sports_tourism

main_events:
- tournament_started
- player_transfer_announced
- broadcast_rights_signed
- injury_reported
- anti_doping_case_opened

main_policies:
- sports_regulation
- venue_safety_policy
- youth_sports_policy

main_registries:
- athlete_registry
- club_registry
- competition_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- spectator participation
- local identity
- travel
- media attention
- community engagement

erp_touchpoints:
- ticketing
- sponsorship
- merchandise
- venue operations
- broadcast contracts

# ------------------------------------------------------------
# ENTERTAINMENT_SYSTEM
# ------------------------------------------------------------

model_id: 0200760000
domain_name: entertainment_system
system_name: culture_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for entertainment within CivilizationOS.

main_models:
- entertainment_system
- entertainment_registry
- entertainment_entity
- entertainment_network
- entertainment_policy_anchor

main_metrics:
- entertainment_index
- entertainment_capacity
- entertainment_risk_score
- entertainment_growth_rate
- entertainment_stability_indicator

main_events:
- entertainment_started
- entertainment_disrupted
- entertainment_expanded
- entertainment_stressed
- entertainment_stabilized

main_policies:
- entertainment_policy
- entertainment_regulation
- entertainment_support_program

main_registries:
- entertainment_registry
- entertainment_event_log
- entertainment_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# RELIGION_SYSTEM
# ------------------------------------------------------------

model_id: 0200770000
domain_name: religion_system
system_name: social_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for religion within CivilizationOS.

main_models:
- religion_system
- religion_registry
- religion_entity
- religion_network
- religion_policy_anchor

main_metrics:
- religion_index
- religion_capacity
- religion_risk_score
- religion_growth_rate
- religion_stability_indicator

main_events:
- religion_started
- religion_disrupted
- religion_expanded
- religion_stressed
- religion_stabilized

main_policies:
- religion_policy
- religion_regulation
- religion_support_program

main_registries:
- religion_registry
- religion_event_log
- religion_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# CIVIL_SOCIETY_SYSTEM
# ------------------------------------------------------------

model_id: 0200780000
domain_name: civil_society_system
system_name: social_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for civil_society within CivilizationOS.

main_models:
- civil_society_system
- civil_society_registry
- civil_society_entity
- civil_society_network
- civil_society_policy_anchor

main_metrics:
- civil_society_index
- civil_society_capacity
- civil_society_risk_score
- civil_society_growth_rate
- civil_society_stability_indicator

main_events:
- civil_society_started
- civil_society_disrupted
- civil_society_expanded
- civil_society_stressed
- civil_society_stabilized

main_policies:
- civil_society_policy
- civil_society_regulation
- civil_society_support_program

main_registries:
- civil_society_registry
- civil_society_event_log
- civil_society_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# SECURITY_SYSTEM
# ------------------------------------------------------------

model_id: 0200790000
domain_name: security_system
system_name: security_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for security within CivilizationOS.

main_models:
- security_system
- security_registry
- security_entity
- security_network
- security_policy_anchor

main_metrics:
- security_index
- security_capacity
- security_risk_score
- security_growth_rate
- security_stability_indicator

main_events:
- security_started
- security_disrupted
- security_expanded
- security_stressed
- security_stabilized

main_policies:
- security_policy
- security_regulation
- security_support_program

main_registries:
- security_registry
- security_event_log
- security_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# MILITARY_SYSTEM
# ------------------------------------------------------------

model_id: 0200800000
domain_name: military_system
system_name: security_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for military within CivilizationOS.

main_models:
- military_system
- military_registry
- military_entity
- military_network
- military_policy_anchor

main_metrics:
- military_index
- military_capacity
- military_risk_score
- military_growth_rate
- military_stability_indicator

main_events:
- military_started
- military_disrupted
- military_expanded
- military_stressed
- military_stabilized

main_policies:
- military_policy
- military_regulation
- military_support_program

main_registries:
- military_registry
- military_event_log
- military_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# INTELLIGENCE_SYSTEM
# ------------------------------------------------------------

model_id: 0200810000
domain_name: intelligence_system
system_name: security_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for intelligence within CivilizationOS.

main_models:
- intelligence_system
- intelligence_registry
- intelligence_entity
- intelligence_network
- intelligence_policy_anchor

main_metrics:
- intelligence_index
- intelligence_capacity
- intelligence_risk_score
- intelligence_growth_rate
- intelligence_stability_indicator

main_events:
- intelligence_started
- intelligence_disrupted
- intelligence_expanded
- intelligence_stressed
- intelligence_stabilized

main_policies:
- intelligence_policy
- intelligence_regulation
- intelligence_support_program

main_registries:
- intelligence_registry
- intelligence_event_log
- intelligence_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# DIPLOMACY_SYSTEM
# ------------------------------------------------------------

model_id: 0200820000
domain_name: diplomacy_system
system_name: international_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for diplomacy within CivilizationOS.

main_models:
- diplomacy_system
- diplomacy_registry
- diplomacy_entity
- diplomacy_network
- diplomacy_policy_anchor

main_metrics:
- diplomacy_index
- diplomacy_capacity
- diplomacy_risk_score
- diplomacy_growth_rate
- diplomacy_stability_indicator

main_events:
- diplomacy_started
- diplomacy_disrupted
- diplomacy_expanded
- diplomacy_stressed
- diplomacy_stabilized

main_policies:
- diplomacy_policy
- diplomacy_regulation
- diplomacy_support_program

main_registries:
- diplomacy_registry
- diplomacy_event_log
- diplomacy_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# INTERNATIONAL_ORGANIZATION_SYSTEM
# ------------------------------------------------------------

model_id: 0200830000
domain_name: international_organization_system
system_name: international_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for international_organization within CivilizationOS.

main_models:
- international_organization_system
- international_organization_registry
- international_organization_entity
- international_organization_network
- international_organization_policy_anchor

main_metrics:
- international_organization_index
- international_organization_capacity
- international_organization_risk_score
- international_organization_growth_rate
- international_organization_stability_indicator

main_events:
- international_organization_started
- international_organization_disrupted
- international_organization_expanded
- international_organization_stressed
- international_organization_stabilized

main_policies:
- international_organization_policy
- international_organization_regulation
- international_organization_support_program

main_registries:
- international_organization_registry
- international_organization_event_log
- international_organization_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# LAW_SYSTEM
# ------------------------------------------------------------

model_id: 0200840000
domain_name: law_system
system_name: governance_and_legal_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for law within CivilizationOS.

main_models:
- law_system
- law_registry
- law_entity
- law_network
- law_policy_anchor

main_metrics:
- law_index
- law_capacity
- law_risk_score
- law_growth_rate
- law_stability_indicator

main_events:
- law_started
- law_disrupted
- law_expanded
- law_stressed
- law_stabilized

main_policies:
- law_policy
- law_regulation
- law_support_program

main_registries:
- law_registry
- law_event_log
- law_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# PROPERTY_RIGHTS_SYSTEM
# ------------------------------------------------------------

model_id: 0200850000
domain_name: property_rights_system
system_name: governance_and_legal_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for property_rights within CivilizationOS.

main_models:
- property_rights_system
- property_rights_registry
- property_rights_entity
- property_rights_network
- property_rights_policy_anchor

main_metrics:
- property_rights_index
- property_rights_capacity
- property_rights_risk_score
- property_rights_growth_rate
- property_rights_stability_indicator

main_events:
- property_rights_started
- property_rights_disrupted
- property_rights_expanded
- property_rights_stressed
- property_rights_stabilized

main_policies:
- property_rights_policy
- property_rights_regulation
- property_rights_support_program

main_registries:
- property_rights_registry
- property_rights_event_log
- property_rights_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# INNOVATION_SYSTEM
# ------------------------------------------------------------

model_id: 0200860000
domain_name: innovation_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for innovation within CivilizationOS.

main_models:
- innovation_system
- innovation_registry
- innovation_entity
- innovation_network
- innovation_policy_anchor

main_metrics:
- innovation_index
- innovation_capacity
- innovation_risk_score
- innovation_growth_rate
- innovation_stability_indicator

main_events:
- innovation_started
- innovation_disrupted
- innovation_expanded
- innovation_stressed
- innovation_stabilized

main_policies:
- innovation_policy
- innovation_regulation
- innovation_support_program

main_registries:
- innovation_registry
- innovation_event_log
- innovation_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# URBAN_SYSTEM
# ------------------------------------------------------------

model_id: 0200870000
domain_name: urban_system
system_name: environment_and_settlement_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for urban within CivilizationOS.

main_models:
- urban_system
- urban_registry
- urban_entity
- urban_network
- urban_policy_anchor

main_metrics:
- urban_index
- urban_capacity
- urban_risk_score
- urban_growth_rate
- urban_stability_indicator

main_events:
- urban_started
- urban_disrupted
- urban_expanded
- urban_stressed
- urban_stabilized

main_policies:
- urban_policy
- urban_regulation
- urban_support_program

main_registries:
- urban_registry
- urban_event_log
- urban_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# RURAL_SYSTEM
# ------------------------------------------------------------

model_id: 0200880000
domain_name: rural_system
system_name: environment_and_settlement_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for rural within CivilizationOS.

main_models:
- rural_system
- rural_registry
- rural_entity
- rural_network
- rural_policy_anchor

main_metrics:
- rural_index
- rural_capacity
- rural_risk_score
- rural_growth_rate
- rural_stability_indicator

main_events:
- rural_started
- rural_disrupted
- rural_expanded
- rural_stressed
- rural_stabilized

main_policies:
- rural_policy
- rural_regulation
- rural_support_program

main_registries:
- rural_registry
- rural_event_log
- rural_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# HOUSING_SYSTEM
# ------------------------------------------------------------

model_id: 0200890000
domain_name: housing_system
system_name: social_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for housing within CivilizationOS.

main_models:
- housing_system
- housing_registry
- housing_entity
- housing_network
- housing_policy_anchor

main_metrics:
- housing_index
- housing_capacity
- housing_risk_score
- housing_growth_rate
- housing_stability_indicator

main_events:
- housing_started
- housing_disrupted
- housing_expanded
- housing_stressed
- housing_stabilized

main_policies:
- housing_policy
- housing_regulation
- housing_support_program

main_registries:
- housing_registry
- housing_event_log
- housing_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# SOCIAL_WELFARE_SYSTEM
# ------------------------------------------------------------

model_id: 0200900000
domain_name: social_welfare_system
system_name: social_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for social_welfare within CivilizationOS.

main_models:
- social_welfare_system
- social_welfare_registry
- social_welfare_entity
- social_welfare_network
- social_welfare_policy_anchor

main_metrics:
- social_welfare_index
- social_welfare_capacity
- social_welfare_risk_score
- social_welfare_growth_rate
- social_welfare_stability_indicator

main_events:
- social_welfare_started
- social_welfare_disrupted
- social_welfare_expanded
- social_welfare_stressed
- social_welfare_stabilized

main_policies:
- social_welfare_policy
- social_welfare_regulation
- social_welfare_support_program

main_registries:
- social_welfare_registry
- social_welfare_event_log
- social_welfare_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# DEMOGRAPHY_SYSTEM
# ------------------------------------------------------------

model_id: 0200910000
domain_name: demography_system
system_name: population_and_economy_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for demography within CivilizationOS.

main_models:
- demography_system
- demography_registry
- demography_entity
- demography_network
- demography_policy_anchor

main_metrics:
- demography_index
- demography_capacity
- demography_risk_score
- demography_growth_rate
- demography_stability_indicator

main_events:
- demography_started
- demography_disrupted
- demography_expanded
- demography_stressed
- demography_stabilized

main_policies:
- demography_policy
- demography_regulation
- demography_support_program

main_registries:
- demography_registry
- demography_event_log
- demography_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# DISASTER_MANAGEMENT_SYSTEM
# ------------------------------------------------------------

model_id: 0200920000
domain_name: disaster_management_system
system_name: environment_and_settlement_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for disaster_management within CivilizationOS.

main_models:
- disaster_management_system
- disaster_management_registry
- disaster_management_entity
- disaster_management_network
- disaster_management_policy_anchor

main_metrics:
- disaster_management_index
- disaster_management_capacity
- disaster_management_risk_score
- disaster_management_growth_rate
- disaster_management_stability_indicator

main_events:
- disaster_management_started
- disaster_management_disrupted
- disaster_management_expanded
- disaster_management_stressed
- disaster_management_stabilized

main_policies:
- disaster_management_policy
- disaster_management_regulation
- disaster_management_support_program

main_registries:
- disaster_management_registry
- disaster_management_event_log
- disaster_management_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# SPACE_SYSTEM
# ------------------------------------------------------------

model_id: 0200930000
domain_name: space_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for space within CivilizationOS.

main_models:
- space_system
- space_registry
- space_entity
- space_network
- space_policy_anchor

main_metrics:
- space_index
- space_capacity
- space_risk_score
- space_growth_rate
- space_stability_indicator

main_events:
- space_started
- space_disrupted
- space_expanded
- space_stressed
- space_stabilized

main_policies:
- space_policy
- space_regulation
- space_support_program

main_registries:
- space_registry
- space_event_log
- space_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# RESEARCH_FUNDING_SYSTEM
# ------------------------------------------------------------

model_id: 0200940000
domain_name: research_funding_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for research_funding within CivilizationOS.

main_models:
- research_funding_system
- research_funding_registry
- research_funding_entity
- research_funding_network
- research_funding_policy_anchor

main_metrics:
- research_funding_index
- research_funding_capacity
- research_funding_risk_score
- research_funding_growth_rate
- research_funding_stability_indicator

main_events:
- research_funding_started
- research_funding_disrupted
- research_funding_expanded
- research_funding_stressed
- research_funding_stabilized

main_policies:
- research_funding_policy
- research_funding_regulation
- research_funding_support_program

main_registries:
- research_funding_registry
- research_funding_event_log
- research_funding_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# INTELLECTUAL_PROPERTY_SYSTEM
# ------------------------------------------------------------

model_id: 0200950000
domain_name: intellectual_property_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for intellectual_property within CivilizationOS.

main_models:
- intellectual_property_system
- intellectual_property_registry
- intellectual_property_entity
- intellectual_property_network
- intellectual_property_policy_anchor

main_metrics:
- intellectual_property_index
- intellectual_property_capacity
- intellectual_property_risk_score
- intellectual_property_growth_rate
- intellectual_property_stability_indicator

main_events:
- intellectual_property_started
- intellectual_property_disrupted
- intellectual_property_expanded
- intellectual_property_stressed
- intellectual_property_stabilized

main_policies:
- intellectual_property_policy
- intellectual_property_regulation
- intellectual_property_support_program

main_registries:
- intellectual_property_registry
- intellectual_property_event_log
- intellectual_property_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# SUPPLY_CHAIN_SYSTEM
# ------------------------------------------------------------

model_id: 0200960000
domain_name: supply_chain_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for supply_chain within CivilizationOS.

main_models:
- supply_chain_system
- supply_chain_registry
- supply_chain_entity
- supply_chain_network
- supply_chain_policy_anchor

main_metrics:
- supply_chain_index
- supply_chain_capacity
- supply_chain_risk_score
- supply_chain_growth_rate
- supply_chain_stability_indicator

main_events:
- supply_chain_started
- supply_chain_disrupted
- supply_chain_expanded
- supply_chain_stressed
- supply_chain_stabilized

main_policies:
- supply_chain_policy
- supply_chain_regulation
- supply_chain_support_program

main_registries:
- supply_chain_registry
- supply_chain_event_log
- supply_chain_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# NATURAL_RESOURCES_SYSTEM
# ------------------------------------------------------------

model_id: 0200970000
domain_name: natural_resources_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for natural_resources within CivilizationOS.

main_models:
- natural_resources_system
- natural_resources_registry
- natural_resources_entity
- natural_resources_network
- natural_resources_policy_anchor

main_metrics:
- natural_resources_index
- natural_resources_capacity
- natural_resources_risk_score
- natural_resources_growth_rate
- natural_resources_stability_indicator

main_events:
- natural_resources_started
- natural_resources_disrupted
- natural_resources_expanded
- natural_resources_stressed
- natural_resources_stabilized

main_policies:
- natural_resources_policy
- natural_resources_regulation
- natural_resources_support_program

main_registries:
- natural_resources_registry
- natural_resources_event_log
- natural_resources_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# COMMUNICATIONS_SYSTEM
# ------------------------------------------------------------

model_id: 0200980000
domain_name: communications_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for communications within CivilizationOS.

main_models:
- communications_system
- communications_registry
- communications_entity
- communications_network
- communications_policy_anchor

main_metrics:
- communications_index
- communications_capacity
- communications_risk_score
- communications_growth_rate
- communications_stability_indicator

main_events:
- communications_started
- communications_disrupted
- communications_expanded
- communications_stressed
- communications_stabilized

main_policies:
- communications_policy
- communications_regulation
- communications_support_program

main_registries:
- communications_registry
- communications_event_log
- communications_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# CONSUMER_PROTECTION_SYSTEM
# ------------------------------------------------------------

model_id: 0200990000
domain_name: consumer_protection_system
system_name: governance_and_legal_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for consumer_protection within CivilizationOS.

main_models:
- consumer_protection_system
- consumer_protection_registry
- consumer_protection_entity
- consumer_protection_network
- consumer_protection_policy_anchor

main_metrics:
- consumer_protection_index
- consumer_protection_capacity
- consumer_protection_risk_score
- consumer_protection_growth_rate
- consumer_protection_stability_indicator

main_events:
- consumer_protection_started
- consumer_protection_disrupted
- consumer_protection_expanded
- consumer_protection_stressed
- consumer_protection_stabilized

main_policies:
- consumer_protection_policy
- consumer_protection_regulation
- consumer_protection_support_program

main_registries:
- consumer_protection_registry
- consumer_protection_event_log
- consumer_protection_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# LABOR_RELATIONS_SYSTEM
# ------------------------------------------------------------

model_id: 0201000000
domain_name: labor_relations_system
system_name: governance_and_legal_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for labor_relations within CivilizationOS.

main_models:
- labor_relations_system
- labor_relations_registry
- labor_relations_entity
- labor_relations_network
- labor_relations_policy_anchor

main_metrics:
- labor_relations_index
- labor_relations_capacity
- labor_relations_risk_score
- labor_relations_growth_rate
- labor_relations_stability_indicator

main_events:
- labor_relations_started
- labor_relations_disrupted
- labor_relations_expanded
- labor_relations_stressed
- labor_relations_stabilized

main_policies:
- labor_relations_policy
- labor_relations_regulation
- labor_relations_support_program

main_registries:
- labor_relations_registry
- labor_relations_event_log
- labor_relations_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# PUBLIC_PROCUREMENT_SYSTEM
# ------------------------------------------------------------

model_id: 0201010000
domain_name: public_procurement_system
system_name: governance_and_legal_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for public_procurement within CivilizationOS.

main_models:
- public_procurement_system
- public_procurement_registry
- public_procurement_entity
- public_procurement_network
- public_procurement_policy_anchor

main_metrics:
- public_procurement_index
- public_procurement_capacity
- public_procurement_risk_score
- public_procurement_growth_rate
- public_procurement_stability_indicator

main_events:
- public_procurement_started
- public_procurement_disrupted
- public_procurement_expanded
- public_procurement_stressed
- public_procurement_stabilized

main_policies:
- public_procurement_policy
- public_procurement_regulation
- public_procurement_support_program

main_registries:
- public_procurement_registry
- public_procurement_event_log
- public_procurement_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# DEVELOPMENT_FINANCE_SYSTEM
# ------------------------------------------------------------

model_id: 0201020000
domain_name: development_finance_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for development_finance within CivilizationOS.

main_models:
- development_finance_system
- development_finance_registry
- development_finance_entity
- development_finance_network
- development_finance_policy_anchor

main_metrics:
- development_finance_index
- development_finance_capacity
- development_finance_risk_score
- development_finance_growth_rate
- development_finance_stability_indicator

main_events:
- development_finance_started
- development_finance_disrupted
- development_finance_expanded
- development_finance_stressed
- development_finance_stabilized

main_policies:
- development_finance_policy
- development_finance_regulation
- development_finance_support_program

main_registries:
- development_finance_registry
- development_finance_event_log
- development_finance_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# PUBLIC_POLICY_SYSTEM
# ------------------------------------------------------------

model_id: 0201030000
domain_name: public_policy_system
system_name: governance_and_legal_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for public_policy within CivilizationOS.

main_models:
- public_policy_system
- public_policy_registry
- public_policy_entity
- public_policy_network
- public_policy_policy_anchor

main_metrics:
- public_policy_index
- public_policy_capacity
- public_policy_risk_score
- public_policy_growth_rate
- public_policy_stability_indicator

main_events:
- public_policy_started
- public_policy_disrupted
- public_policy_expanded
- public_policy_stressed
- public_policy_stabilized

main_policies:
- public_policy_policy
- public_policy_regulation
- public_policy_support_program

main_registries:
- public_policy_registry
- public_policy_event_log
- public_policy_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# STANDARDS_SYSTEM
# ------------------------------------------------------------

model_id: 0201040000
domain_name: standards_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for standards within CivilizationOS.

main_models:
- standards_system
- standards_registry
- standards_entity
- standards_network
- standards_policy_anchor

main_metrics:
- standards_index
- standards_capacity
- standards_risk_score
- standards_growth_rate
- standards_stability_indicator

main_events:
- standards_started
- standards_disrupted
- standards_expanded
- standards_stressed
- standards_stabilized

main_policies:
- standards_policy
- standards_regulation
- standards_support_program

main_registries:
- standards_registry
- standards_event_log
- standards_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# RESEARCH_UNIVERSITY_SYSTEM
# ------------------------------------------------------------

model_id: 0201050000
domain_name: research_university_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for research_university within CivilizationOS.

main_models:
- research_university_system
- research_university_registry
- research_university_entity
- research_university_network
- research_university_policy_anchor

main_metrics:
- research_university_index
- research_university_capacity
- research_university_risk_score
- research_university_growth_rate
- research_university_stability_indicator

main_events:
- research_university_started
- research_university_disrupted
- research_university_expanded
- research_university_stressed
- research_university_stabilized

main_policies:
- research_university_policy
- research_university_regulation
- research_university_support_program

main_registries:
- research_university_registry
- research_university_event_log
- research_university_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# MARINE_SYSTEM
# ------------------------------------------------------------

model_id: 0201060000
domain_name: marine_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for marine within CivilizationOS.

main_models:
- marine_system
- marine_registry
- marine_entity
- marine_network
- marine_policy_anchor

main_metrics:
- marine_index
- marine_capacity
- marine_risk_score
- marine_growth_rate
- marine_stability_indicator

main_events:
- marine_started
- marine_disrupted
- marine_expanded
- marine_stressed
- marine_stabilized

main_policies:
- marine_policy
- marine_regulation
- marine_support_program

main_registries:
- marine_registry
- marine_event_log
- marine_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# BORDER_SYSTEM
# ------------------------------------------------------------

model_id: 0201070000
domain_name: border_system
system_name: security_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for border within CivilizationOS.

main_models:
- border_system
- border_registry
- border_entity
- border_network
- border_policy_anchor

main_metrics:
- border_index
- border_capacity
- border_risk_score
- border_growth_rate
- border_stability_indicator

main_events:
- border_started
- border_disrupted
- border_expanded
- border_stressed
- border_stabilized

main_policies:
- border_policy
- border_regulation
- border_support_program

main_registries:
- border_registry
- border_event_log
- border_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# FINANCIAL_CRIME_SYSTEM
# ------------------------------------------------------------

model_id: 0201080000
domain_name: financial_crime_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for financial_crime within CivilizationOS.

main_models:
- financial_crime_system
- financial_crime_registry
- financial_crime_entity
- financial_crime_network
- financial_crime_policy_anchor

main_metrics:
- financial_crime_index
- financial_crime_capacity
- financial_crime_risk_score
- financial_crime_growth_rate
- financial_crime_stability_indicator

main_events:
- financial_crime_started
- financial_crime_disrupted
- financial_crime_expanded
- financial_crime_stressed
- financial_crime_stabilized

main_policies:
- financial_crime_policy
- financial_crime_regulation
- financial_crime_support_program

main_registries:
- financial_crime_registry
- financial_crime_event_log
- financial_crime_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# GOVERNANCE_SYSTEM
# ------------------------------------------------------------

model_id: 0201090000
domain_name: governance_system
system_name: governance_and_legal_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for governance within CivilizationOS.

main_models:
- governance_system
- governance_registry
- governance_entity
- governance_network
- governance_policy_anchor

main_metrics:
- governance_index
- governance_capacity
- governance_risk_score
- governance_growth_rate
- governance_stability_indicator

main_events:
- governance_started
- governance_disrupted
- governance_expanded
- governance_stressed
- governance_stabilized

main_policies:
- governance_policy
- governance_regulation
- governance_support_program

main_registries:
- governance_registry
- governance_event_log
- governance_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# REGIONAL_INTEGRATION_SYSTEM
# ------------------------------------------------------------

model_id: 0201100000
domain_name: regional_integration_system
system_name: international_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for regional_integration within CivilizationOS.

main_models:
- regional_integration_system
- regional_integration_registry
- regional_integration_entity
- regional_integration_network
- regional_integration_policy_anchor

main_metrics:
- regional_integration_index
- regional_integration_capacity
- regional_integration_risk_score
- regional_integration_growth_rate
- regional_integration_stability_indicator

main_events:
- regional_integration_started
- regional_integration_disrupted
- regional_integration_expanded
- regional_integration_stressed
- regional_integration_stabilized

main_policies:
- regional_integration_policy
- regional_integration_regulation
- regional_integration_support_program

main_registries:
- regional_integration_registry
- regional_integration_event_log
- regional_integration_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# SPACE_ECONOMY_SYSTEM
# ------------------------------------------------------------

model_id: 0201110000
domain_name: space_economy_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for space_economy within CivilizationOS.

main_models:
- space_economy_system
- space_economy_registry
- space_economy_entity
- space_economy_network
- space_economy_policy_anchor

main_metrics:
- space_economy_index
- space_economy_capacity
- space_economy_risk_score
- space_economy_growth_rate
- space_economy_stability_indicator

main_events:
- space_economy_started
- space_economy_disrupted
- space_economy_expanded
- space_economy_stressed
- space_economy_stabilized

main_policies:
- space_economy_policy
- space_economy_regulation
- space_economy_support_program

main_registries:
- space_economy_registry
- space_economy_event_log
- space_economy_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# DIGITAL_GOVERNMENT_SYSTEM
# ------------------------------------------------------------

model_id: 0201120000
domain_name: digital_government_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for digital_government within CivilizationOS.

main_models:
- digital_government_system
- digital_government_registry
- digital_government_entity
- digital_government_network
- digital_government_policy_anchor

main_metrics:
- digital_government_index
- digital_government_capacity
- digital_government_risk_score
- digital_government_growth_rate
- digital_government_stability_indicator

main_events:
- digital_government_started
- digital_government_disrupted
- digital_government_expanded
- digital_government_stressed
- digital_government_stabilized

main_policies:
- digital_government_policy
- digital_government_regulation
- digital_government_support_program

main_registries:
- digital_government_registry
- digital_government_event_log
- digital_government_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# BIOECONOMY_SYSTEM
# ------------------------------------------------------------

model_id: 0201130000
domain_name: bioeconomy_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for bioeconomy within CivilizationOS.

main_models:
- bioeconomy_system
- bioeconomy_registry
- bioeconomy_entity
- bioeconomy_network
- bioeconomy_policy_anchor

main_metrics:
- bioeconomy_index
- bioeconomy_capacity
- bioeconomy_risk_score
- bioeconomy_growth_rate
- bioeconomy_stability_indicator

main_events:
- bioeconomy_started
- bioeconomy_disrupted
- bioeconomy_expanded
- bioeconomy_stressed
- bioeconomy_stabilized

main_policies:
- bioeconomy_policy
- bioeconomy_regulation
- bioeconomy_support_program

main_registries:
- bioeconomy_registry
- bioeconomy_event_log
- bioeconomy_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# WASTE_CIRCULAR_ECONOMY_SYSTEM
# ------------------------------------------------------------

model_id: 0201140000
domain_name: waste_circular_economy_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for waste_circular_economy within CivilizationOS.

main_models:
- waste_circular_economy_system
- waste_circular_economy_registry
- waste_circular_economy_entity
- waste_circular_economy_network
- waste_circular_economy_policy_anchor

main_metrics:
- waste_circular_economy_index
- waste_circular_economy_capacity
- waste_circular_economy_risk_score
- waste_circular_economy_growth_rate
- waste_circular_economy_stability_indicator

main_events:
- waste_circular_economy_started
- waste_circular_economy_disrupted
- waste_circular_economy_expanded
- waste_circular_economy_stressed
- waste_circular_economy_stabilized

main_policies:
- waste_circular_economy_policy
- waste_circular_economy_regulation
- waste_circular_economy_support_program

main_registries:
- waste_circular_economy_registry
- waste_circular_economy_event_log
- waste_circular_economy_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# OCEANS_TRADE_SYSTEM
# ------------------------------------------------------------

model_id: 0201150000
domain_name: oceans_trade_system
system_name: industry_and_infrastructure_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for oceans_trade within CivilizationOS.

main_models:
- oceans_trade_system
- oceans_trade_registry
- oceans_trade_entity
- oceans_trade_network
- oceans_trade_policy_anchor

main_metrics:
- oceans_trade_index
- oceans_trade_capacity
- oceans_trade_risk_score
- oceans_trade_growth_rate
- oceans_trade_stability_indicator

main_events:
- oceans_trade_started
- oceans_trade_disrupted
- oceans_trade_expanded
- oceans_trade_stressed
- oceans_trade_stabilized

main_policies:
- oceans_trade_policy
- oceans_trade_regulation
- oceans_trade_support_program

main_registries:
- oceans_trade_registry
- oceans_trade_event_log
- oceans_trade_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# KNOWLEDGE_ECONOMY_SYSTEM
# ------------------------------------------------------------

model_id: 0201160000
domain_name: knowledge_economy_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for knowledge_economy within CivilizationOS.

main_models:
- knowledge_economy_system
- knowledge_economy_registry
- knowledge_economy_entity
- knowledge_economy_network
- knowledge_economy_policy_anchor

main_metrics:
- knowledge_economy_index
- knowledge_economy_capacity
- knowledge_economy_risk_score
- knowledge_economy_growth_rate
- knowledge_economy_stability_indicator

main_events:
- knowledge_economy_started
- knowledge_economy_disrupted
- knowledge_economy_expanded
- knowledge_economy_stressed
- knowledge_economy_stabilized

main_policies:
- knowledge_economy_policy
- knowledge_economy_regulation
- knowledge_economy_support_program

main_registries:
- knowledge_economy_registry
- knowledge_economy_event_log
- knowledge_economy_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# PLATFORM_ECONOMY_SYSTEM
# ------------------------------------------------------------

model_id: 0201170000
domain_name: platform_economy_system
system_name: technology_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for platform_economy within CivilizationOS.

main_models:
- platform_economy_system
- platform_economy_registry
- platform_economy_entity
- platform_economy_network
- platform_economy_policy_anchor

main_metrics:
- platform_economy_index
- platform_economy_capacity
- platform_economy_risk_score
- platform_economy_growth_rate
- platform_economy_stability_indicator

main_events:
- platform_economy_started
- platform_economy_disrupted
- platform_economy_expanded
- platform_economy_stressed
- platform_economy_stabilized

main_policies:
- platform_economy_policy
- platform_economy_regulation
- platform_economy_support_program

main_registries:
- platform_economy_registry
- platform_economy_event_log
- platform_economy_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# FINANCIAL_STABILITY_SYSTEM
# ------------------------------------------------------------

model_id: 0201180000
domain_name: financial_stability_system
system_name: financial_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for financial_stability within CivilizationOS.

main_models:
- financial_stability_system
- financial_stability_registry
- financial_stability_entity
- financial_stability_network
- financial_stability_policy_anchor

main_metrics:
- financial_stability_index
- financial_stability_capacity
- financial_stability_risk_score
- financial_stability_growth_rate
- financial_stability_stability_indicator

main_events:
- financial_stability_started
- financial_stability_disrupted
- financial_stability_expanded
- financial_stability_stressed
- financial_stability_stabilized

main_policies:
- financial_stability_policy
- financial_stability_regulation
- financial_stability_support_program

main_registries:
- financial_stability_registry
- financial_stability_event_log
- financial_stability_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# HUMAN_CAPITAL_SYSTEM
# ------------------------------------------------------------

model_id: 0201190000
domain_name: human_capital_system
system_name: population_and_economy_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for human_capital within CivilizationOS.

main_models:
- human_capital_system
- human_capital_registry
- human_capital_entity
- human_capital_network
- human_capital_policy_anchor

main_metrics:
- human_capital_index
- human_capital_capacity
- human_capital_risk_score
- human_capital_growth_rate
- human_capital_stability_indicator

main_events:
- human_capital_started
- human_capital_disrupted
- human_capital_expanded
- human_capital_stressed
- human_capital_stabilized

main_policies:
- human_capital_policy
- human_capital_regulation
- human_capital_support_program

main_registries:
- human_capital_registry
- human_capital_event_log
- human_capital_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance

# ------------------------------------------------------------
# GLOBAL_CRISIS_SYSTEM
# ------------------------------------------------------------

model_id: 0201200000
domain_name: global_crisis_system
system_name: international_system
domain_purpose: Define the canonical structure, runtime meaning, events, policies, risks, and touchpoints for global_crisis within CivilizationOS.

main_models:
- global_crisis_system
- global_crisis_registry
- global_crisis_entity
- global_crisis_network
- global_crisis_policy_anchor

main_metrics:
- global_crisis_index
- global_crisis_capacity
- global_crisis_risk_score
- global_crisis_growth_rate
- global_crisis_stability_indicator

main_events:
- global_crisis_started
- global_crisis_disrupted
- global_crisis_expanded
- global_crisis_stressed
- global_crisis_stabilized

main_policies:
- global_crisis_policy
- global_crisis_regulation
- global_crisis_support_program

main_registries:
- global_crisis_registry
- global_crisis_event_log
- global_crisis_audit_record

upstream_systems:
- government_system
- legal_system
- financial_system

downstream_systems:
- population_system
- economy_system
- international_system

critical_dependencies:
- policy legitimacy
- reliable data
- infrastructure continuity
- institutional capacity

critical_risks:
- operational disruption
- policy failure
- data inconsistency
- cascade propagation

runtime_mode_notes:
- normal_mode for ordinary operations
- stressed_mode for elevated pressure
- crisis_mode for multi-domain disruption
- recovery_mode for normalization

severity_patterns:
- S0-S1 for routine updates
- S2 for bounded domain disruption
- S3-S4 for national-scale stress
- S5 for civilization-scale failure

propagation_patterns:
- direct_operational propagation
- financial propagation
- policy propagation
- social propagation
- infrastructure propagation

recovery_patterns:
- stabilization by policy intervention
- capacity restoration
- confidence restoration
- metric normalization

persona_touchpoints:
- household
- work
- consumption
- mobility
- health and education access

erp_touchpoints:
- company operations
- labor
- banking
- taxation
- logistics and compliance
