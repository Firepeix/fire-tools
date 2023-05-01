{ pkgs, ... }:

{

  # https://devenv.sh/packages/
  packages = [ pkgs.mysql ];


  services.mysql.enable = true; 

  # https://devenv.sh/scripts/
  scripts.hello.exec = "echo Iniciando MySql";

  enterShell = ''
    hello
  '';

  # https://devenv.sh/languages/
  # languages.nix.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # See full reference at https://devenv.sh/reference/options/
}
