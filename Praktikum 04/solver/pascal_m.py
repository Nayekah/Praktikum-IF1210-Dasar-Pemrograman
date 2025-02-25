N = int(input())
M = int(input())

triangle = [[0 for i in range(N)] for i in range(N)]
triangle[0][0] = M

for i in range(N):
    triangle[i][0] = M
    for j in range(1, i+1):
        triangle[i][j] = triangle[i-1][j-1] + triangle[i-1][j]
    for j in range(i):
        print(triangle[i][j], end=" ")
    print(triangle[i][i])