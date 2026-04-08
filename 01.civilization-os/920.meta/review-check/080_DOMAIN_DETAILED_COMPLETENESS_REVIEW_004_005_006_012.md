# ============================================================
# DOMAIN DETAILED COMPLETENESS REVIEW
# targets: 004.mode / 005.story / 006.player / 012.integration
# ============================================================

status: canonical-review
layer: meta
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Provides a final review framework before rebinding or bible regeneration
for the domains 004.mode, 005.story, 006.player, and 012.integration.

review_intent:
The purpose of this review is not to restate architecture.
It is to verify that each domain is sufficiently complete,
internally consistent, safely separated by layer,
and ready for integrated rebinding.

review_scope:
- 004.mode
- 005.story
- 006.player
- 012.integration

review_layers:
- 020.architecture
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development

# ============================================================
# 1. REVIEW AXES
# ============================================================

review_axes:
- domain completeness
- layer completeness
- file self-sufficiency
- cross-layer consistency
- actor and authority clarity
- current versus history separation
- failure-path completeness
- implementation readiness
- development guidance sufficiency

definition_of_pass:
A domain passes only when:
- each required layer exists
- each core file is materially populated
- each file is self-sufficient enough to read independently
- no layer contradicts another layer
- no current/history mixing remains
- no hidden authority inflation remains
- implementation and development layers are actionable

# ============================================================
# 2. REQUIRED FILE DENSITY CHECK
# ============================================================

required_file_elements:
- purpose
- scope
- design_intent or equivalent rationale
- canonical_rules or equivalent constraints
- required_behavior
- state_model or equivalent structural runtime/operational shape
- validation_rules
- transition_rules where lifecycle or stage exists
- actor_matrix / consumer_matrix / authority boundary where relevant
- decision_matrix / sequence / routing logic where relevant
- failure_codes
- example_scenarios

pass_rule:
A file is considered materially complete only if it contains
the elements required for that layer and domain.
Missing one minor item may be acceptable,
but a file that lacks structure, validation, or failure handling
must be treated as incomplete.

# ============================================================
# 3. DOMAIN-BY-DOMAIN REVIEW CHECKLIST
# ============================================================

# ------------------------------------------------------------
# 3-1. 004.mode
# ------------------------------------------------------------

domain: 004.mode

must_be_true:
- mode is treated as canonical context, not UI-only state
- current mode and historical mode are separated in all layers
- conflict detection exists before effective mode delivery
- restricted and sealed mode semantics are masked or blocked appropriately
- switch operations require explicit authority where required
- rollback and history linkage exist for high-impact changes

common_failure_patterns:
- implicit mode hidden in route or component state
- live and history queries sharing one resolver
- public-safe output built before restricted filtering
- switch path treated as permission system without explicit authority context
- emergency mode exposed as ordinary mode

review_questions:
- Does architecture clearly define type/scope/priority/conflict?
- Does runtime explicitly resolve one effective mode or block?
- Does flow show request -> conflict check -> delivery/rejection order?
- Does integration preserve projection safety?
- Do operations preserve switch, containment, rollback, and history?
- Does policy define disclosure and retention classes?
- Does security enforce current/history separation and masked disclosure?
- Does infrastructure separate current cache from history cache?
- Does implementation split resolver, selector, filter, and switch logic?
- Does development explicitly ban UI-only mode truth?

# ------------------------------------------------------------
# 3-2. 005.story
# ------------------------------------------------------------

domain: 005.story

must_be_true:
- story is treated as canonical progression meaning, not decorative text
- current live story and replay/history story are separated in all layers
- branch visibility is explicit and enforced
- correction preserves prior stage and branch lineage
- public summaries do not leak restricted internal narrative
- completed/cancelled story becomes replay-safe, not live-current

common_failure_patterns:
- replay built from live stage selector
- branch logic hidden in UI text or page code
- correction overwriting prior stage without lineage
- public summary serializer reading restricted detail directly
- private player story visible outside ownership/support scope

review_questions:
- Does architecture define stage, branch, and replay semantics?
- Does runtime separate current stage from replay?
- Does flow enforce branch checks before delivery?
- Does integration distinguish public summary from replay export?
- Do operations preserve completion/cancellation -> replay path?
- Does policy define branch visibility and replay labeling?
- Does security enforce self/private/internal/audit distinctions?
- Does infrastructure separate live cache from replay chain storage?
- Does implementation split stage selector, branch evaluator, and replay reader?
- Does development ban UI-only story truth?

# ------------------------------------------------------------
# 3-3. 006.player
# ------------------------------------------------------------

domain: 006.player

must_be_true:
- player identity, role, progress, boundary, and lifecycle are distinct
- live player state and historical player state are separated
- lifecycle gating happens before participation
- restricted role/progress/boundary details are filtered appropriately
- high-impact mutations require explicit authority
- history and audit traces remain queryable without affecting live state

common_failure_patterns:
- monolithic "player status" field replacing structured truth
- archived player shown as active
- role/permission conflation
- boundary checks occurring after action execution starts
- self view and internal view using same serializer
- historical snapshots reused as live state

review_questions:
- Does architecture clearly separate identity/role/progress/boundary/lifecycle?
- Does runtime compose live player state deterministically?
- Does flow show lifecycle -> role -> progress -> boundary order?
- Does integration project public/self/internal views safely?
- Do operations preserve suspension, limitation, archival, and restoration?
- Does policy define disclosure and retention classes?
- Does security distinguish self/internal/restricted/audit access?
- Does infrastructure separate live from history and audit partitions?
- Does implementation keep modules separated?
- Does development forbid session/UI truth from replacing canonical player truth?

