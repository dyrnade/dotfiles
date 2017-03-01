# cemg - environment.nix

{ config, pkgs, ... }:

{
  environment = {
    etc = {
      gitconfig.text = ''
        [core]
          editor = nano
        [user]
          email = gurescicem@gmail.com
          name = dyrnade
        [merge]
          tool = meld
        [mergetool "meld"]
          cmd = meld "$BASE $LOCAL $REMOTE $MERGED"
	  trustExitCode = false
	[diff]
	  tool = meld
	[difftool "meld"]
	  cmd = meld "$LOCAL $REMOTE"
      '';
    };
    systemPackages = with pkgs; [
#      go
      # i3 packages
 #     i3status
  #    lxappearance
   #   i3lock
    #  rofi
     # gnome.gnome_icon_theme
      #compton
      playerctl
      xorg.xbacklight
      #dmenu
    ];
    variables = {
      BROWSER = "firefox";
      #GOROOT = [ "${pkgs.go.out}/share/go" ];
    };
  };
}
