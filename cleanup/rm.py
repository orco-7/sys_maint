from os import system, listdir

### home directoy of the user 
homedir = '/home/simone/'

### stores the content of homedir in a list 
files = listdir(homedir)

def rem(i):
    system(f'rm -rf {homedir}{i}')

### prints the element of the list to remove to 'rm.txt' 
for i in files:
    if '.vimi' in i:
        rem(i)
    if '.cache' in i:
        rem(i)
    if '.python_history' in i:
        rem(i)
    if '.xsession-errors' in i:
        rem(i)

        


