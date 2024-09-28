@echo off
CLS
set currentpath=%cd%
echo "Starting automatic file installation by chocolatey"
echo "Script needs to run in admin mode"
ECHO.


REPOS=$(scripndots cryptopals-py-rkt sonic-pi)

# NvChad TODO - where?
git clone https://github.com/NvChad/NvChad $HOME/.config/nvim --depth 1
# Stable diffusion
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git $HOME/projects

# My projects
for item in $REPOS 
  git clone https://github.com/aasparks/$item $HOME/projects/
done


:EOF
