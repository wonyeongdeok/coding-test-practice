def solution(array, commands):
    answer = []
    
    for command in commands:
        i, j, k = command
        arr_slice = array[i-1: j]
        arr_sorted = sorted(arr_slice)
        answer.append(arr_sorted[k-1])
    
    return answer