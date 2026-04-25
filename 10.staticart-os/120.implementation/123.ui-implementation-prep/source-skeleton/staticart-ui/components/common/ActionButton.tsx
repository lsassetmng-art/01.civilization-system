import type { ButtonStateViewModel } from "../../contracts/ui-types";

export interface ActionButtonProps {
  label: string;
  state: ButtonStateViewModel;
  onClick?: () => void;
}

export function ActionButton(props: ActionButtonProps) {
  const { label, state, onClick } = props;

  return (
    <div>
      <button disabled={!state.enabled} onClick={onClick}>
        {label}
      </button>
      {!state.enabled && state.reasonText ? <p>{state.reasonText}</p> : null}
    </div>
  );
}
