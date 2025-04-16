# ROS Workspace 💻
<p align="justify">

Este repositorio conta com container docker com ROS Noetic, me baseei no repositório criado pelo [João Pedro Baltieca Garcia](https://github.com/JPBG-USP) (@JPBG-USP), cujo é destinado para trabalho de desenvolvimento da Lisa, a robô humanoide do SEMEAR! Caso desejem, indico a leitura do repositório abaixo. 
</p>

[Lisa](https://github.com/Grupo-SEMEAR-USP/Lisa)

<p align="justify">

Continuando, ele conta com mais pacotes associados ao ROS Noetic e adaptação para o uso de GPU.  

O que está **contido** neste repositório?
* Dockerfiles para algumas distribuições ROS com as instruções de construção necessárias.
* Scripts que tornam o docker um pouco mais fácil.
</p>

# Passo a Passo 🚀

## Passo 1 - Instalando Git, Docker e Driver/Toolkit Container da Nvidia

### GIT 🌳

```bash
sudo apt install -y git
```

### Docker 🐳

<p align="justify">

Para instalar o docker, indicamos seguir o tutorial oficial do Docker.

Instação do Docker no Ubuntu: https://docs.docker.com/engine/install/ubuntu/
</p>

### Nvidia

**Importante para computadores com GPU NVIDIA**: 

<p align="justify">

Existem instruções oficiais para instalação do CONTAINER NVIDIA TOOLKIT, para isso indico o guia de instalação oficial logo abaixo. 
</p>

[Nvidia Container](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html).

<p align="justify">

Entretanto, estamos desenvolvendo um script para instalação dos drivers de placas e o toolkit container da nvidia mais atualizado. Todavia, temos disponível dois script's para instalação tanto do driver da nvidia, como o toolkit container nvidia. Este foi elaborado pelo [Lucas Maggi](https://github.com/lomcin) (@lomcin), indico a leitura do repositório a seguir, estou me baseando nele para construir um focado para o trabalho desenvolvido neste projeto.
</p>

[Linux Stuffs](https://github.com/lomcin/linux-stuffs/tree/master?tab=readme-ov-file#nvidia). 

<p align="justify">

Portanto, caso tenha problema com o driver e toolkit container da nvidia, execute os scripts abaixo elaborados pelo @lomcin. 
</p>

Driver's da Nvidia:

```bash
./install/nvidia/drivers.sh
```

Tookit container da Nvidia:

```bash
./install/nvidia/container_toolkit.sh
```

## Passo 2 - Clone este repositório

<p align="justify">

Para baixar o repositório, execute o comando abaixo. Todavia, a permissão de push na main está bloqueada, logo indicamos que execute um fork do repositório para o seu repositório. O botam fica no começo da página. 
</p>

```bash
git clone https://github.com/EESC-LabRoM/ROS.git
```
## Passo 3 - ROS Noetic Workspace 

<p align="justify">

O comando a seguir construirá a imagem docker necessária com imagem noetic com alguns pacotes.
</p>

```bash
docker/scripts/build.sh 
```

## Passo 4 - Versão completa do ROS Noetic (Ubuntu 20.04)

<p align="justify">

O comando baixo, via o script **run.sh**, execuratá a imagem desejada, no caso da ROS Noetic, e iniciará o container com o ROS Noetic funcional, pronto para ser utilizado. 
</p>

```bash
docker/scripts/run.sh
```
<p align="justify">

Para executar os comandos dos ROS, é necessário entrar na pasta **ros_ws**, mas o container abre na pasta correta. Todavia, se ele abrir em outro lugar, basta utilizar os comandos abaixo para ir para a pasta correta, considerando que esteja na raiz do container. 
</p>

```bash
cd home/ROS/ros_ws
```
<p align="justify">

Assim, você estará na pasta que contém os pastas **src**, **devel** e **build**. Dentro da pasta é possível constroir o workspace, basta executar o comando abaixo. 
</p>

```bash
catkin_make
```

## Passo 5 - Executando o Container ROS no VsCode

<p align="justify">

Para utilizar o Container configurado, basta usar a extensão **Dev-Container**, na primeira vez que executarem, provavelmente pedirá para vocês instalaram, para isso basta escolhe-la. Após instalada, é só seguir o vídeo abaixo.
</p>

<p align="justify">

**Obs.:** Na primeira vez que executarem, ele pedirá que escolha uma pasta, escolha entre **home** ou **ROS**. Assim, você terá acesso aos arquivos do container, mas caso deseje mudar, é só trocar a pasta. 
</p>

https://github.com/EESC-LabRoM/ROS/assets/72418094/ff51505a-8547-4b7a-a35c-55829209abb8







