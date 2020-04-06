#!/bin/sh -l
echo "###############################################"
echo "################## mkdir  #####################"
echo "###############################################"

mkdir -p "$2"

echo "###############################################"
echo "################ Setting up  ##################"
echo "###############################################"

git clone https://github.com/bdusell/webfont-generator.git
cd webfont-generator
./setup # Fetch and build third-party libraries

echo "###############################################"
echo "#################### CD..  ####################"
echo "###############################################"

# Get outside
cd ..

echo "###############################################"
echo "################ Converting  ##################"
echo "###############################################"

# Run for each file
for IN in `find "$1" -maxdepth 1 -iname "*.ttf"`
do
echo $IN
file_name_we="$(basename -s .ttf $IN)"
filename="${file_name_we%.*}"
echo $filename
webfont-generator/bin/generate-webfonts "$IN" -o "$2" --css "$filename.css"
done

rm -rf webfont-generator
