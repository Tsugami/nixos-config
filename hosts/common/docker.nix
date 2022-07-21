{}:
{
  virtualisation = {
    docker.enable = true;
  };

  users.groups.docker.members = [ "yslan" ];

  environment.systemPackages = with pkgs; [
    docker-compose
  ];
}
