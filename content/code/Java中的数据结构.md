---
title: "Java 中的数据结构"
date: 2023-01-18T01:21:25+08:00
slug: ""
description: ""
keywords: []
draft: false
tags: []
math: false
toc: true
---

## 高性能输入输出
```java
BufferedReader in =new BufferedReader(new InputStreamReader(System.in));
PrintWriter out = new PrintWriter(System.out);
```

## 获取输入
```java
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        while (in.hasNextInt()) {
            int a = in.nextInt();
            int b = in.nextInt();
            System.out.println(a + b);
        }
    }
}
```
## 格式化输出
```java
// 保留两位小数
System.out.printf("%.2f%n", divisor*1.0/a);
```

## Comparator
Java 中的容器在排序时都要使用到比较器
```java
Comparator<Integer> comparator = new Comparator<>() {
    @Override
    public int compare(Integer num1, Integer num2) {
        return num2 - num1;
    }
};
```
