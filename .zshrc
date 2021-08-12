
# Path to your oh-my-zsh installation.
export ZSH="/home/lford/.oh-my-zsh"

COMPLETION_WAITING_DOTS="true"

ZSH_THEME="spaceship"

SPACESHIP_TIME_SHOW="true"

SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  dotnet        # .NET section
  ruby          # Ruby section
  exec_time     # Execution time
  line_sep      # Line break
  #battery       # Battery level and status
  time
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
# See: https://denysdovhan.com/spaceship-prompt/docs/Options.html#order

# Node Version Manager (NVM)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Azure CLI tab completion
#source /etc/bash_completion.d/azure-cli

# oh-my-zsh plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# begin m365_comp completion
#. <(m365_comp --completion)
# end m365_comp completion

source $ZSH/oh-my-zsh.sh
