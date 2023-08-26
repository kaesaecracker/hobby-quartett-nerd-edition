{pkgs ? import (fetchTarball channel:nixos-22.11) {}}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    which
    python311
    python311Packages.pyyaml
    python311Packages.jinja2
    gnumake
    inotify-tools
  ];

  shellHook = ''
    echo activated nix shell for repo
    python3 --version
  '';

  # MY_ENVIRONMENT_VARIABLE = "world";
}
