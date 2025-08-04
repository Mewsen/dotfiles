{
  description = "My Nixos config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nixos-hardware = { url = "github:NixOS/nixos-hardware/master"; };
    neverest.url = "github:pimalaya/neverest/master";
    neovim-nightly.url = "github:nix-community/neovim-nightly-overlay";
    emacs-overlay.url = "github:nix-community/emacs-overlay";
  };

  outputs = { self, nixpkgs, nixos-hardware, ... }@inputs:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" ];
      forEachSupportedSystem = f:
        nixpkgs.lib.genAttrs supportedSystems
        (system: f { pkgs = import nixpkgs { inherit system; }; });
    in {
      devShells = forEachSupportedSystem ({ pkgs }: {
        default =
          pkgs.mkShell { packages = with pkgs; [ nil nixfmt-classic ]; };
      });

      nixosConfigurations = {
        framework = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ./modules/private/devices/framework/configuration.nix
            nixos-hardware.nixosModules.framework-13-7040-amd
            ({ config, pkgs, ... }: {
              nixpkgs.overlays = [ inputs.emacs-overlay.overlay ];
            })
          ];
        };
      };
    };
}
