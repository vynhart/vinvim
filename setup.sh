echo "Copying .vimrc.."
cp .vimrc ~/.vimrc

echo "Checking colors directory.."
DIR="$HOME/.vim/colors"
if [ ! -d "$DIR" ]; then
  echo "Making directory $DIR .."
  mkdir $DIR
fi

echo "Copying colors.."
cp -r ./colors ~/.vim

echo "Done."
