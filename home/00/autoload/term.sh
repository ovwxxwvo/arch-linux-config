# TERM config,


export TERM="linux-16color"

case "$(tty)" in

  *tty3)
    echo "$(tty): tmux"
    exec bash -c 'tmux -L $(tty|sed "s|/dev/||;s|/||g")'
    ;;

  *tty4)
    echo "$(tty): fbterm"
    exec fbterm -- sh -c 'export TERM=fbterm; exec tmux -L $(tty|sed "s|/dev/||;s|/||g")'
    ;;

  *tty5)
    echo "$(tty): alacritty"
    # exec alacritty
    ;;

  *tty6)
    echo "$(tty): sway"
    exec sway
    ;;

esac


