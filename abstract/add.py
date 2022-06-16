import numpy as np
from qiskit import QuantumCircuit

def add(circ, a, b, c):
	circ.cx(a, c)
	circ.cx(b, c)




if __name__ == "__main__":
	num_qubits = 3
	circ = QuantumCircuit(num_qubits)
	add(circ, 0, 1, 2)
	print(circ)
