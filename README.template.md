# AI Generated {{REPOSITORY_PROJECT}} with dev container
## Introduction 

This repository contains the template of an AI Generated {{REPOSITORY_PROJECT}} project using Github spec-kit and ready to use.
This template includes a dev container which could be used with Visual Studio Code.
The dev container is pre-installed with 
- git
- azure cli
- UV
which are required to install and run spec-kit.

Moreover, the following components and programming languages are pre-installed
- docker
- kubectl and helm
- python version 3.12
- go version 1.22
- java version 21
- dotnet version 8.0
- rust version latest
- node version latest
- typescript version latest

You can edit the file [devcontainer.json](/.devcontainer/devcontainer.json) to keep the component required for the {{REPOSITORY_PROJECT}} project. 

## Getting Started

In this repository, you'll find source code, scripts and bicep files to build, deploy and test your AI Generated project.

This chapter describes how to :

1. Install the pre-requisites including Visual Studio Code, Dev Container
2. Install Specify Client
3. Initialize the project (not required)


This repository contains the following resources :

- A Dev container under '.devcontainer' folder
- The folders generated with spec-kit .github, .specify and .vscode

### Installing the pre-requisites

In order to test the solution, you need first an Azure Subscription, you can get further information about Azure Subscription [here](https://azure.microsoft.com/en-us/free).

You also need to install Git client and Visual Studio Code on your machine, below the links.

|[![Windows](./diagrams/windows_logo.png)](https://git-scm.com/download/win) |[![Linux](./diagrams/linux_logo.png)](https://git-scm.com/download/linux)|[![MacOS](./diagrams/macos_logo.png)](https://git-scm.com/download/mac)|
|:---|:---|:---|
| [Git Client for Windows](https://git-scm.com/download/win) | [Git client for Linux](https://git-scm.com/download/linux)| [Git Client for MacOs](https://git-scm.com/download/mac) |
[Visual Studio Code for Windows](https://code.visualstudio.com/Download)  | [Visual Studio Code for Linux](https://code.visualstudio.com/Download)  &nbsp;| [Visual Studio Code for MacOS](https://code.visualstudio.com/Download) &nbsp; &nbsp;|

Once the Git client is installed you can clone the repository on your machine running the following commands:

1. Create a Git directory on your machine

    ```bash
        c:\> mkdir git
        c:\> cd git
        c:\git>
    ```

2. Clone the repository using the command line below:
    
    ```bash
        c:\git> git clone  https://github.com/{{REPOSITORY_USERNAME}}/{{REPOSITORY_PROJECT}}.git 
        c:\git> cd {{REPOSITORY_PROJECT}}
        c:\git\{{REPOSITORY_PROJECT}}> 
    ```

### Using Dev Container

#### Installing Dev Container pre-requisites

You need to install the following pre-requisite on your machine

1. Install and configure [Docker](https://www.docker.com/get-started) for your operating system.

   - Windows / macOS:

     1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop) for Windows/Mac.

     2. Right-click on the Docker task bar item, select Settings / Preferences and update Resources > File Sharing with any locations your source code is kept. See [tips and tricks](https://code.visualstudio.com/docs/remote/troubleshooting#_container-tips) for troubleshooting.

     3. If you are using WSL 2 on Windows, to enable the [Windows WSL 2 back-end](https://docs.docker.com/docker-for-windows/wsl/): Right-click on the Docker taskbar item and select Settings. Check Use the WSL 2 based engine and verify your distribution is enabled under Resources > WSL Integration.

   - Linux:

     1. Follow the official install [instructions for Docker CE/EE for your distribution](https://docs.docker.com/get-docker/). If you are using Docker Compose, follow the [Docker Compose directions](https://docs.docker.com/compose/install/) as well.

     2. Add your user to the docker group by using a terminal to run: 'sudo usermod -aG docker $USER'

     3. Sign out and back in again so your changes take effect.

2. Ensure [Visual Studio Code](https://code.visualstudio.com/) is already installed.

3. Install the [Remote Development extension pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

#### Using Visual Studio Code and Dev Container

1. Launch Visual Studio Code in the folder where you cloned the 'ps-data-foundation-imv' repository

    ```bash
        c:\git\{{REPOSITORY_PROJECT}}> code .
    ```

2. Once Visual Studio Code is launched, you should see the following dialog box:

    ![Visual Studio Code](./diagrams/reopen-in-container.png)

3. Click on the button 'Reopen in Container'
4. Visual Studio Code opens the Dev Container. If it's the first time you open the project in container mode, it first builds the container, it can take several minutes to build the new container.
5. Once the container is loaded, you can open a new terminal (Terminal -> New Terminal).
6. And from the terminal, you have access to the tools installed in the Dev Container like az client,....

    ```bash
        vscode ➜ /workspaces/{{REPOSITORY_PROJECT}} (main) $ git
    ```

#### Installing Specify Client in Dev Container

As the Dev Container is now running, you can install specify-cli in your Dev Container from https://github.com/github/spec-kit.git running the command line below:


    ```bash
        vscode ➜ /workspaces/{{REPOSITORY_PROJECT}} (main) $ uv tool install specify-cli --from git+https://github.com/github/spec-kit.git
    ```

#### Initializing the Specify Project in Dev Container

As the Specify client is now installed, you can create a new project using the command line below:

    ```bash
        vscode ➜ /workspaces/{{REPOSITORY_PROJECT}} (main) $ specify init --here
    ```
After this step, the subfolder .github, .specify and .vscode will be created under the root folder.


**Note:** This step is not required if you want to reuse the existing folders .github, .specify and .vscode in the origin repository. You can run this command if you want to start a new project following the subsequent steps in the documentation.  


## Using Github spec-kit to create and manage the project.

Using the dev container in VSCode, as the github spec-kit is already installed, you can run the following commands to create the project. As this repository already contains the AI generated source code, you don't need to run the spec-kit commands below to recreate the project.  

For your information, we left in this chapter all the spec-kit commands used to create the project.  


### Select your AI Model

For the current project we did select the AI Model 'GPT-5-Codex (Preview)'

### Establish project principles

```bash
    /speckit.constitution to-be-completed 
```

### Create the specifications

```bash
    /speckit.specify  to-be-completed 
```
### Create a technical implementation plan

```bash
    /speckit.plan to-be-completed
```

### Break down into tasks

```bash
    /speckit.task to-be-completed
```
After this step, the list of user stories is displayed.

### Execute implementation

```bash
    /specific.implement to-be-completed for the user story 1
    /specific.implement to-be-completed for the user story 2
    /specific.implement to-be-completed for the user story 3


    /specific.implement to-be-completed for the user story n
```


## Deploying infrastructure and the application from the Dev Container terminal

to be completed

### Connection to Azure

Follow the steps below to establish with your Azure Subscription where you want to deploy your infrastructure.

1. Launch the Azure login process using the command  'az login'.

    ```bash
        vscode ➜ /workspaces/{{REPOSITORY_PROJECT}} (main) $ az login
    ```

    After this step the default Azure subscription has been selected. You can still change the Azure subscription, using Azure CLI command below:

    ```bash
        vscode ➜ /workspaces/{{REPOSITORY_PROJECT}} (main) $ az account set --subscription <azure-subscription-id>
    ```

### Deploying Infrastructure and Application

to be completed

### Removing the resources

1. When your tests are over, you can remove the infrastructure and the application removing the resource group:

    ```bash
        vscode ➜ /workspaces/{{REPOSITORY_PROJECT}} (main) $ az group delete  -n [RESOURCE_GROUP_NAME] -y
    ```
to be completed