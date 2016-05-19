python3 warmup_solution.py simple_dict.json < tests/test_simple.in > tests/test_simple.out

if ! cmp "tests/test_simple.out" "tests/test_simple.expected"
then
    echo "test_simple.out doesn't match test_simple.expected!"
    echo "Failed test #1: test_simple"
    exit
else
    echo "Passed test #1: test_simple"
fi


python3 warmup_solution.py websters_dict.json < tests/test_websters.in > tests/test_websters.out

if ! cmp "tests/test_websters.out" "tests/test_websters.expected"
then
    echo "test_websters.out doesn't match test_websters.expected!"
    echo "Failed test #2: test_websters"
    exit
else
    echo "Passed test #2: test_websters"
fi

echo "Passed all tests!"
