import random

print("13:")
random.seed(13)
for i in range(0, 10):
    print(random.randrange(10))

print("7:")
random.seed(7)
for i in range(0, 10):
    print(random.randrange(10))

print("41:")
random.seed(41)
for i in range(0, 10):
    print(random.randrange(10))
