ssh-add -A
export PATH=$HOME/xgit/scripts:$PATH

. ~/scripts/git-prompt.sh
. ~/scripts/git_completion.sh

export PS1='\u:$(__git_ps1 "(%s)") \W \$ '

alias ..="cd .."
alias slime="open -a 'Sublime Text'"

x_smartmic()
{
  cd ~/workspace/smartmic_test/infr_scripts_pl/Build
  . SetupEnv
  echo "Smart Mic+"
  cd ~/workspace/smartmic_test
}

x_vocalfusion()
{
  cd ~/workspace/vocalfusion/infr_scripts_pl/Build
  . SetupEnv
  echo "Vocalfusion"
  cd ~/workspace/vocalfusion
}

sandbox()
{
  cd ~/workspace/$@/infr_scripts_pl/Build
  . SetupEnv
  echo "$@"
  cd ~/workspace/$@
}

# Install infrastructure repos in an Apps viewfile based sandbox
x_initbox()
{
  if [ -d ./infr_scripts_pl ]; then
    Build.pl DOMAINS=infr_apps,lib_cognidox,lib_docref_py,lib_logging_py,lib_subprocess_py,lib_xmlobject_py,lib_yaml_py,tools_released,tools_xmostest,xdoc_released VIEW=apps
  else
    echo "Not in a viewfile based sandbox"
  fi
}

#create a python3 virtualenv 
venv()
{
  Python3 -m venv "$@"
}
