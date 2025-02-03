# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Download and install Node.js:
nvm install 22

# Verify the Node.js version:
node -v # Should print "v22.13.1".
nvm current # Should print "v22.13.1".

# Verify npm version:
npm -v # Should print "10.9.2".

# Install Impact Framework
echo "installing IF"
npm install -g npm@11.1.0
npm install -g @grnsft/if

# mkdir if && cd if
# curl -o- https://raw.githubusercontent.com/Green-Software-Foundation/if-db/refs/heads/main/manifests/if-course/manifests/if-course-example-1.yml
# mv if-course-example-1.yml manifest-1.yml
