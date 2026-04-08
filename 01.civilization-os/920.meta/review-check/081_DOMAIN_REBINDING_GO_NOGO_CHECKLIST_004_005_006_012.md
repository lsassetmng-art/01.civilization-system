# ============================================================
# DOMAIN REBINDING GO / NO-GO CHECKLIST
# targets: 004.mode / 005.story / 006.player / 012.integration
# ============================================================

status: canonical-review
layer: meta
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Provides a concise go / no-go checklist before rebinding,
bible rebuild, or handoff update for 004.mode, 005.story,
006.player, and 012.integration.

# ============================================================
# GO / NO-GO ITEMS
# ============================================================

1. structure_presence
- [ ] 020 through 130 exist for all 4 domains
- [ ] index and overview exist in each target layer/domain folder
- [ ] no missing core files in target domains

2. body_density
- [ ] core files are not outline-only
- [ ] architecture/runtime/flow/integration files contain operational detail
- [ ] policy/security/infrastructure/implementation/development are not materially thin
- [ ] mutating or security-sensitive files contain failure codes

3. current_vs_history
- [ ] current and history are explicitly separated in all 4 domains
- [ ] replay readers are distinct where story/integration require them
- [ ] historical_only is not confused with live state
- [ ] no cache/path mixing remains in infrastructure docs

4. authority_and_actor
- [ ] actor classes are explicit where needed
- [ ] authority basis is explicit where mutation/restricted disclosure exists
- [ ] audit path is separated from ordinary internal path
- [ ] proposal_only and canonical_write are clearly separated in integration

5. projection_and_masking
- [ ] public/public-safe outputs are distinct from internal/restricted outputs
- [ ] no raw restricted semantics are exposed in public projections
- [ ] self-only contexts are protected where relevant
- [ ] replay labels / historical labels are explicitly required where needed

6. cross_layer_consistency
- [ ] architecture meaning matches runtime behavior
- [ ] flow order matches runtime constraints
- [ ] policy restrictions are enforceable by security
- [ ] infrastructure supports the separations security assumes
- [ ] implementation maps to actual earlier-layer rules
- [ ] development tests the critical failures

7. operational_readiness
- [ ] operations preserves containment, rollback-safe handling, and audit traces
- [ ] deprecation/archive paths do not silently reactivate
- [ ] correction paths preserve lineage
- [ ] incident containment exists for the riskiest failures

8. rebinding_decision
- [ ] GO only if all above are satisfied
- [ ] NO-GO if any current/history confusion remains
- [ ] NO-GO if any authority inflation path remains
- [ ] NO-GO if later layers are still materially outline-level

# ============================================================
# SIGN-OFF
# ============================================================

reviewed_by:
- Boss:
- Zero:

result:
- GO:
- NO-GO:

notes:
- 
