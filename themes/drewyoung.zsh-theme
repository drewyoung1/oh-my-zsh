########################
#         Utils        #
########################
# begin                #
	bold=${(%):-%B}    #
# end Utils            #
########################

########################
#        $PROMPT       #
################################################################
# begin                                                        ###########################################
	PROMPT=""                                                  # Clear the prompt                        #
	PROMPT+="$bold%(!.${fg[red]}.${fg[green]})%n$reset_color:" # User name                               #
    PROMPT+=" $bold${fg[magenta]}%1~$reset_color"              # Current Directory                       #
#	PROMPT+='$git_prompt_info'                                  # Git info (see `git_prompt_info` config) #
	PROMPT+=" ${fg[red]}%(!.#.»)$reset_color "                 # Prompt                                  #
# End $PROMPT                                                  ###########################################
################################################################

################################
#   `git_prompt_info` config   #
################################
# begin                        #####################################
	ZSH_THEME_GIT_PROMPT_PREFIX="$bold${fg[magenta]}(${fg[green]}" #
	ZSH_THEME_GIT_PROMPT_CLEAN="$bold${fg[green]}✓"                #
	ZSH_THEME_GIT_PROMPT_DIRTY="$bold${fg[red]}●"                  #
	ZSH_THEME_GIT_PROMPT_SUFFIX="$bold${fg[magenta]})$reset_color" #
# end `git_prompt_info` config #####################################
################################

#################
#     precmd    #
##############################################
# begin                                      #
#	local git_prompt_info # Declare vars     #
	                                         #
	function precmd() { ##################################################
#		git_prompt_info="$(git_prompt_info)" # Cache the git_prompt_info #
	} ####################################################################
	                                         #
#	precmd # Make sure we get a value        #
# End precmd                                 #
##############################################
