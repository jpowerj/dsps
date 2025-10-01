(sec-5-9)=
# 5.9 The Multinomial Distributions

(sec-5-9-0)=
# Overview

*Many times we observe data that can assume three or more possible values. The family of multinomial distributions is an extension of the family of binomial distributions to handle these cases. The multinomial distributions are multivariate distributions.*

(sec-5-9-1)=
# 5.9.1 Definition and Derivation of Multinomial Distributions

## Example 5.9.1: Blood Types

In Example 1.8.4 on page 34, we discussed human blood types, of which
there are four: O, A, B, and AB. If a number of people are chosen at random, we
might be interested in the probability of obtaining certain numbers of each blood
type. Such calculations are used in the courts during paternity suits.  
In general, suppose that a population contains items of k different types (k ≥ 2)
and that the proportion of the items in the population that are of type i is pi

(i = 1, . . . , k). It is assumed that pi > 0 for i = 1, . . . , k, and
 k
i=1 pi
= 1. Let p =
(p1, . . . , pk) denote the vector of these probabilities.
Next, suppose that n items are selected at random from the population, with
replacement, and let Xi denote the number of selected items that are of type i
(i = 1, . . . , k). Because the n items are selected from the population at random with
replacement, the selections will be independent of each other. Hence, the probability
that the first item will be of type i1, the second item of type i2, and so on, is simply
pi1pi2 . . . pin
. Therefore, the probability that the sequence of n outcomes will consist
of exactly x1 items of type 1, x2 items of type 2, and so on, selected in a particular
prespecified order, is p
x1
1 p
x2
2 . . .p
xk
k . It follows that the probability of obtaining exactly
xi items of type i (i = 1, . . . , k) is equal to the probability p
x1
1 p
x2
2 . . .p
xk
k multiplied by
the total number of different ways in which the order of the n items can be specified.
From the discussion that led to the definition of multinomial coefficients (Definition
1.9.1), it follows that the total number of different ways in which n items can be
arranged when there are xi items of type i (i = 1, . . . , k) is given by the multinomial
coefficient


n
x1, . . . , xk
 
