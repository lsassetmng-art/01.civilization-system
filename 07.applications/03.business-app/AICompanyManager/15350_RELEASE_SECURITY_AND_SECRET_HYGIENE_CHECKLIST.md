# AICompanyManager release security and secret hygiene checklist

## Secret hygiene status
- .env.local is not tracked in latest git index.
- runtime files are not tracked in latest git index.
- .env.example exists.
- local token rotation record exists.
- token value was not printed in tracked reports.

## Remaining security recommendations
- If any previously committed token was real, revoke/rotate it provider-side.
- History rewrite was not executed.
- Avoid committing runtime/idempotency logs.
- Keep local runtime paths under $HOME/.tmp/AICompanyManager.
- Keep service_role secret out of app/client code.
- Keep JWT claim issuance controlled by backend/auth provider.

## RLS security status
- smoke-safe authenticated policy removed.
- strict policies present.
- service_role policy present.
- helper functions present.
- role-specific acceptance smoke passed.

## Production hardening still recommended
- real JWT token inspection
- backend claim issuance test
- role-specific API tests
- audit log verification
- token rotation drill
- rollback drill
