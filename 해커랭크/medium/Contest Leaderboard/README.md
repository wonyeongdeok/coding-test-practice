# Contest Leaderboard

### Problem

You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the *hacker_id*, *name*, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending *hacker_id*. Exclude all hackers with a total score of  from $0$ your result.

### **Input Format**

The following tables contain contest data:

- *Hackers:* The *hacker_id* is the id of the hacker, and *name* is the name of the hacker.

![image.png](image.png)

- *Submissions:* The *submission_id* is the id of the submission, *hacker_id* is the id of the hacker who made the submission, *challenge_id* is the id of the challenge for which the submission belongs to, and *score* is the score of the submission.

![image.png](image%201.png)

### **Sample Input**

*Hackers* Table:

![image.png](image%202.png)

*Submissions* Table:

![image.png](image%203.png)

### **Sample Output**

```
4071 Rose 191
74842 Lisa 174
84072 Bonnie 100
4806 Angela 89
26071 Frank 85
80305 Kimberly 67
49438 Patrick 43
```

### **Explanation**

Hacker *4071* submitted solutions for challenges *19797* and *49593*, so the total score $= 95 + max(43, 96) = 191$.

Hacker *74842* submitted solutions for challenges *19797* and *63132*, so the total score $=max(98, 5) + 76 = 174$.

Hacker *84072* submitted solutions for challenges *49593* and *63132*, so the total score $= 100 + 0 = 100$.

The total scores for hackers *4806*, *26071*, *80305*, and *49438* can be similarly calculated.

[문제 링크](https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true)

### Lessons Learned

- FROM절 서브쿼리
    - 별칭(alias) 지정 필수
    - 대부분 데이터베이스의 SQL 표준 규칙