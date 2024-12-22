# # 

# def solution(phone_book):
#     phone_book = sorted(phone_book, key=lambda x: len(x))
    
#     answer = True
    
#     for i in phone_book:
#         for j in phone_book:
#             if i == j:
#                 continue
#             if i.startswith(j):
#                 answer = False
#                 break
#         if not answer:
#             break
    
#     return answer


def solution(phone_book):
    # 전화번호 목록 정렬
    phone_book.sort()
    
    # 인접한 두 번호를 비교
    for i in range(len(phone_book) - 1):
        # 접두어인지 확인
        if phone_book[i + 1].startswith(phone_book[i]):
            return False
    
    return True
