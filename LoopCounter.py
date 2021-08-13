def solution(N):
    numLength = len(str(N))
    arrInteger = []
    loopCounter = 0
    while loopCounter < numLength:
        #for ele in N:
         #   newN += ele
            
        arrInteger.append(newN)
        loopCounter += 1
        print(loopCounter)

    print(arrInteger)

def integerChecker(N):
    print ("This is a non-negative integer checker function." )
    if ((type(N) == int) and N > 0 ):
        solution(N)
        
    else:
        print ("Variable is not a integer")
        
integerChecker(556)
