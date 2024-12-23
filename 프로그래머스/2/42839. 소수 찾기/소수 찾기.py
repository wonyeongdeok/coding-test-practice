def is_prime(num):
    if num < 2:
        return False
    for i in range(2, int(num**0.5) + 1):
        if num % i == 0:
            return False
    return True

def generate_combinations(numbers, current, used, results):
    if current:  # 현재 숫자가 비어 있지 않으면 추가
        results.add(int(current))
    for i in range(len(numbers)):
        if not used[i]:
            used[i] = True
            generate_combinations(numbers, current + numbers[i], used, results)
            used[i] = False  # 백트래킹으로 상태 복원

def solution(numbers):
    results = set()  # 가능한 숫자를 저장할 집합
    used = [False] * len(numbers)  # 사용 여부를 체크
    generate_combinations(numbers, "", used, results)
    
    # 소수의 개수를 반환
    return sum(1 for num in results if is_prime(num))

