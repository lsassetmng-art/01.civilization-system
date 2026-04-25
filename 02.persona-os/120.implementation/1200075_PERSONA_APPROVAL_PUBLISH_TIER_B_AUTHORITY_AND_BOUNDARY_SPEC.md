# PERSONA APPROVAL PUBLISH TIER B AUTHORITY AND BOUNDARY SPEC

status: tier-b-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_182500

purpose:
Fixes authority and boundary ownership across approval and publish family members.

boundary_split:
- approval-create = governance request entry
- approval-action = governance decision application
- approval-sla = governance timing evaluation
- asset-publish-request-create = release request intake
- asset-publish-request-decide = publish governance decision
- publish_apply = release application from approved input only
- asset-publish-list = released listing surface

authority_rules:
- approval-create requires request authority only
- approval-action requires governance decision authority
- asset-publish-request-create requires request authority over subject asset or candidate
- asset-publish-request-decide requires publish decision authority
- publish_apply requires approved input and release application authority
- asset-publish-list requires listing-read authority according to scope policy

hard_boundary_rules:
- approval-action does not itself publish
- asset-publish-request-decide does not itself apply release
- publish_apply does not itself grant governance authority
- asset-publish-list does not itself decide or apply release
- no function in this family becomes generic mutable truth owner by label alone