# ------------------------------------------------------------
# 3-4. 012.integration
# ------------------------------------------------------------

domain: 012.integration

must_be_true:
- integration remains contract-based and typed
- proposal_only, bounded_sync, canonical_write, replay, and audit paths are separated
- authority basis is explicit for restricted or mutating actions
- public export is projection-safe
- historical/replay access is labeled and separated from live delivery
- unauthorized overwrite attempts are blocked and traced

common_failure_patterns:
- proposal payload entering mutating lane
- public export using raw restricted serializer
- live and replay event handlers shared
- authority inferred from consumer type only
- audit path exposing mutation capability
- hidden mutation in internal integration path

review_questions:
- Does architecture define contract class, authority boundary, and overwrite denial?
- Does runtime enforce route/authority/label separation?
- Does flow show export/import/proposal/rejection order explicitly?
- Does integration layer itself clearly define projection and isolation?
- Do operations preserve review, containment, and audit for incidents?
- Does policy define mutation classes and retention?
- Does security prevent authority inflation and proposal leakage?
- Does infrastructure physically/logically separate lanes?
- Does implementation keep handlers split by lane?
- Does development explicitly forbid lane mixing?

# ============================================================
# 4. CROSS-LAYER CONSISTENCY CHECKS
# ============================================================

consistency_rules:
- 020.architecture must define meaning, never runtime shortcuts
- 040.runtime must execute architecture, not redefine it
- 050.flow must show ordered process compatible with runtime
- 060.integration must preserve ownership and projection rules from policy/security
- 070.operations must preserve trace and lifecycle integrity
- 080.policy must constrain what runtime/flow/integration are allowed to do
- 100.security must enforce what policy restricts
- 110.infrastructure must technically support separation promised by security/policy
- 120.implementation must map directly to architecture/runtime/policy/security
- 130.development must test and preserve all of the above

hard_fail_conditions:
- architecture says one thing and runtime contradicts it
- policy permits something security blocks without explanation
- security expects isolation that infrastructure cannot support
- implementation merges lanes the policy/security separate
- development guidance omits testing for the most dangerous failure mode

# ============================================================
# 5. CURRENT VS HISTORY SEPARATION CHECK
# ============================================================

critical_check:
Every target domain must explicitly separate:
- current-active reads
- historical/replay reads
- audit traces

hard_fail_examples:
- current cache reused for historical reads
- replay serialization reused as live output
- audit trace endpoint returning current-active summary as if equivalent
- historical-only state represented as current-active capability

pass_signals:
- separate request modes
- separate handlers or reader modules
- explicit historical labels
- explicit denial codes when history access is unauthorized

# ============================================================
# 6. AUTHORITY AND ACTOR CLARITY CHECK
# ============================================================

critical_check:
Every target domain must explicitly separate:
- ordinary consumer
- self consumer where relevant
- internal consumer
- restricted operator
- high-trust operator where relevant
- auditor

hard_fail_examples:
- support/internal implied by role name only, no authority basis
- audit path accessible via ordinary internal route
- proposal-only input upgraded to mutation without explicit reclassification
- admin-managed or emergency changes possible without authority basis

pass_signals:
- actor matrices exist where needed
- authority basis exists where mutation/restricted disclosure exists
- explicit deny paths and failure codes exist

# ============================================================
# 7. FILE SELF-SUFFICIENCY CHECK
# ============================================================

rule:
A core file should still be understandable if opened by itself.
It may reference neighboring files conceptually,
but it should not depend on missing hidden assumptions.

hard_fail_examples:
- only purpose/scope written, no behavior
- no validation rules
- no failure codes in mutating or security-sensitive files
- no examples in conceptually difficult files
- only overview explains critical meaning while body is skeletal

pass_signals:
- self-contained structure
- domain-specific examples
- actor/authority clarity where needed
- failure-path clarity

# ============================================================
# 8. REBINDING READINESS CHECK
# ============================================================

rebinding_ready_when:
- all 4 domains have 020 to 130 present
- no obviously thin placeholder bodies remain in core files
- all dangerous current/history and authority confusions are eliminated
- policy/security/infrastructure/implementation/development lines up
- index/overview/body relationship is coherent
- no quarantine candidates remain mixed into canonical path for these domains

not_rebinding_ready_when:
- some layers still look like outline only
- one domain has materially thinner security or infrastructure than others
- live/history separation is described but not implemented in later layers
- authority basis is missing in mutating domains
- development guidance fails to test critical failure paths

# ============================================================
# 9. FINAL REVIEW RESULT TEMPLATE
# ============================================================

final_result_template:

domain_004_mode:
- completeness:
- cross_layer_consistency:
- current_history_separation:
- authority_clarity:
- rebinding_ready:
- notes:

domain_005_story:
- completeness:
- cross_layer_consistency:
- current_history_separation:
- authority_clarity:
- rebinding_ready:
- notes:

domain_006_player:
- completeness:
- cross_layer_consistency:
- current_history_separation:
- authority_clarity:
- rebinding_ready:
- notes:

domain_012_integration:
- completeness:
- cross_layer_consistency:
- current_history_separation:
- authority_clarity:
- rebinding_ready:
- notes:

overall:
- rebinding_ready:
- highest_remaining_risk:
- recommended_next_action:

