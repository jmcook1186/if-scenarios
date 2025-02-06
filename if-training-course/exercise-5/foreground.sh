# Download and install nvm:
echo "*** Setting up Impact framework environment ***"
echo
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# *** Installing NodeJS ***
#
nvm install 22

# Verify the Node.js version:
#
node -v # Should print "v22.13.1".
nvm current # Should print "v22.13.1".

# Verify npm version:
#
npm -v # Should print "10.9.2".

# Installing Impact Framework
#
npm install -g npm@11.1.0
npm install -g @grnsft/if

# *** Downloading manifest files ***"
#
wget https://raw.githubusercontent.com/jmcook1186/if-scenarios/refs/heads/main/if-training-course/exercise-5/manifest-example.yml
wget https://raw.githubusercontent.com/jmcook1186/if-scenarios/refs/heads/main/if-training-course/exercise-5/boilerplate.yml


#
#*** Setup complete! ***
#
