# 배열에서 연속 나타나는 숫자 하나만 남기고 전부 제거
# 단, 순서 유지

def solution(arr):
    answer = []
    
    for i, elem in enumerate(arr):
        if i == 0:
            answer.append(elem)
        if elem != answer[-1]:
            answer.append(elem)
    
    print('Hello Python')
    return answer