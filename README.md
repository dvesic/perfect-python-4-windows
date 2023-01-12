# Perfect python for windows - fluent, movable and efficient installation
## Setting up Windows 10/11 development environment for python development (winget, MiniConda, PyCharm, Windows Terminal, cloud storage)

This is short (and hopefully sweet :smile:) set of instructions for creating fast, efficient and highly operational enviroment for python development.

Given nature of today's development, it is expected that you develop same project from multiple locations (from Work office, from home, from travel laptop ...) and also that you need to bring new workplace very, very fast. Also, working from multiple locations and synhronising all of that can be very cumbersome and complicated.

That is basic reason for creating this set of instructions and scripts - to enable today's nomad developers to do real creative work w/o worrying too much about on which machine you are and which state you left project on previous work place.

Some assumptions:
* Operating system is Windows 10/11, fully patched. 
* Additional software from MS Store (= easy to install on other machine, auto-update):
  * [Windows Terminal](https://www.microsoft.com/store/productId/9N0DX20HK701)
  * [App Installer (WinGet)](https://www.microsoft.com/store/productId/9NBLGGH4NNS1)
* Optional, but highly useful software:
  * [DBeaver CE](https://www.microsoft.com/store/productId/9PNKDR50694P) - efficient multi-database management/development tool
  * [Visual Studio Code](https://apps.microsoft.com/store/detail/XP9KHM4BK9FZ7Q) - while PyCharm is for full python development, VS Code is great all-round multi-purpose editor
* Necessary software for installation will be:
  * Chocolately
  * MiniConda
  * PyCharm 
* all files will be on some cloud storage and ideally, drive letter assigned will be same on all machines

## MiniConda
There are many ways to separate various python applications and/or environments. IMHO, MiniConda is most versatile and provide significant advantage over others: you can work with multiple python versions on same machine w/o conflict.

### Keeping things up to date
As well as anything else, you need to keep your MiniConda installation up-to-date. That is fairly easy: open Conda prompt (over Windows Terminal) and:
```
conda update -n base -c defaults conda
```
### Creating new python environment
In order to create environment, you need _env_name_ and python _version_:

Create Conda environment:
`conda create --name env_name python=3.10`

### Activating/deactivating python environment

Each project should have its own _target_directory_; once that done, it is very convenient to automaticaly switch to appropriate drive/folder on environment activation.

To do so, **first time** when you intend to activate environment:
1. Open MiniConda environment 
2. Create project _target_directory_ and switch to it
3. Activate conda environment with `conda activate name_of_env`
4. Download there file [auto_cd_folder.cmd](https://github.com/dvesic/perfect-python-4-windows/blob/main/bin/auto_cd_folder.cmd)
5. Execute it once; this will create appropriate _set_working_directory.bat_ in conda _envs\name_of_env\etc\conda\activate.d_ folder
6. (you can safely delete file once executed)

Going forward, each subsequent activation of environment will also move you to appropriate folder as well.

For reference, activation and deactivation of environment is simple:
```
conda activate name_of_env
conda deactivate
```
## PyCharm

While Visual Studio Code is great, I still prefer [JetBrains PyCharm](https://www.jetbrains.com/pycharm/) as main python DEV IDE - you can do all things needed for small to large python project.

You can choose between free, Community edition and paid Professional edition. 

Installations:
* Professional edition: `winget install -e --id JetBrains.PyCharm.Professional`
* Community edition: `winget install -e --id JetBrains.PyCharm.Community`

I strongly suggest creating JetBrains account and using it for syncing multiple PyCharm instances