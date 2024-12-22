def solution(phone_book):
    answer = True
    # 해시 테이블 생성
    phone_hash = {phone: True for phone in phone_book}
    # 각 전화번호의 접두어가 해시 테이블에 존재하는지 확인
    for phone in phone_book:
        for i in range(1, len(phone)):
            if phone[: i] in phone_hash:
                answer = False 
    
    return answer
