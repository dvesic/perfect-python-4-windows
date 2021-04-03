# Perfect python for windows - fluent, movable and efficient installation
## Setting up Windows 10 development environment for python development (Chocolatey, MiniConda, PyCharm, Windows Terminal, cloud storage)

This is short (and hopefully sweet :smile:) set of instructions for creating fast, efficient and highly operational enviroment for python development.

Given nature of today's development, it is expected that you develop same project from multiple locations (from Work office, from home, from travel laptop ...) and also that you need to bring new workplace very, very fast. Also, working from multiple locations and synhronising all of that can be very cumbersome and complicated.

That is basic reason for creating this set of instructions and scripts - to enable today's nomad developers to do real creative work w/o worrying too much about on which machine you are and which state you left project on previous work place.

Some assumptions:
* Operating system is Windows 10, fully patched. Additional software:
  * [Windows Terminal](https://www.microsoft.com/en-rs/p/windows-terminal/9n0dx20hk701?rtc=1#activetab=pivot:overviewtab)
  * OpenSSL
  * WSL 2
* Necessary software for installation will be:
  * Chocolately
  * MiniConda
  * PyCharm 
* all files will be on some cloud storage and ideally, drive letter assigned will be same on all machines

### Windows 10

Windows 10 became extremely versatile and configurable development environment. Windows Terminal, Windows SubSystem for Linux, Visual Studio Code are just some of the biggest improvements in last couple of years.
