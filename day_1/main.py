with open('input', 'r') as f:
    input = [line for line in f]

elves = []
temp = []
for line in input:
    if line == '\n':
        elves.append(temp)
        temp = []
    else:
        temp.append(line.strip())


max = []
for elf in elves:
    tally = sum(map(lambda x: int(x), elf))
    max.append(tally)

max = sorted(max)

print(f'Star 1:{max[-1]}')
print(f'Star 2:{max[-1]+max[-2]+max[-3]}')