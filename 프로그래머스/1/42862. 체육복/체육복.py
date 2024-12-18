"""
출력: 체육복 입을 수 있는 최대 학생 수 => 그리디 서치

n: 전체 학생 수
lost: 도난당한 학생 번호 배열
reserve: 여벌의 체육복 가져온 학생 번호 배열

조건
1) 여벌 체육복을 앞 뒤 번호 학생에게 학생에게 빌려줄 수 있음 -> 
2) 여벌 체육복이 있다고 확인되지만 도난 기록 있을 수 있음 -> 본인 입을 것만 있기에 빌려줄 수 없음
"""

def solution(n, lost, reserve):
    answer = 0
    
    lost_set = set(lost) - set(reserve)  # lost의 차집합
    reserve_set = set(reserve) - set(lost)  # resere의 차집합
    
    for r in sorted(reserve_set):
        if r - 1 in lost_set:
            lost_set.remove(r - 1)
        elif r + 1 in lost_set:
            lost_set.remove(r + 1)
    
    answer = n - len(lost_set)
    
    return answer