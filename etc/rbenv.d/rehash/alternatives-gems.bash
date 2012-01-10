for version in "${RBENV_ROOT}/versions/"*-debian; do
  version_name=$(basename "$version")
  gem_bindir="${RBENV_ROOT}/versions/${version_name}/gems/bin"
  version_bindir="${RBENV_ROOT}/versions/${version_name}/bin"
  if [[ -d "$gem_bindir" ]]; then
    for program in "$gem_bindir"/*; do
      program_name="$(basename $program)"
      register_shim "$program_name"
    done
  fi
done
