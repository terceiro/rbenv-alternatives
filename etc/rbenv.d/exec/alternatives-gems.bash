__current_version=$(rbenv-version-name)

# we need to set GEM_HOME for debian alternatives, otherwise users need to
# `sudo` do do gem stuff.
if [ -e "${RBENV_ROOT}/versions/${__current_version}/is-debian-alternative" ]; then
  export GEM_HOME="${RBENV_ROOT}/versions/${__current_version}/gems"
fi
