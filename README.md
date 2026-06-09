## My ARCH LINUX Config File () .  

#### System Software Tree (系统软件树)  

```  
|                |  
|       basic -- |    yazi  fish nvim         --|  
| application    |        \  |  /               |  
|                |         \ | /                |  
|    terminal -- |          tmux              --|  
| multiplexer    |           |                  |  
|                |           |                  |  
|       shell -- |          bash------\       --|  
|                |           |  \      \        |  
|                |           |   \      \       |  pts  
|    terminal -- |    alacritty  fbterm  |    ---> ( pseudo terminal )  
|    emulator    |      /    |   (fb)    |  
|                |     |     |     |     |  
|   compositor   | picom   sway    |     |      |  
|                |     + (wayland) |     |      |  
|                |     +     |     |     |      |  
|      window -- |    i3     |     |     |    --|  
|     manager    |     +     |     |     |      |  
|                |     +     |     |    /       |  
|     display -- |  xorg     |     |   /      --|  
|      server    | (x11)\    |    /   /         |  
|                |       \   |   /   /          |  tty  
|       login -- |        lemurs   agetty     ---> ( virtual terminal )  
|     manager    |           |     /  
|                |           |    /  
|     service -- |      init|systemd          --|  
|     manager    |           |                  |  
|                |           |                  |  console  
|      kernel -- |        linux               ---> (  )  
|                |           |  
|                |          /|\  
|-------------------------------------------------------  
|  MY ARCH LINUX (  )    / | | | \  
```  

----  
#### Graphical Interface (图形界面)  
```  
|  sway + swayidle + swaylock + swaybg + swaybar  
|-------------------------------------------------------  
|  wayland  
```  

#### Hardware Base （硬件基础）  
```  
cpu : AMD Ryzen 7840H    5.1GHz  
gpu : AMD Radeon 780M  
mem : Crucial DDR5       5600MHz   (32G+16G)  
hdd : ZhiTai PCIe Gen4X4 7000MB/s  (1T+1T) (Raid0)  
```  

----  
#### Application Selection （应用选择）  

```  
system            : Arch Linux    <- Window  
login manager     : lemurs        <- lightdm  
window compositor : sway(wayland) <- i3(x11) + picom  
terminal emulator : alacritty  
term multiplexer  : tmux  
command shell     : fish+bash+dash  
file manager      : yazi          <- joshuto <- ranger  
text editor       : nvim          <- vim  
media player      : mpv  
web browser       : firefox  
```  

----  
**-- lemurs**  
![screenshot](https://cdn.jsdelivr.net/gh/ovwxxwvo/img-bed@main/00_lemurs/misty-lemurs.png)  
**-- tmux**  
![screenshot](https://cdn.jsdelivr.net/gh/ovwxxwvo/img-bed@main/01_tmux/misty-tmux-window.png)  
**-- fish ( orange & violet )**  
![screenshot](https://cdn.jsdelivr.net/gh/ovwxxwvo/img-bed@main/02_fish/misty-fish.png)  
**-- yazi ( skyblue )**  
![screenshot](https://cdn.jsdelivr.net/gh/ovwxxwvo/img-bed@main/03_yazi/misty-yazi.png)  
**-- nvim ( seagreen )**  
![screenshot](https://cdn.jsdelivr.net/gh/ovwxxwvo/img-bed@main/04_nvim/misty-nvim.png)  

____  
#### About Config Files （关于配置文件）  

- some system config files may not be directly usable,  
  because they base on hardware.  
- application config files are generally directly usable,  
  but the structure of the config files maybe diff from that of most.  
- most of app plugin need to be download.  


