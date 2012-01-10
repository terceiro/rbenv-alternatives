__current_version=$(rbenv-version-name)
case "$__current_version" in
  *-debian)
    export GEM_HOME="${RBENV_ROOT}/versions/${__current_version}/gems"
    ;;
  *)
    true
    ;;
esac
