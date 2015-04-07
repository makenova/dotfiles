
# homebrew!
# you need the code CLI tools YOU FOOL.
ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)

# https://github.com/rupa/z
mkdir -p ~/code/z
curl https://raw.github.com/rupa/z/master/z.sh > ~/code/z/z.sh
chmod +x ~/code/z/z.sh

# add this to the bash_profile file if it aint there.
#   . ~/code/z/z.sh

cd ~/code
git clone git://github.com/dronir/SpotifyControl.git

# add DropBox uploader
git clone git://github.com/andreafabrizi/Dropbox-Uploader.git
