# Day 1 solutions

# Grab input from file
with open("input.txt", "r") as f:
    input = [line for line in f]

elves = []  # Series of summaries for each elf
temp = []  # Temporary place to construct each elf summary
for line in input:
    if line == "\n":  # Split on empty lines
        elves.append(temp)
        temp = []
    else:
        temp.append(line.strip())

totals = []
for elf in elves:
    elf_total = sum(map(lambda x: int(x), elf))
    totals.append(elf_total)


totals = sorted(totals, reverse=True)  # Sort descending

print(f"Star 1:{totals[0]}")
print(f"Star 2:{totals[0]+totals[1]+totals[2]}")
