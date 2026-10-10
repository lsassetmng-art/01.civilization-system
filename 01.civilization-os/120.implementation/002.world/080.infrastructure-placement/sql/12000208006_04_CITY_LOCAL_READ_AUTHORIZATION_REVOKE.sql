\set ON_ERROR_STOP on

\if :{?authorization_id}
\else
  \echo 'STOP=MISSING_authorization_id'
  \quit 3
\endif

\if :{?nation_id}
\else
  \echo 'STOP=MISSING_nation_id'
  \quit 3
\endif

\if :{?server_session_actor_key}
\else
  \echo 'STOP=MISSING_server_session_actor_key'
  \quit 3
\endif

BEGIN;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

LOCK TABLE civilization.nation_read_authorization
  IN SHARE ROW EXCLUSIVE MODE;

SELECT
  count(*) = 1
  AS current_grant_ok
FROM civilization.nation_read_authorization a
WHERE
  a.nation_read_authorization_id = :'authorization_id'::uuid
  AND a.server_session_actor_key = :'server_session_actor_key'
  AND a.nation_id = :'nation_id'::uuid
  AND a.scope_code = 'city_local_read'
  AND a.authorization_status = 'active'
  AND a.effective_until IS NULL
\gset

\if :current_grant_ok
\else
  \echo 'STOP=EXACT_CURRENT_GRANT_REQUIRED'
  \quit 3
\endif

UPDATE civilization.nation_read_authorization
SET
  authorization_status = 'revoked',
  effective_until = now(),
  updated_at = now()
WHERE
  nation_read_authorization_id = :'authorization_id'::uuid
  AND server_session_actor_key = :'server_session_actor_key'
  AND nation_id = :'nation_id'::uuid
  AND scope_code = 'city_local_read'
  AND authorization_status = 'active'
  AND effective_until IS NULL;

SELECT
  count(*) = 1
  AS revoked_grant_ok
FROM civilization.nation_read_authorization a
WHERE
  a.nation_read_authorization_id = :'authorization_id'::uuid
  AND a.server_session_actor_key = :'server_session_actor_key'
  AND a.nation_id = :'nation_id'::uuid
  AND a.scope_code = 'city_local_read'
  AND a.authorization_status = 'revoked'
  AND a.effective_until IS NOT NULL
\gset

\if :revoked_grant_ok
\else
  \echo 'STOP=REVOCATION_VERIFY_FAILED'
  \quit 3
\endif

COMMIT;

SELECT
  'PASS_CIVILIZATIONOS_R13_CITY_READ_AUTHORIZATION_REVOKE'
  AS result;
