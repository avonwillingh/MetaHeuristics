# MetaHeuristics
To share hard cases so we all do well :)

**README for Test Suite**

**Description:**
This test suite is designed to evaluate the performance and functionality of the simulated annealing algorithm implemented in the file `simulated_annealing.py`. The suite includes a script `run_tests.py`, a folder containing CSV test cases, and the user's own implementation of the simulated annealing algorithm.

**Contents:**
- `run_tests.py`: This script is responsible for executing the test cases using the simulated annealing algorithm implemented in `simulated_annealing.py`.
  
- `test_cases/`: This folder contains CSV files which serve as test cases for the simulated annealing algorithm. Each CSV file represents a different problem instance to be solved using the algorithm.

- `simulated_annealing.py` (User's Code): Users should replace the contents of this file with their own implementation of the simulated annealing algorithm. It is essential to ensure that the code contains a function named `simulated_annealing(filename)` which accepts a path to a CSV file as input. The function should return an integer representing the solution to the problem instance specified in the CSV file. Time and other metrics will be calculated automatically during testing.

**Usage:**
1. Replace the code in `simulated_annealing.py` with your implementation of the simulated annealing algorithm.
2. Ensure that the `simulated_annealing(filename)` function is defined and takes a path to a CSV file as its only argument.
3. Run the `run_tests.py` script to execute the test cases against your implementation.

**Example:**
```python
# Example of simulated_annealing.py implementation

import pandas as pd

def simulated_annealing(filename):
    """
    Perform simulated annealing algorithm to solve a problem instance specified in the CSV file.

    Args:
        filename (str): Path to the CSV file containing the problem instance.

    Returns:
        int: Solution to the problem instance.
    """
    # Read the CSV file and perform simulated annealing
    data = pd.read_csv(filename)
    # Simulated annealing algorithm implementation
    # ...
    # Return the solution
    return solution
```

**Note:**
Ensure that the `simulated_annealing(filename)` function adheres to the specified input and output requirements. The function should return only an integer representing the solution to the problem instance specified in the CSV file.
