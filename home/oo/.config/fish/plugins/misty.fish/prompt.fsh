# FISH config,


function fish_prompt --description "Informative prompt"

    # set -l  last_pipestatus     $pipestatus  # Save the return status of the previous command
    # set -lx __fish_last_status  $status      # Export for __fish_print_pipestatus
    # set -l  pipestatus_string   ( __fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" "$last_pipestatus" )

    set -l  status_color        ( set_color        $fish_color_status )
    set -l  statusb_color       ( set_color --bold $fish_color_status )

    set -l  fish_color_normal   normal
    set -l  fish_color_user     normal
    set -l  fish_color_host     normal
    set -l  fish_color_cwd      normal
    set -l  fish_color_cwd_root normal
    set -l  fish_color_status   normal

    set -l  style_pipe          "$pipestatus_string"
    set -l  style_time          "["(date "+%H:%M:%S")"]"
    set -l  style_user          "$USER"
    set -l  style_host          (prompt_hostname)
    set -l  style_pwd           "$PWD"
    set -l  style_at            "@"
    set -l  style_hash          ""

    if fish_is_root_user ; set style_hash " #" ; end
    if fish_is_root_user ; set color_user $color_root ; end

  printf "%s %s %s%s%s %s  %s %s %s%s%s %s  \n" \
    (set_color $color_con_up)"$style_con_up"\
    (set_color $color_time  )"$style_time"\
    (set_color $color_user  )"$style_user"\
    (set_color $color_at    )"$style_at"\
    (set_color $color_host  )"$style_host"\
    (set_color $color_pwd   )"$style_pwd"\
    (set_color normal)
    # (set_color $color_pipe  )"$style_pipe"\

  printf "%s%s %s%s%s%s%s%s" \
    (set_color $color_con_dn)"$style_con_dn"\
    (set_color $color_hash  )"$style_hash"\
    (set_color $color_ma    )"$style_prefix"\
    (set_color $color_cy    )"$style_prefix"\
    (set_color $color_ye    )"$style_prefix"\
    (set_color $color_bl    )"$style_prefix"\
    (set_color $color_gr    )"$style_prefix"\
    (set_color $color_re    )"$style_prefix"\
    (set_color normal)

end


