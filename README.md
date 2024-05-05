# qec-hackathon-2024

Theory

1. The variable parameters of the problem are the geometry, the values of Omega and Delta. We started with a 4x4 square lattice with lattice constant of $4.5{\micro m}$, a 10% defect density and the King's problem, where we used the geometric mean of the distance between two diagonally connected nodes and two nodes connected directly via the x-axis. Since the parameter $\Omega$ controls the laser intensity that performs the gate pulse, it has to start and end at zero. Using the relationship $$R_{a} = \frac{C_{6}}{\sqrt{\Omega^{2} + \Delta^{2}}}$$ and setting $\Omega(t_{f}) = 0 = \Omega(t_{i})$, we find that $\Delta$ is predetermined by the chosen Rydberg Radius. More quantitatively, it scales as $R_{a}^{-1/6}$. Thus, we see that increasing the Rydberg Radius will rapidly makes our initally chosen state a worse approximation of a true ground-state. For large enough Rydberg radii, this will hinder us from ending in a ground state at the end, by conservation of energy. We can see this specifically, going from the King's radius, with fidelities around 90% depending on the parameters, to the $R_{b}/a = 3$ case, with fidelities less than 50%.
2. The first step we took afetrwards, was to try radii in between the two abovementioned cases, remaining in the 4x4 square lattice case.
3. Afterwards, we decided to do some 5x5 square lattices. We know that emulating lattices scales exponentially in the number of qubits we desire to emulate, so choosing a 5x5 lattice takes a huge amount of time with the same defect density as the 4x4 case. Instead of the suggested defect density of 20%, we used a 30% defect density, which makes roughly 18 qubits out of the original 25. In comparison to the 4x4 case, this still takes about 4 times as much computational power, since we have to emulate 2 more qubits. The results still had quite high fidelity, however, as can be seen below 

Programming

1. First, we use the programming language Julia to do the classical simulations using the package Bloqade for grid sizes of 4x4 and 5x5 with the parameters that we found in the theory part. We take this as a starting point to do an optimization using the Nelder-Mead method. To do so, we add three points to our curve for the $\Delta$ detuning and choose some arbitrary starting point of the optimization. Then we run the optimization script and compare whether we get an improved probability to get the desired MIS. We showed an improvement for a 4x4 grid since we were able to increase the probability of the MIS of our graph.
2. Next, we use the generic tensor networks library to solve for the size and degeneracy of our graph using classical methods and compare them to what we get by simulating it classically with BLoqade. For the case of a 5x5 grid for a king's lattice, we get the result (9,1) which means that we have nine excited rydberg states and no degeneracy in this case. By simulating the same situation using Bloqade, we can clearly visually confirm this result.
3. The next step would be to combine this, using the optimization protocol to generate a better starting point for the optimization and then running it on Aquila, using the outcome as feedback loop to improve the starting point and shape of the pulse. Because of time reasons, we could not implement this.

Business

The basic idea of our business application is to use the MSI to implement a maximal risk diversification in a stock portfolio. That is, we want to identify each stock with a qubit, and connect that qubit with others respresenting stocks with similar risks, where . The underlying challenge is finding a meaningful geometry and 2dimensional model to simulate how the risk of individual stocks connects. 
The first issue that arises in a large scale implementation of this idea is that there are obviously far far more stocks than just a few hundred, so a creative solution would be needed to implement this near-term. 
Our solution to this problem comes in the form of a minimal cut algorithm. Considering a huge lattice containing qubits of the order $n^{2}$, we want to divide the lattice into $n$ many subgrids containing $n$ qubits, and solve the MSI problem for each of the subgrids. However, there is an issue with how we divide the individual lattices to ensure that when we put them back together, we have a negligible error on the edges between

The fundamental problem is to find a meaningful geometry 
 
