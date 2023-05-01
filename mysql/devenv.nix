{ pkgs, ... }:

{

  # https://devenv.sh/packages/
  packages = [ pkgs.mysql ];


  services.mysql.enable = true; 
	
  services.mysql.ensureUsers = [
    {
      name = "tutu";
      password = "secret";
      ensurePermissions = { "*.*" = "ALL PRIVILEGES"; };
    }
  ];

  services.mysql.settings.mysqld = {
    "skip_name_resolve" = "on";
  }; 

  # https://devenv.sh/scripts/
  scripts.hello.exec = "echo Iniciando MySql";
#  scripts.addUser.exec = "mysql -u root -e \"CREATE USER 'tutu'@'192.168.0.11' IDENTIFIED BY 'secret';GRANT ALL PRIVILEGES ON *.* TO 'tutu'@'192.168.0.11';\"";

  enterShell = ''
    hello
#    addUser
  '';

  # https://devenv.sh/languages/
  # languages.nix.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # See full reference at https://devenv.sh/reference/options/
}
