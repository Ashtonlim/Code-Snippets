# Remove all pip install packages
# https://stackoverflow.com/questions/11248073/how-do-i-remove-all-packages-installed-by-pip
pip freeze | xargs pip uninstall -y