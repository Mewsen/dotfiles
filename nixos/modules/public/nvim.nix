{ pkgs, inputs, ... }: {

  programs.neovim = {
    enable = true;
    package = inputs.neovim-nightly.packages.${pkgs.system}.default;
  };

  environment.systemPackages = with pkgs; [
    shellcheck
    pandoc

    ltex-ls
    # lua

    lua-language-server

    # web
    typescript-language-server
    vscode-langservers-extracted
    tailwindcss-language-server
    nodejs

    # zig
    zls
    zig

    # bash
    bash
    bash-language-server

    # nix
    nixfmt-classic
    nil

    # c
    llvmPackages_20.clang-tools
    cmake
    gcc
    lldb
    cppcheck
    ccls
    gdb

    # go
    go
    gopls
    gotools

    # C#
    dotnetCorePackages.sdk_9_0_3xx
    omnisharp-roslyn
    dotnet-sdk

    # rust
    rustfmt
    cargo
    rustc
    rust-analyzer

    # latex
    texlab
    texlive.combined.scheme-full
    tectonic

    universal-ctags

    #spellchecking
    aspell
    aspellDicts.en
    aspellDicts.en-computers
    aspellDicts.de

  ];
}
