# About

Project for running Open Data Cube on AWS.

## Setup

This project requires miniconda: https://conda.io/docs/install/quick.html 

conda config --add channels conda-forge
conda create --name aws-pyccd python=3.5 datacube
source activate aws-pyccd
pip install lcmap-pyccd
conda install jupyter matplotlib scipy -y

## Usage

Start the notebook server.

```
bin/notebook-server
```

## License

TBD
