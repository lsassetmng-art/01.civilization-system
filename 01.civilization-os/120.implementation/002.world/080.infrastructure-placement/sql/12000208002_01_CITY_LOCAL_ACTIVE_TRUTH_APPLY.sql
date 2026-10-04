\set ON_ERROR_STOP on

BEGIN;

CREATE SCHEMA IF NOT EXISTS civilization_os;

CREATE TABLE civilization_os.territory_record (
    territory_record_id uuid NOT NULL,
    nation_id uuid NOT NULL,
    territory_code text NOT NULL,
    territory_name text NOT NULL,
    territory_status text NOT NULL,
    territory_class text NOT NULL,
    controlling_authority_scope text NOT NULL,
    effective_from timestamptz NOT NULL,
    effective_until timestamptz NULL,
    created_at timestamptz NOT NULL DEFAULT now(),
    updated_at timestamptz NOT NULL DEFAULT now(),

    CONSTRAINT pk_territory_record
        PRIMARY KEY (territory_record_id),

    CONSTRAINT uq_territory_record_nation_code
        UNIQUE (nation_id, territory_code),

    CONSTRAINT ck_territory_record_status
        CHECK (
            territory_status IN (
                'active',
                'disputed',
                'suspended',
                'lost',
                'archived'
            )
        ),

    CONSTRAINT ck_territory_record_effective_period
        CHECK (
            effective_until IS NULL
            OR effective_until > effective_from
        )
);

CREATE TABLE civilization_os.facility_registry (
    facility_registry_id uuid NOT NULL,
    facility_domain text NOT NULL,
    facility_code text NOT NULL,
    facility_name text NOT NULL,
    facility_status text NOT NULL,
    territory_code text NOT NULL,
    owner_nation_id uuid NOT NULL,
    facility_class text NOT NULL,
    created_at timestamptz NOT NULL DEFAULT now(),
    updated_at timestamptz NOT NULL DEFAULT now(),

    CONSTRAINT pk_facility_registry
        PRIMARY KEY (facility_registry_id),

    CONSTRAINT uq_facility_registry_domain_code
        UNIQUE (facility_domain, facility_code),

    CONSTRAINT ck_facility_registry_status
        CHECK (
            facility_status IN (
                'active',
                'inactive',
                'damaged',
                'closed',
                'archived'
            )
        )
);

CREATE TABLE civilization_os.district_registry (
    district_registry_id uuid NOT NULL,
    nation_id uuid NOT NULL,
    city_code text NOT NULL,
    district_code text NOT NULL,
    district_name text NOT NULL,
    district_status text NOT NULL,
    district_type text NOT NULL,
    territory_code text NOT NULL,
    boundary_ref text NULL,
    zone_policy_ref text NULL,
    source_state_version bigint NOT NULL,
    created_at timestamptz NOT NULL DEFAULT now(),
    updated_at timestamptz NOT NULL DEFAULT now(),

    CONSTRAINT pk_district_registry
        PRIMARY KEY (district_registry_id),

    CONSTRAINT uq_district_registry_nation_city_code
        UNIQUE (nation_id, city_code, district_code),

    CONSTRAINT uq_district_registry_binding
        UNIQUE (
            district_registry_id,
            nation_id,
            city_code,
            territory_code
        ),

    CONSTRAINT fk_district_registry_territory
        FOREIGN KEY (nation_id, territory_code)
        REFERENCES civilization_os.territory_record
            (nation_id, territory_code),

    CONSTRAINT ck_district_registry_status
        CHECK (
            district_status IN (
                'active',
                'inactive',
                'restricted',
                'damaged',
                'closed',
                'archived'
            )
        ),

    CONSTRAINT ck_district_registry_source_state_version
        CHECK (source_state_version > 0)
);

CREATE TABLE civilization_os.active_facility_placement (
    active_facility_placement_id uuid NOT NULL,
    facility_registry_id uuid NOT NULL,
    placement_version integer NOT NULL,
    nation_id uuid NOT NULL,
    city_code text NOT NULL,
    district_registry_id uuid NULL,
    territory_code text NOT NULL,
    region_ref text NULL,
    x numeric NOT NULL,
    y numeric NOT NULL,
    rotation numeric NULL,
    placement_status text NOT NULL,
    source_draft_facility_placement_id uuid NULL,
    source_state_version bigint NOT NULL,
    effective_from timestamptz NOT NULL,
    effective_until timestamptz NULL,
    created_at timestamptz NOT NULL DEFAULT now(),
    updated_at timestamptz NOT NULL DEFAULT now(),

    CONSTRAINT pk_active_facility_placement
        PRIMARY KEY (active_facility_placement_id),

    CONSTRAINT uq_active_facility_placement_version
        UNIQUE (facility_registry_id, placement_version),

    CONSTRAINT fk_active_facility_placement_facility
        FOREIGN KEY (facility_registry_id)
        REFERENCES civilization_os.facility_registry
            (facility_registry_id),

    CONSTRAINT fk_active_facility_placement_territory
        FOREIGN KEY (nation_id, territory_code)
        REFERENCES civilization_os.territory_record
            (nation_id, territory_code),

    CONSTRAINT fk_active_facility_placement_district
        FOREIGN KEY (
            district_registry_id,
            nation_id,
            city_code,
            territory_code
        )
        REFERENCES civilization_os.district_registry (
            district_registry_id,
            nation_id,
            city_code,
            territory_code
        ),

    CONSTRAINT ck_active_facility_placement_version
        CHECK (placement_version > 0),

    CONSTRAINT ck_active_facility_placement_source_state_version
        CHECK (source_state_version > 0),

    CONSTRAINT ck_active_facility_placement_status
        CHECK (
            placement_status IN (
                'active',
                'moved',
                'suspended',
                'removed',
                'archived'
            )
        ),

    CONSTRAINT ck_active_facility_placement_effective_period
        CHECK (
            effective_until IS NULL
            OR effective_until > effective_from
        )
);

CREATE UNIQUE INDEX uq_active_facility_placement_current_active
    ON civilization_os.active_facility_placement
        (facility_registry_id)
    WHERE placement_status = 'active'
      AND effective_until IS NULL;

COMMIT;
