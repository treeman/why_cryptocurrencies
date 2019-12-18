import random

casino_seed = input("Please enter the casino seed: ")
player_seed = input("Please enter the player seed: ")
our_seed = casino_seed + player_seed

print("Using seed:", our_seed)
random.seed(our_seed)

print("The winner is:", random.choice(["casino", "player"]))

