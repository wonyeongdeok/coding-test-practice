# Higher Than 75 Marks

### Problem

Query the *Name* of any student in **STUDENTS** who scored higher than  *Marks*. Order your output by the *last three characters* of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending *ID*.

### Input Format

The **STUDENTS** table is described as follows:

![image.png](image.png)

The *Name* column only contains uppercase (`A`-`Z`) and lowercase (`a`-`z`) letters.

### **Sample Input**

![image.png](image%201.png)

### **Sample Output**

```
Ashley
Julia
Belvet
```

### **Explanation**

Only Ashley, Julia, and Belvet have *Marks* > . If you look at the last three characters of each of their names, there are no duplicates and 'ley' < 'lia' < 'vet'.

[문제 링크](https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true)