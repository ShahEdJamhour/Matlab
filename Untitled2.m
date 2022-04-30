clear all
close all
clc
t=-5:0.01:5;
x=heaviside(t+2);
plot (t,x)