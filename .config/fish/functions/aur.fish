function aur
	git clone https://aur.archlinux.org/$argv.git
cd $argv
makepkg -si
cd ..
rm -rf $argv
echo $argv >> ~/aurpackagelist.txt
end