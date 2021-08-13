def solution(N):
    print(N)

def integerChecker(N):
    print ("This is a non-negative checker function: " + N)
    if N.isdigit():
        solution(N)
    else:
        #Do Nothing

    integerChecker(250)

