# Challenges

### Problem

Julia asked her students to create some coding challenges. Write a query to print the *hacker_id*, *name*, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by *hacker_id*. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

### Input Format

The following tables contain challenge data:

- *Hackers:* The *hacker_id* is the id of the hacker, and *name* is the name of the hacker.

![image.png](image.png)

- *Challenges:* The *challenge_id* is the id of the challenge, and *hacker_id* is the id of the student who created the challenge.

![image.png](image%201.png)

---

### **Sample Input 0**

*Hackers* Table:

![image.png](image%202.png)

*Challenges* Table:

![image.png](image%203.png)

### **Sample Output 0**

```
21283 Angela 6
88255 Patrick 5
96196 Lisa 1
```

### **Sample Input 1**

*Hackers* Table:

![image.png](image%204.png)

*Challenges* Table:

![image.png](image%205.png)

### **Sample Output 1**

```
12299 Rose 6
34856 Angela 6
79345 Frank 4
80491 Patrick 3
81041 Lisa 1
```

### **Explanation**

For *Sample Case 0*, we can get the following details:

![image.png](image%206.png)

Students $5077$ and $62743$ both created  challenges, but the maximum number of challenges created is $6$ so these students are excluded from the result.

For *Sample Case 1*, we can get the following details:

![image.png](image%207.png)

Students $12299$ and $34856$ both created  challenges. Because  is the maximum number of challenges created, these students are included in the result.

[문제 링크](https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true)