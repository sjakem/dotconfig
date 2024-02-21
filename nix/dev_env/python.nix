# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{


  environment.systemPackages = (with pkgs; [
     python311
  ]) ++ (with pkgs.python311Packages; [
      numpy
      jupyter
      pandas
      sympy
      pip
      notebook
  ]);



  system.stateVersion = "23.11"; # Did you read the comment?

}
