# petalinux-docker

Copy petalinux-v2020.2-final-installer.run file to this folder. Then run:

## Build your won version

`docker build --build-arg PETA_VERSION=2020.2 --build-arg PETA_RUN_FILE=petalinux-v2020.2-final-installer.run -t petalinux:2020.2 .`


## Usage
### run petalinux in one line docker command
- `source settings.sh` has already been done in bashrc
- the default working directory is `/home/vivado/project`, you can mount a host directory to persist your data.
- to persist your data create a folder in Desktop/petalinux in windows machine
- ```console
mkdir $HOME/Desktop/petalinux
```
- the whole docker image is about 8GB, so make sure your network works in the right way.
```console
docker run -ti -v $HOME/Desktop/petalinux:/home/vivado/project -v C:/Xilinx/:/opt/Xilinx/win/ lgili/petalinux
```

