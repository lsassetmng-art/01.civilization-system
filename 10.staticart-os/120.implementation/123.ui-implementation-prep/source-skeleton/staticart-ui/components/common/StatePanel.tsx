import type { UiLoadState } from "../../contracts/ui-types";

export interface StatePanelProps {
  state: UiLoadState;
  errorMessage?: string | null;
  forbiddenReason?: string | null;
}

export function StatePanel(props: StatePanelProps) {
  const { state, errorMessage, forbiddenReason } = props;

  if (state === "loading") {
    return <section>Loading...</section>;
  }

  if (state === "empty") {
    return <section>No data available.</section>;
  }

  if (state === "error") {
    return <section>{errorMessage ?? "Unexpected error."}</section>;
  }

  if (state === "forbidden") {
    return <section>{forbiddenReason ?? "Forbidden."}</section>;
  }

  return <section>Idle.</section>;
}
