def solution(phone_book):
    # 해시 테이블 생성
    phone_hash = {phone: True for phone in phone_book}
    
    # 각 전화번호에 대해 접두어 확인
    for phone in phone_book:
        # 전화번호의 각 접두어를 확인
        for i in range(1, len(phone)):
            if phone[:i] in phone_hash:  # 접두어가 해시에 존재한다면
                return False
    
    return True
