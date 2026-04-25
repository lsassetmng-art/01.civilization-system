import type { PropsWithChildren } from "react";
import type { ScreenShellState } from "../../contracts/ui-types";
import { StatePanel } from "./StatePanel";

export interface ScreenShellProps extends PropsWithChildren {
  shell: ScreenShellState;
}

export function ScreenShell(props: ScreenShellProps) {
  const { shell, children } = props;

  return (
    <div>
      <header>
        <h1>{shell.title}</h1>
        {shell.subtitle ? <p>{shell.subtitle}</p> : null}
      </header>

      {shell.loadState !== "ready" ? (
        <StatePanel
          state={shell.loadState}
          errorMessage={shell.errorMessage}
          forbiddenReason={shell.forbiddenReason}
        />
      ) : (
        <main>{children}</main>
      )}
    </div>
  );
}
