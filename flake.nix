{
  description = "Workstation Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }@attrs: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        modules = [ ./configuration.nix ];
        specialArgs = attrs;
        system = "x86_64-linux";
      };
    };
  };
}
