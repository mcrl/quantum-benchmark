import numpy as np
from qiskit import QuantumCircuit, QuantumRegister
from qiskit.circuit.library import HGate, CXGate


def computation(circ, gates, qubits):
	inverse_map = []
	qubit_map = {}
	i = 0
	for qlist in qubits:
		for q in qlist:
			if q.index not in qubit_map:
				qubit_map[q.index] = i
				inverse_map.append(q)
				i += 1

	c = QuantumCircuit(len(qubit_map), name='computation')
	for g, qlist in zip(gates, qubits):
		print([qubit_map[q.index] for q in qlist])
		c.append(g, [qubit_map[q.index] for q in qlist])


	circ.append(c, inverse_map)
	

if __name__ == "__main__":
	num_qubits = 4
	qr = QuantumRegister(num_qubits, 'q')
	circ = QuantumCircuit(qr)

	gates = [HGate(), CXGate()]
	qubits = [[qr[0]], [qr[0], qr[2]]]

	computation(circ, gates, qubits)

	print(circ)
