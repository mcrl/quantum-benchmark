OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
h q[0];
cp(pi/8) q[0],q[1];
cp(pi/4) q[0],q[2];
cp(pi/2) q[0],q[3];
h q[1];
cp(pi/4) q[1],q[2];
cp(pi/2) q[1],q[3];
h q[2];
cp(pi/2) q[2],q[3];
h q[3];
swap q[0],q[3];
swap q[1],q[2];
