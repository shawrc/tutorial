def fibonacci():
    """Returns a generator of fibonacci serires."""
    a, b = 0, 1
    while True:
        a, b = b, a + b
        yield a

import types
def test_fibonacci():
    assert(type(fibonacci()) == types.GeneratorType)
    print("Good, this fibonacci() returns a generator.")
    expected = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    counter = 0
    for n in fibonacci():
        print(n)
        assert(n == expected[counter])
        counter += 1
        if (counter >= 10):
            break

test_fibonacci()
