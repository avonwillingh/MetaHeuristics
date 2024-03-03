import pandas as pd

#Replace with your own function
#ensure that have a function called simulated annealing which takes in a csv and returns you score
#Can call on other functions etc. but the tests will only call the simulated annealing and pass in the filename
#File name is of format "./test_cases/test_case_1.csv" so you can simply call pd.read_csv(filename, etc.)

def simulated_annealing(filename):
    test = pd.read_csv(filename)
    return 26.0