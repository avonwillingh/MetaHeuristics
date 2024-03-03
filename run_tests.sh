#!/bin/bash

# Define the directory containing test case CSV files
TEST_CASE_DIR="./test_cases"

# Declare an associative array
declare -A expected_results

# Fill the associative array with expected results, keyed by filename
expected_results["test_case_1.csv"]=26.0
expected_results["test_case_2.csv"]=246.0
# Add more test cases as needed


# Loop through each CSV file in the test case directory
for test_file in "$TEST_CASE_DIR"/*.csv; do
    echo "Running test with $test_file..."
    filename=$(basename -- "$test_file")
    
    # Extract the result and execution time from the output
    start_time=$(date +%s%N) # Capture start time in nanoseconds
    result=$(python3 -c "import csv; from simulated_annealing import simulated_annealing; print(simulated_annealing('./test_cases/$filename'))")
    end_time=$(date +%s%N) # Capture end time in nanoseconds
    exec_time=$(echo "scale=9; ($end_time - $start_time) / 1000000000" | bc)
    
    # Display the result and execution time
    echo "Result: $result"
    echo "Execution Time: $exec_time"

    EXPECTED_RESULT=${expected_results[$filename]}
    
    # Check if the result matches the expected result
    if [ "$result" = "$EXPECTED_RESULT" ]; then
        echo -e "\e[32mTest Passed: Result is as expected.\e[0m"
    else
        echo -e "\e[31mTest Failed: Result is not as expected: Expected $EXPECTED_RESULT but got $result\e[0m"
    fi
    
    echo "--------------------------------"
done

echo "All tests completed."
