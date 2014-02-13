


For setting up tags run in bash(not in zsh) => "bundle list --paths=true | xargs #{CTAGS} -f #{dir}/tags --recurse=yes #{dir}--extra=+f --exclude=.git --exclude=public --exclude=tmp --exclude=*.js --exclude=log -R * 2>> /dev/null"
