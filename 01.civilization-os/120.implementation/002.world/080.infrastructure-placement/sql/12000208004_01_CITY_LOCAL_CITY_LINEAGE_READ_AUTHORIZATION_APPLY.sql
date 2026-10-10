\set ON_ERROR_STOP on

BEGIN;

CREATE TABLE civilization.city_registry (
    city_registry_id uuid NOT NULL,
    nation_id uuid NOT NULL,
    city_code text NOT NULL,
    city_name text NOT NULL,
    city_status text NOT NULL,
    territory_code text NOT NULL,
    source_state_version bigint NOT NULL,
    effective_from timestamptz NOT NULL,
    effective_until timestamptz NULL,
    created_at timestamptz NOT NULL DEFAULT now(),
    updated_at timestamptz NOT NULL DEFAULT now(),

    CONSTRAINT pk_city_registry
        PRIMARY KEY (city_registry_id),

    CONSTRAINT uq_city_registry_nation_city
        UNIQUE (nation_id, city_code),

    CONSTRAINT uq_city_registry_binding
        UNIQUE (
            nation_id,
            city_code,
            territory_code
        ),

    CONSTRAINT fk_city_registry_territory
        FOREIGN KEY (
            nation_id,
            territory_code
        )
        REFERENCES civilization.territory_record (
            nation_id,
            territory_code
        ),

    CONSTRAINT ck_city_registry_status
        CHECK (
            city_status IN (
                'active',
                'inactive',
                'suspended',
                'closed',
                'archived'
            )
        ),

    CONSTRAINT ck_city_registry_source_state_version
        CHECK (source_state_version > 0),

    CONSTRAINT ck_city_registry_effective_period
        CHECK (
            effective_until IS NULL
            OR effective_until > effective_from
        )
);

CREATE TABLE civilization.nation_read_authorization (
    nation_read_authorization_id uuid NOT NULL,
    server_session_actor_key text NOT NULL,
    nation_id uuid NOT NULL,
    scope_code text NOT NULL,
    authorization_status text NOT NULL,
    effective_from timestamptz NOT NULL,
    effective_until timestamptz NULL,
    created_at timestamptz NOT NULL DEFAULT now(),
    updated_at timestamptz NOT NULL DEFAULT now(),

    CONSTRAINT pk_nation_read_authorization
        PRIMARY KEY (
            nation_read_authorization_id
        ),

    CONSTRAINT ck_nation_read_authorization_actor_key
        CHECK (
            length(
                btrim(server_session_actor_key)
            ) > 0
        ),

    CONSTRAINT ck_nation_read_authorization_scope
        CHECK (
            scope_code = 'city_local_read'
        ),

    CONSTRAINT ck_nation_read_authorization_status
        CHECK (
            authorization_status IN (
                'active',
                'revoked'
            )
        ),

    CONSTRAINT ck_nation_read_authorization_effective_period
        CHECK (
            effective_until IS NULL
            OR effective_until > effective_from
        )
);

CREATE UNIQUE INDEX
    uq_nation_read_authorization_current_active
ON civilization.nation_read_authorization (
    server_session_actor_key,
    nation_id,
    scope_code
)
WHERE authorization_status = 'active'
  AND effective_until IS NULL;

ALTER TABLE civilization.district_registry
    ADD CONSTRAINT fk_district_registry_city
    FOREIGN KEY (
        nation_id,
        city_code,
        territory_code
    )
    REFERENCES civilization.city_registry (
        nation_id,
        city_code,
        territory_code
    );

ALTER TABLE civilization.active_facility_placement
    ADD CONSTRAINT fk_active_facility_placement_city
    FOREIGN KEY (
        nation_id,
        city_code,
        territory_code
    )
    REFERENCES civilization.city_registry (
        nation_id,
        city_code,
        territory_code
    );

COMMIT;
