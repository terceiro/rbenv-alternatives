case "$RBENV_VERSION" in
  *-debian)
    command_path="${RBENV_ROOT}/versions/${RBENV_VERSION}/gems/bin/${RBENV_COMMAND}"
    if ! [ -x "$RBENV_COMMAND_PATH" ] && [ -x "$command_path" ]; then
      RBENV_COMMAND_PATH="$command_path"
    fi
    ;;
esac
