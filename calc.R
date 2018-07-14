#오칙연산
1+1
a <- 1
a
b <- 2
b
a+b
vec01 <- c(1,2,3,7)
vec01
vec02 <- c(1:5)
vec02
vec03 <- seq(1,5)
vec03
vec04 <- 1:5
vec04
vec05 <- seq(1,10, by=2)
vec05
class(vec05)
vec06 <- c("안","녕")
vec06
class(vec06)
vec06 <- 1:3
mean(vec06)
class(vec06)
x <- c(1:3)
x
mean(x)
max(x)
min(x)
##5+7 더하기 로직을 구하시오
x <- 5
y <- 7
##5+7 더하기 로직을 식까지 보이도록 구하시오
op <- "+"
eq <- "="
cat(x,"+",y,"=",x+y)
## 계산기 로직을 구하시오
plus <- function(x,y){return(x+y)}
plus(9,2)
minus <- function(x,y){return(x-y)}
minus(9,2)
multi <- function(x,y){return(x*y)}
multi(9,2)
divid <- function(x,y){return(x%/%y)}
divid(9,2)
remainder <- function(x,y){return(x%%y)}
remainder(9,2)
## if -else 구문

#if(op="+")print("plus") else
#if(op="-")print("minus") else
#if(op="*")print("multi") else
#if(op="/")print("divid") else
#if(op="%")print("remainder") else
#print("error)
op <- "+"
x <- 6
y <- 3
cat(
  x,
  op,
  y,
  "=",
switch(
  op,
  "+"= tostring(x + y),
  "-"= tostring(x - y),
  "*"= tostring(x * y),
  "/"= tostring(x %/% y),
  "%"= tostring(x %% y),
))
## if - else 구
op <- "+"
x <- 6
y <- 3
if(op=="+")print(x + y) else
if(op=="-")print(x - y) else
if(op=="*")print(x * y) else
if(op=="/")print(x %/% y) else
if(op=="%")print(x %% y) else
print("error")


## assignment <- :할당
## branch : 분기문
## loop : 반복문 if, swich

## if - else 구문 :: 함수 만들기 전
x <- 20
op <- "+"
y <- 3
if(op=="+")cat(x,op,y,"=",x+y)else
if(op=="-")cat(x,op,y,"=",x-y)else
if(op=="*")cat(x,op,y,"=",x*y)else
if(op=="/")cat(x,op,y,"=",x%/%y)else
if(op=="%")cat(x,op,y,"=",x%%y)else
  print("error")

## swich 구문 :: 함수 만들기 전
x <- 20
op <- "+"
y <- 3
switch(
  op,
  "+"=cat(x,op,y,"=",x+y),
  "-"=cat(x,op,y,"=",x-y),
  "*"=cat(x,op,y,"=",x*y),
  "/"=cat(x,op,y,"=",x%/%y),
  "%"=cat(x,op,y,"=",x%%y),
  "error"
)

## if - else 구문 :: 함수
calc <- function(x,op,y){
  res <- if(op=="+")x+y else
  if(op=="-")x-y else
  if(op=="*")x*y else
  if(op=="/")x%/%y else
  if(op=="%")x%%y else
    "error"
  return(cat(x,op,y,"=",res))
}
calc(4,"-",2)

## swich 구문 :: 함수
calc <- function(x,op,y){
  res <- switch(
  op,
  "+"=x+y,
  "-"=x-y,
  "*"=x*y,
  "/"=x%/%y,
  "%"=x%%y,
  "error"
  )
return(cat(x,op,y,"=",res))
}
calc(4,"-",2)

## 성적표
# kor, eng, math, 총점, 평균
# grade(80,80,80)
# 총점:240 평균:80
grade <- function(kor,eng,math){
  sum <- kor+eng+math
  avg <- sum/3
  return(cat("총점:",sum,"평균:",avg))
}
grade(50,60,70)

## 성적표
# kor, eng, math, 총점, 평균
# grade(80,80,80)
# 총점:240 평균:80
# if - else, switch
# 평균 90 이상 A, 80 이상 B, 70 이상 C, 60 이상 D, 50 이상 E, 그밖이면 F
grade <- function(kor,eng,math){
  avg <- (kor+eng+math)%/%3
  res <- if(avg>=90)"A" else
         if(avg>=80)"B" else
         if(avg>=70)"C" else 
         if(avg>=60)"D" else
         if(avg>=50)"E"else  
           "F"
  return(cat(res))
}
grade(80,80,80)

grade <- functin(kor,eng,math){
  avg <- (kor+eng+math)%/%3
  res <- switch(
          tostring(avg%/%10),
          '10'="A",
          '9'="A",
          '8'="B",
          '7'="C",
          '6'="D",
          '5'="E",
          "F"
  )
  return(cat(res))
}













