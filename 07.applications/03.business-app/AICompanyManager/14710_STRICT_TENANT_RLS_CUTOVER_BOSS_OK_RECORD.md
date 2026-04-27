# AICompanyManager strict tenant RLS cutover Boss OK record

## Sato review
佐藤（DB担当） review: OK from strict tenant RLS design/shadow apply flow.

## Boss approval
Boss explicitly said:

strict tenant RLS cutover OK

## Approved scope
- Remove smoke-safe authenticated policy.
- Keep strict policies.
- Keep service_role policy.
- Verify final policy state.
- Push evidence.

## Not approved in this phase
- FORCE RLS
- emergency RLS disable
- table recreation
- data deletion
- strict policy drop
- service_role policy drop
