# My NixOS Configuration


```sh
chmod +x *.sh
```

#### Remove shell pacakges
- exit shell and just collect garbage like `$ sudo nix-collect-garbage -d`
- rebuild home manager `$ nix build .#hmConfig.yslan.activationPackage` && `./result/activate`
- rebuild nixos config `$ sudo nixos-rebuild build --flake .#yslan`
