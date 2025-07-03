{ pkgs, ... }:{
    environment.systemPackages = with pkgs; [
        # System monitoring and fun terminal visuals
        btop cmatrix cowsay fastfetch pipes cbonsai oh-my-posh pokemon-colorscripts-mac

        # Essential utilities
        gnumake curl wget unzip dpkg fzf eza bat zoxide neovim tmux ripgrep fd stow man openssh netcat-gnu

        # CTF tools
        exiftool gdb pwntools binwalk

        # Programming languages
        python3Full python313Packages.pip nodejs_24
    ];
}