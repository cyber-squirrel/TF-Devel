#!/bin/bash

echo "########################################################################################"
echo "TF Machine Learning Installer (No GPU)"
echo "########################################################################################"
echo ""
echo "preparing for installation"
echo ""
sudo apt-get update -y
sudo apt-get upgrade -y
echo ""
echo "installing compiler tools"
echo ""
sudo apt-get install build-essential cmake unzip pkg-config -y
sudo apt-get install gcc g++ -y
echo ""
echo "installing screen"
echo ""
sudo apt-get install screen -y
echo ""
echo "installing X windows libraries and OpenGL"
echo ""
sudo apt-get install libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev -y
echo ""
echo "installing image and video I/O libraries"
echo ""
sudo apt-get install libjpeg-dev libpng-dev libtiff-dev -y
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev -y
sudo apt-get install libxvidcore-dev libx264-dev -y
echo ""
echo "installing optimization libraries"
echo ""
sudo apt-get install libopenblas-dev libatlas-base-dev liblapack-dev gfortran -y
echo ""
echo "installing HDF5"
echo ""
sudo apt-get install libhdf5-serial-dev -y
echo ""
echo "installing Python 3 development libraries"
echo ""
sudo apt-get install python3-dev python3-tk python-imaging-tk
sudo apt-get install libgtk-3-dev
echo ""
echo "downloading and installing pip with venv"
echo ""
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py -y
pip3 install virtualenv virtualenvwrapper
echo '# virtualenv and virtualenvwrapper' >> ~/.bashrc 
echo 'export WORKON_HOME=$HOME/.local/bin/.virtualenvs' >> ~/.bashrc 
echo 'export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3' >> ~/.bashrc 
echo 'export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.local/bin/virtualenv' >> ~/.bashrc 
echo 'source $HOME/.local/bin/virtualenvwrapper.sh' >> ~/.bashrc 
source ~/.bashrc
echo ""
echo "creating venv dl4cv"
echo ""
mkvirtualenv dl4cv -p python3
echo ""
echo "installing TensorFlow 2.7"
echo ""
pip install numpy
pip install tensorflow==2.7.0
echo ""
echo "installing standard image processing libraries"
echo ""
pip install opencv-contrib-python
pip install scikit-image
pip install pillow
pip install imutils
echo ""
echo "installing machine learning libraries and support libraries"
echo ""
pip install scikit-learn
pip install matplotlib
pip install progressbar2
pip install beautifulsoup4
pip install pandas

echo "########################################################################################"
echo ""
echo "installation complete"
echo "remember to run 'workon dl4cv' to activate your python virtual env"
echo ""
echo "########################################################################################"
