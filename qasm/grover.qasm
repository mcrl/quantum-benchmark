OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate circuit_28 q0 {  }
gate ucrz(param0) q0 { circuit_28 q0; }
gate circuit_24 q0,q1 { cx q1,q0; rz(-pi/4) q0; cx q1,q0; }
gate ucrz(param0,param1) q0,q1 { circuit_24 q0,q1; }
gate circuit_20 q0,q1,q2 { cx q1,q0; rz(-pi/4) q0; cx q2,q0; cx q1,q0; rz(-pi/4) q0; cx q2,q0; }
gate ucrz(param0,param1,param2,param3) q0,q1,q2 { circuit_20 q0,q1,q2; }
gate circuit_16 q0,q1,q2,q3 { cx q1,q0; rz(-pi/4) q0; cx q2,q0; cx q1,q0; rz(-pi/4) q0; cx q3,q0; cx q1,q0; rz(-pi/4) q0; cx q2,q0; cx q1,q0; rz(-pi/4) q0; cx q3,q0; }
gate ucrz(param0,param1,param2,param3,param4,param5,param6,param7) q0,q1,q2,q3 { circuit_16 q0,q1,q2,q3; }
gate gate_Diagonal q0,q1,q2,q3 { ucrz(-pi,0,0,0,0,0,0,pi) q0,q1,q2,q3; ucrz(-pi/2,0,0,pi/2) q1,q2,q3; ucrz(-pi/4,pi/4) q2,q3; ucrz(0) q3; }
gate gate_Diagonal q0,q1,q2,q3 { gate_Diagonal q0,q1,q2,q3; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q[4];
h q[0];
h q[1];
h q[2];
h q[3];
gate_Diagonal q[0],q[1],q[2],q[3];
diffuser q[0],q[1],q[2],q[3];
