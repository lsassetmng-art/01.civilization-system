export type RepositoryNote =
  "Bind these interfaces to actual DB access later."
  | "Do not embed permission logic here."
  | "Do not emit HTTP responses here."
  | "Do not treat projection tables as canonical sources.";

export const REPOSITORY_NOTES: RepositoryNote[] = [
  "Bind these interfaces to actual DB access later.",
  "Do not embed permission logic here.",
  "Do not emit HTTP responses here.",
  "Do not treat projection tables as canonical sources.",
];
