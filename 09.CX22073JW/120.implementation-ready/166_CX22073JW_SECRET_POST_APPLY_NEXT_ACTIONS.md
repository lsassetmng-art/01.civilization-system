# CX22073JW Secret Post-Apply Next Actions
- project: CX22073JW
- document_type: secret-post-apply-next-actions
- status: working-draft
- owner: Boss
- prepared_by: Zero

## 1. Current Interpretation
The canonical secret first-slice tables are now treated as keep objects.

## 2. Next Natural Actions
1. Fill environment-specific selector rows in `secret_target_selector_master`
2. Fill environment-specific target rows in `secret_target_master`
3. Fill route bindings in `secret_route_binding`
4. Fill privileged policy bindings in `privileged_route_policy_binding`
5. Review any extra secret/privileged-like legacy objects for deprecate or wrapper handling

## 3. Decision Rule
- if an extra object is clearly canonical-compatible -> keep-extra or wrap
- if an extra object duplicates canonical role -> deprecate
- if exact selector/target semantics are still unclear -> postpone data seed, not table structure
