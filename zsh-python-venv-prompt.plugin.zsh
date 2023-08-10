function python_venv_prompt(){
  [[ -n ${VIRTUAL_ENV} ]] || return

  VIRTUALENV_BASE=`echo $VIRTUAL_ENV | awk -F'/' '{if($NF == ".venv") print $(NF-1); else print $NF }'`
  VIRTUALENV_PYVERSION=`python --version | awk '{print "-py"$2}'

  echo " ${ZSH_THEME_VENV_PROMPT_PREFIX=[}${ZSH_THEME_VENV_BASENAME=$VIRTUALENV_BASE}${ZSH_THEME_VENV_PYVERSION=$VIRTUALENV_PYVERSION}${ZSH_THEME_VENV_PROMPT_SUFFIX=]}"
}

# disables prompt mangling in virtual_env/bin/activate
export VIRTUAL_ENV_DISABLE_PROMPT=1
