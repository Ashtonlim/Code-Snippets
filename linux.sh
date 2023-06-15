# list installed packages
apt list --installed


# add sudo privilleges to non-root users
# https://www.baeldung.com/linux/sudo-privileges-user
# open file containing sudo list
visudo
# add to end of file user to have sudo
# where <user> is replaced with user's name
# e.g. ash ALL=(ALL) ALL
<user> ALL=(ALL) ALL
# so that pwd doesn't need to be typed on each sudo
<user> ALL=(ALL) NOPASSWD: ALL

# go back to being root user
sudo -i
# switch user, where <user> is user's name
# e.g. su ashy
su <user>