using Bloqade
using BloqadeMIS
using Random
using Optim
Random.seed!(42)
using PythonCalbl
plt = pyimport("matplotlib.pyplot");

atom1 = AtomList([(0.0, 0.0), (0.0, 4.5), (0.0, 9.0), (0.0, 13.5), (0.0, 18.0), (4.5, 0.0),  
     (4.5, 13.5), (4.5, 18.0), (9.0, 0.0), (9.0, 9.0), (9.0, 13.5), (9.0, 18.0),
    (13.5, 0.0), (13.5, 4.5), (13.5, 9.0), (13.5, 13.5), (13.5, 18.0), (18.0, 0.0),
    (18.0, 13.5), (18.0, 18.0)]);

atom1