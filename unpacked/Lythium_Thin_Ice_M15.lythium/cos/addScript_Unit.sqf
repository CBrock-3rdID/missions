/*
Add Script to individual units spawned by COS.
_unit = unit. Refer to Unit as _unit.
*/

_unit =(_this select 0);
_unit addAction ["Hello", {directSay "Hello stranger!"}];
_unit addAction ["How are you feeling?", {hint "Would be better if you smelly Americans left"}];// EXAMPLE SCRIPT