= n!
x1!x2! . . . xk!
.
In the notation of multivariate distributions, letX = (X1, . . . ,Xk) denote the random
vector of counts, and let x = (x1, . . . , xk) denote a possible value for that random
vector. Finally, let f (x|n, p) denote the joint p.f. of X. Then
f (x|n, p) = Pr(X = x) = Pr(X1 = x1, . . . , Xk

## Definition 5.9.1: Multinomial Distributions

A discrete random vector X = (X1, . . . , Xk) whose p.f.
is given by Eq. (5.9.1) has the multinomial distribution with parameters n and p =
(p1, . . . , pk).

## Example 5.9.2: Attendance at a Baseball Game

Suppose that 23 percent of the people attending a
certain baseball game live within 10 miles of the stadium, 59 percent live between
10 and 50 miles from the stadium, and 18 percent live more than 50 miles from
the stadium. Suppose also that 20 people are selected at random from the crowd
attending the game. We shall determine the probability that seven of the people
selected live within 10 miles of the stadium, eight of them live between 10 and 50
miles from the stadium, and five of them live more than 50 miles from the stadium.
We shall assume that the crowd attending the game is so large that it is irrelevant
whether the 20 people are selected with or without replacement. We can therefore
assume that they were selected with replacement. It then follows from Eq. (5.9.1)
that the required probability is

## Example 5.9.3: Blood Types

Berry and Geisser (1986) estimate the probabilities of the four blood
types in Table 5.3 based on a sample of 6004 white Californians that was analyzed by
Grunbaum et al. (1978). Suppose that we will select two people at random from this
population and observe their blood types.What is the probability that they will both
have the same blood type? The event that the two people have the same blood type
is the union of four disjoint events, each of which is the event that the two people




 both have one of the four different blood types. Each of these events has probability 2
2,0,0,0
 
times the square of one of the four probabilities. The probability that we want
is the sum of the probabilities of the four events:


2
2, 0, 0, 0
 
(0.3602 + 0.1232 + 0.0382 + 0.4792) = 0.376.  
Relation between the Multinomial and Binomial Distributions
When the population being sampled contains only two different types of items,
that is, when k = 2, each multinomial distribution reduces to essentially a binomial
distribution. The precise form of this relationship is as follows.

## Table 5.3

Estimated probabilities of blood
types for white Californians
A B AB O
0.360 0.123 0.038 0.479

## Theorem 5.9.1

Suppose that the random vector X = (X1, X2) has the multinomial distribution with
parameters n and p = (p1, p2).ThenX1 has the binomial distribution with parameters
n and p1, and X2 = n − X1.
Proof It is clear from the definition of multinomial distributions that X2 = n − X1
and p2 = 1− p1. Therefore, the random vector X is actually determined by the single
random variable X1. From the derivation of the multinomial distribution, we see that
X1 is the number of items of type 1 that are selected if n items are selected from a
population consisting of two types of items. If we call items of type 1 “success,” then
X1 is the number of successes in n Bernoulli trials with probability of success on each
trial equal to p1. It follows that X1 has the binomial distribution with parameters n
and p1.
The proof of Theorem 5.9.1 extends easily to the following result.

## Corollary 5.9.1

Suppose that the random vector X = (X1, . . . , Xk) has the multinomial distribution
with parameters n and p = (p1, . . . , pk). The marginal distribution of each variable
Xi (i = 1, . . . , k) is the binomial distribution with parameters n and pi .
Proof Choose one i from 1, . . . , k, and define success to be the selection of an item
of type i. Then Xi is the number of successes in n Bernoulli trials with probability of
sucess on each trial equal to pi .
A further generalization of Corollary 5.9.1 is that the marginal distribution of the
sum of some of the coordinates of a multinomial vector has a binomial distribution.

The proof is left to Exercise 1 in this section.

## Corollary 5.9.2

Suppose that the random vector X = (X1, . . . , Xk) has the multinomial distribution
with parameters n and p = (p1, . . . , pk) with k > 2. Let   < k, and let i1, . . . , i  be
distinct elements of the set {1, . . . , k}. The distribution of Y = Xi1
+ . . . + Xi 
is the
binomial distribution with parameters n and pi1
+ . . . + pi 
.
336 Chapter 5 Special Distributions
As a final note, the relationship between Bernoulli and binomial distributions
extends to multinomial distributions. The Bernoulli distribution with parameter p is
the same as the binomial distribution with parameters 1 and p. However, there is no
separate name for a multinomial distribution with first parameter n = 1. A random
vector with such a distribution will consist of a single 1 in one of its coordinates and
k − 1 zeros in the other coordinates. The probability is pi that the ith coordinate is
the 1. A k-dimensional vector seems an unwieldy way to represent a random object
that can take only k different values. A more common representation would be as
a single discrete random variable X that takes one of the k values 1, . . . , k with
probabilities p1, . . . , pk, respectively. The univarite distribution just described has
no famous name associated with it; however, we have just shown that it is closely
related to the multinomial distribution with parameters 1 and (p1, . . . , pk).
Means, Variances, and Covariances
The means, variances, and covaraiances of the coordinates of a multinomial random
vector are given by the next result.
Theorem
5.9.2
Means, Variances, and Covariances. Let the random vector X have the multinomial
distribution with parameters n and p. The means and variances of the coordinates of
X are
E(Xi) = npi and Var(Xi) = npi(1− pi) for i = 1, . . . , k. (5.9.2)
Also, the covariances between the coordinates are
Cov(Xi, Xj )=−npipj . (5.9.3)
Proof Corollary 5.9.1 says that the marginal distribution of each component Xi is
the binomial distribution with parameters n and pi . Eq. 5.9.2 follows directly from
this fact.
Corollary 5.9.2 says that Xi
+ Xj has the binomial distribution with parameters
n and pi
+ pj . Hence,
Var(Xi
+ Xj ) = n(pi
+ pj )(1− pi
− pj ). (5.9.4)
According to Theorem 4.6.6, it is also true that
Var(Xi
+ Xj ) = Var(Xi) + Var(Xj ) + 2 Cov(Xi, Xj )
= npi(1− pi) + npj (1− pj ) + 2 Cov(Xi, Xj ). (5.9.5)
Equate the right sides of (5.9.4) and (5.9.5), and solve for Cov(Xi, Xj ). The result is
(5.9.3).
Note: Negative Covariance Is Natural for Multinomial Distributions. The negative
covariance between different coordinates of a multinomial vector is natural since
there are only n selections to be distributed among the k coordinates of the vector. If
one of the coordinates is large, at least some of the others have to be small because
the sum of the coordinates is fixed at n.

# Summary

Multinomial distributions extend binomial distributions to counts of more than two
possible outcomes.The ith coordinate of a vector having the multinomial distribution
5.10 The Bivariate Normal Distributions 337
with parameters n and p = (p1, . . . , pk) has the binomial distribution with parameters
n and pi for i = 1, . . . , k. Hence, the means and variances of the coordinates of
a multinomial vector are the same as those of a binomial random variable. The
covariance between the ith and jth coordinates is −npipj .

# Exercises

1. Prove Corollary 5.9.2.
2. Suppose that F is a continuous c.d.f. on the real line,
and let α1 and α2 be numbers such that F(α1) = 0.3 and
F(α2) = 0.8. If 25 observations are selected at random
from the distribution for which the c.d.f. is F, what is the
probability that six of the observed values will be less than
α1, 10 of the observed values will be between α1 and α2,
and nine of the observed values will be greater than α2?
3. If five balanced dice are rolled, what is the probability
that the number 1 and the number 4 will appear the same
number of times?
4. Suppose that a die is loaded so that each of the numbers
1, 2, 3, 4, 5, and 6 has a different probability of appearing
when the die is rolled. For i = 1, . . . , 6, let pi denote
the probability that the number i will be obtained, and
suppose that p1 = 0.11, p2 = 0.30, p3 = 0.22, p4 = 0.05,
p5 = 0.25, and p6 = 0.07. Suppose also that the die is to
be rolled 40 times. Let X1 denote the number of rolls
for which an even number appears, and let X2 denote
the number of rolls for which either the number 1 or
the number 3 appears. Find the value of Pr(X1 = 20 and
X2 = 15).
5. Suppose that 16 percent of the students in a certain
high school are freshmen, 14 percent are sophomores, 38
percent are juniors, and 32 percent are seniors. If 15 students
are selected at random from the school, what is the
probability that at least eight will be either freshmen or
sophomores?
6. In Exercise 5, let X3 denote the number of juniors
in the random sample of 15 students, and let X4 denote
the number of seniors in the sample. Find the value of
E(X3 − X4) and the value of Var(X3 − X4).
7. Suppose that the random variables X1, . . . , Xk are independent
and that Xi has the Poisson distribution with
mean λi (i = 1, . . . , k). Show that for each fixed positive
integer n, the conditional distribution of the random
vector X = (X1, . . . , Xk), given that
 k
i=1 Xi
= n,
is the multinomial distribution with parameters n and

for i = 1, . . . , k.
8. Suppose that the parts produced by a machine can have
three different levels of functionality: working, impaired,
defective. Let p1, p2, and p3 = 1− p1 − p2 be the probabilities
that a part is working, impaired, and defective,
respectively. Suppose that the vector p = (p1, p2) is unknown
but has a joint distribution with p.d.f.

Suppose that we observe 10 parts that are conditionally
independent given p, and among those 10 parts, eight
are working and two are impaired. Find the conditional
p.d.f. of p given the observed parts. Hint: You might find
Eq. (5.8.2) helpful.


