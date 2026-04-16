cd brew/
rm Brewfile
brew bundle dump
sed -i '' '/brew/d' Brewfile &&  brew leaves | awk '{print "brew \"" $0 "\""}' >>Brewfile
