"""
앞번호나 뒷번호에 빌려줘서 최대한 많은 학생이 입도록

n: 전체 학생 수
lost: 도난당한 학생 번호 배열
reserve: 여벌의 체육복 가져온 학생 번호 배열
"""
def solution(n, lost, reserve):
    # 여벌 체육복을 가진 학생이 도난당한 경우 처리
    lost_set = set(lost) - set(reserve)
    reserve_set = set(reserve) - set(lost)
    
    # 체육복 빌려주기
    for r in sorted(reserve_set):
        if r - 1 in lost_set:  # 앞번호 학생에게 빌려줌
            lost_set.remove(r - 1)
        elif r + 1 in lost_set:  # 뒷번호 학생에게 빌려줌
            lost_set.remove(r + 1)
    
    # 전체 학생 수에서 체육복이 없는 학생 수를 뺌
    return n - len(lost_set)
