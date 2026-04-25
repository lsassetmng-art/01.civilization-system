export interface StaticArtTestEnv {
  personaDatabaseUrl: string;
  apiBaseUrl: string;
  actorMode: "local_stub" | "integration";
}

export function getStaticArtTestEnv(): StaticArtTestEnv {
  const personaDatabaseUrl = process.env.PERSONA_DATABASE_URL ?? "";
  const apiBaseUrl = process.env.STATICART_API_BASE_URL ?? "http://localhost:3000/api/v1/staticart";
  const actorMode = (process.env.STATICART_TEST_ACTOR_MODE ?? "local_stub") as
    | "local_stub"
    | "integration";

  if (!personaDatabaseUrl) {
    throw new Error("PERSONA_DATABASE_URL is required for StaticArtOS test execution.");
  }

  return {
    personaDatabaseUrl,
    apiBaseUrl,
    actorMode,
  };
}
