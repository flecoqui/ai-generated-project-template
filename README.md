# AI Generated Template project with dev container
## Introduction

This repository contains the template of an AI Generated project using Github spec-kit and ready to use.
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

2. To create the new repository from the template you have two options:

    A. Create your repository from the template using the template repository page 'https://github.com/flecoqui_microsoft/ai-generated-project-template':
    Click **'Use this template'** -> **'Create a new repository'** 
    Provide a new name for instance 'new-ai-generated-project', description and visibility.
    This creates a fresh repository with the same structure without commit history (unlike a fork).

    ```bash
        c:\git> git clone  https://github.com/<your-github-alias>/new-ai-generated-project.git 
        c:\git> cd new-ai-generated-project
        c:\git\new-ai-generated-project> 
    ```
    
    B. Create your repository from the template using command line approach
    For instance, if the name of the new repository is 'new-ai-generated-project', 
    you need first to create the new repository after opening this page: 'https://github.com/new'

    then run the following commands if you have a Windows machine:

    ```bash
        c:\git> git clone  https://github.com/flecoqui_microsoft/ai-generated-project-template.git new-ai-generated-project
        c:\git> cd new-ai-generated-project
        c:\git\new-ai-generated-project> rmdir /s /q .git
        c:\git\new-ai-generated-project> git init --initial-branch=main
        c:\git\new-ai-generated-project> git add .
        c:\git\new-ai-generated-project> git commit -m "Initial commit from template"
        c:\git\new-ai-generated-project> git remote add origin https://github.com/<your-github-alias>/new-ai-generated-project.git
        c:\git\new-ai-generated-project> git push -u origin main

    ```

    or the following commands if you have a machine supporting Linux:
    
    ```bash
        /git $ git clone  https://github.com/flecoqui_microsoft/ai-generated-project-template.git new-ai-generated-project
        /git $ cd new-ai-generated-project
        /git/new-ai-generated-project $ rm -rf .git
        /git/new-ai-generated-project $ git init --initial-branch=main
        /git/new-ai-generated-project $ git add .
        /git/new-ai-generated-project $ git commit -m "Initial commit from template"
        /git/new-ai-generated-project $ git remote add origin https://github.com/<your-github-alias>/new-ai-generated-project.git
        /git/new-ai-generated-project $ git push -u origin main
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
        c:\git\new-ai-generated-project> code .
    ```

2. Once Visual Studio Code is launched, you should see the following dialog box:

    ![Visual Studio Code](./diagrams/reopen-in-container.png)

3. Click on the button 'Reopen in Container'
4. Visual Studio Code opens the Dev Container. If it's the first time you open the project in container mode, it first builds the container, it can take several minutes to build the new container.
5. Once the container is loaded, you can open a new terminal (Terminal -> New Terminal).
6. And from the terminal, you have access to the tools installed in the Dev Container like az client,....

    ```bash
        vscode ➜ /workspaces/new-ai-generated-project (main) $ git status
    ```

#### Updating the README.md file for the new project

As the Dev Container is now running, you can run the script 'setup-template.sh' to update the README.md in the new repository:


```bash
    vscode ➜ /workspaces/new-ai-generated-project (main) $ ./setup-template.sh
```

This script will copy the existing file README.md into README.org.md and copy the file README.template.md into README.md.

#### Updating the devcontainer for the new project

The dev container is pre-installed with 
- git
- azure cli
- UV
which are required to install and run spec-kit.

Moreover, by default the following components and programming languages are pre-installed
- docker
- kubectl and helm
- python version 3.12
- go version 1.22
- java version 21
- dotnet version 8.0
- rust version latest
- node version latest
- typescript version latest

You can edit the file [devcontainer.json](/.devcontainer/devcontainer.json) to keep only the components required for the new project. 


```json
    "features": {
        // https://containers.dev/features
        "git": "latest",
        "ghcr.io/jsburckhardt/devcontainer-features/uv:1": {
        "version": "latest"
        },    
        "ghcr.io/devcontainers/features/azure-cli:1": {
            "extensions": "connectedk8s,k8s-extension,containerapp",
            "installBicep": true
        },
        "ghcr.io/devcontainers/features/docker-in-docker:2": {
            "version": "latest"
        },
        "ghcr.io/devcontainers/features/kubectl-helm-minikube:1": {},
        "ghcr.io/devcontainers/features/python:1": {
            "version": "3.12"
        },
        "ghcr.io/devcontainers/features/go:1": {
            "version": "1.22"
        },
        "ghcr.io/devcontainers/features/java:1": {
            "version": "21"
        },
        "ghcr.io/devcontainers/features/dotnet:1": {
            "version": "8.0"
        },
        "ghcr.io/devcontainers/features/rust:1": {
            "version": "latest"
        },
        "ghcr.io/devcontainers/features/node:1": {
            "version": "latest"
        },
        "ghcr.io/devcontainers-extra/features/typescript:2": {
            "version": "latest"
        }
    }

```

This script will copy the existing file README.md into README.org.md and copy the file README.template.md into README.md.

#### Installing Specify Client in Dev Container

As the Dev Container is now running, you can install specify-cli in your Dev Container from https://github.com/github/spec-kit.git running the command line below:


```bash
    vscode ➜ /workspaces/new-ai-generated-project (main) $ uv tool install specify-cli --from git+https://github.com/github/spec-kit.git
```

#### Initializing the Specify Project in Dev Container

As the Specify client is now installed, you can create a new project using the command line below:

```bash
    vscode ➜ /workspaces/new-ai-generated-project (main) $ specify init --here
```
After this step, the subfolder .github, .specify and .vscode will be created under the root folder.


**Note:** This step is not required if you want to reuse the existing folders .github, .specify and .vscode in the origin repository. You can run this command if you want to start a new project following the subsequent steps in the documentation.  

#### Repository Structure

After this step, the repository structure should be similar to the following one:

```
.
├── .gitignore
├── .gitattributes
├── .devcontainer
│   ├── devcontainer.json
│   └── requirements.txt
├── README.md
├── README.org.md
├── README.template.md
├── LICENSE
├── setup-template.sh
├── diagrams
│   ├── linux_logo.png
│   ├── macos_logo.png
│   ├── reopen-in-container.png
│   └── windows_logo.png
├── .github
│   └── prompts
|       ├── speckit.analyze.prompt.md
|       ├── speckit.checklist.prompt.md
|       |   .
|       |   .
|       |   .
│       └── speckit.tasks.prompt.md
├── .specify
│   ├── memory
│   |   └── constitution.md
│   ├── scripts
│   |   └── bash
|   |       ├── check-prerequisites.sh
|   |       ├── common.sh
|   |       |   .
|   |       |   .
│   │       └── update-agent-context.sh
│   └── templates
|       ├── agent-file-template.md
|       |   .
|       |   .
|       |   .
│       └── tasks-template.md
├── .vscode
│       └── settings.json
...

