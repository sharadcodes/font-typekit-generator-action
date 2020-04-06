#!/bin/sh -l

echo "###############################################"
echo "################## mkdir  #####################"
echo "###############################################"
# Make directory for storage of converted font files
mkdir "$2"

echo "###############################################"
echo "################ Setting up  ##################"
echo "###############################################"
# Setup
git clone https://github.com/bdusell/webfont-generator.git
cd webfont-generator
./setup # Fetch and build third-party libraries

echo "###############################################"
echo "##################### cd  #####################"
echo "###############################################"
# change dir
cd ..
echo "###############################################"
echo "################ Conversion  ##################"
echo "###############################################"
python3 gen.py $1 $2
ls -all $2
