#!/bin/bash


sudo apt-get --assume-yes update
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
sudo apt-get --assume-yes install r-base
sudo apt-get --assume-yes install gdebi-core
wget https://download2.rstudio.org/rstudio-server-1.1.383-amd64.deb
sudo gdebi --non-interactive rstudio-server-1.1.383-amd64.deb




# rstudio docker 
docker pull rocker/tidyverse

docker run -d --name rstudio -v $HOME:/singlecell/SingleCellAnalysis -e PASSWORD=Lovex -p 8787:8787 rocker/tidyverse

