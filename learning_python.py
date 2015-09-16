def fibonacci():
    a, b = 1, 1
    while True:
        yield b
        a, b = b, a + b
