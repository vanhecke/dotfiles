# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

### Configuration required to load oh-my-fish ###
# Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# to create a custom plugin instead.

function fish_greeting
	#	fortune -a
end

# set z
set -g Z_SCRIPT_PATH /usr/local/etc/profile.d/z.sh

# set gem path for the oh-my-fish gem tool
set GEM_ROOT /Users/joris/.rvm/gems/ruby-2.2.3



# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
