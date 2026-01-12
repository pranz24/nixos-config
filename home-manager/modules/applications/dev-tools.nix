{ config, lib, pkgs, unstable-pkgs, ... }:

{
  # Development and debugging tools
  home.packages = with pkgs; [
    # Static Analysis, Reverse Engineering, Protocol Analyzer and Debugger
    cutter
    openocd
    valgrind
    wireshark
    picocom

    # EDA tool
    kicad

    # Language Servers
    zls
    libclang
    rust-analyzer
    python312Packages.python-lsp-server

    # Terminal
    unstable-pkgs.ghostty

    # LLM
    claude-code
  ];
}
