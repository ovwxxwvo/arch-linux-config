# TERM config,


export TERM="linux-16color"

case "$(tty)" in

  *tty3)
      echo "TTY4: tmux"
      exec bash -c 'tmux -L $(tty|sed "s|/dev/||;s|/||g")'
      ;;

  *tty4)
      echo "TTY5: fbterm"
      exec fbterm -- sh -c 'export TERM=fbterm; exec tmux -L $(tty|sed "s|/dev/||;s|/||g")'
      ;;

  *tty5)
      echo "TTY5: alacritty"
      # exec alacritty
      ;;

  *tty6)
      echo "TTY6: sway"
      exec sway
      ;;

esac


