(sec-4-4)=
# 4.4 Moments

(sec-4-4-0)=
# Overview

*For a random variable $X$, the means of powers $X^k$ (called moments) for $k > 2$ have useful theoretical properties, and some of them are used for additional summaries of a distribution. The moment generating function is a related tool that aids in deriving distributions of sums of independent random variables and limiting properties of distributions.*

(sec-4-4-1)=
# 4.4.1 Existence of Moments

For each random variable X and every positive integer k, the expectation E(Xk) is
called the kth moment of X. In particular, in accordance with this terminology, the
mean of X is the first moment of X.
It is said that the kth moment exists if and only if E(|X|k) <∞. If the random
variable X is bounded, that is, if there are finite numbers a and b such that Pr(a ≤
X ≤ b) = 1, then all moments of X must necessarily exist. It is possible, however, that
all moments ofX exist even thoughX is not bounded. It is shown in the next theorem
that if the kth moment of X exists, then all moments of lower order must also exist.

:::: {prf:theorem}
:label: thm-4-4-1
:enumerator: 4.4.1
:::{.head}
## Theorem 4.4.1
:::

If E(|X|k) <∞ for some positive integer k, then E(|X|j) <∞ for every positive
integer j such that j <k.

::: {.proof}

Proof We shall assume, for convenience, that the distribution of X is continuous and
the p.d.f. is f . Then

≤ Pr(|X| ≤ 1) + E(|X|k).
By hypothesis, E(|X|k) <∞. It therefore follows that E(|X|j) <∞. A similar proof
holds for a discrete or a more general type of distribution.

:::
::::

In particular, it follows from @thm-4-4-1 that if E(X2) <∞, then both the
mean of X and the variance of X exist. Theorem 4.4.1 extends to the case in which j and k are arbitrary positive numbers rather than just integers. (See Exercise 15 in
this section.)

We will not make use of such a result in this text, however.

# Central Moments

Suppose that X is a random variable for which E(X) = μ. For
every positive integer k, the expectation E[(X − μ)k] is called the kth central moment
of X or the kth moment of X about the mean. In particular, in accordance with this
terminology, the variance of X is the second central moment of X.
For every distribution, the first central moment must be 0 because
E(X − μ) = μ − μ = 0.
Furthermore, if the distribution of X is symmetric with respect to its mean μ, and if
the central moment E[(X − μ)k] exists for a given odd integer k, then the value of
E[(X − μ)k] will be 0 because the positive and negative terms in this expectation will
cancel one another.
Example
4.4.1
A Symmetric p.d.f. Suppose that X has a continuous distribution for which the p.d.f.
has the following form:
f (x) = ce
−(x−3)2/2 for −∞< x <∞.
We shall determine the mean of X and all the central moments.
It can be shown that for every positive integer k,
  ∞
−∞
|x|ke
−(x−3)2/2 dx <∞.
Hence, all the moments ofX exist. Furthermore, since f (x) is symmetric with respect
to the point x = 3, then E(X) = 3. Because of this symmetry, it also follows that
E[(X − 3)k]= 0 for every odd positive integer k. For even k = 2n, we can find a
recursive formula for the sequence of central moments. First, let y = x − μ in all
the integral fomulas. Then, for n ≥ 1, the 2nth central moment is
m2n
=
  ∞
−∞
y2nce
−y2/2dy.
Use integration by parts with u = y2n−1 and dv = ye
−y2/2dy. It follows that du =
(2n − 1)y2n−2dy and v =−e
−y2/2. So,
m2n
=
  ∞
−∞
udv = uv|∞
y=−∞ −
  ∞
−∞
vdu
= −y2n−1e
−y2/2
   
∞
y=−∞
+ (2n − 1)
  ∞
−∞
y2n−2ce
−y2/2dy
= (2n − 1)m2(n−1).
Because y0 = 1, m0 is just the integral of the p.d.f.; hence, m0 = 1. It follows that
m2n
="n
i=1(2i − 1) for n = 1, 2, . . .. So, for example, m2 = 1, m4 = 3, m6 = 15, and so
on.  
Skewness In Example 4.4.1, we saw that the odd central moments are all 0 for a
distribution that is symmetric. This leads to the following distributional summary that
is used to measure lack of symmetry.
Definition
4.4.1
Skewness. Let X be a random variable with mean μ, standard deviation σ, and finite
third moment. The skewness of X is defined to be E[(X − μ)3]/σ 3.
236 Chapter 4 Expectation
The reason for dividing the third central moment by σ3 is to make the skewness
measure only the lack of symmetry rather than the spread of the distribution.
Example
4.4.2
Skewness of Binomial Distributions. Let X have the binomial distribution with parameters
10 and 0.25. The p.f. of this distribution appears in Fig. 4.8. It is not difficult to
see that the p.f. is not symmetric. The skewness can be computed as follows: First,
note that the mean is μ = 10 × 0.25 = 2.5 and that the standard deviation is
σ = (10 × 0.25 × 0.75)
1/2 = 1.369.
Second, compute
E[(X − 2.5)3]= (0 − 2.5)3


10
0
 
0.250 0.7510 + . . . + (10 − 2.5)3


10
10
 
0.2500 0.750
= 0.9375.
Finally, the skewness is
0.9375
1.3693
= 0.3652.
For comparison, the skewness of the binomial distribution with parameters 10 and 0.2
is 0.4743, and the skewness of the binomial distribution with parameters 10 and 0.3
is 0.2761. The absolute value of the skewness increases as the probability of success
moves away from 0.5. It is straightforward to show that the skewness of the binomial
distribution with parameters n and p is the negative of the skewness of the binomial
distribution with parameters n and 1− p. (See Exercise 16 in this section.)

(sec-4-4-2)=
# 4.4.2 Moment Generating Functions

We shall now consider a different way to characterize the distribution of a random
variable that is more closely related to its moments than to where its probability is
distributed.

Definition
4.4.2
Moment Generating Function. Let X be a random variable. For each real number t ,
define
ψ(t) = E(etX). (4.4.1)
The function ψ(t) is called the moment generating function (abbreviated m.g.f.) of X.
Note: The Moment Generating Function of X Depends Only on the Distribution
of X. Since the m.g.f. is the expected value of a function of X, it must depend only
on the distribution of X. If X and Y have the same distribution, they must have the
same m.g.f.
If the random variable X is bounded, then the expectation in Eq. (4.4.1) must
be finite for all values of t . In this case, therefore, the m.g.f. of X will be finite for all
values of t . On the other hand, if X is not bounded, then the m.g.f. might be finite for
some values of t and might not be finite for others. It can be seen from Eq. (4.4.1),
however, that for every random variable X, the m.g.f. ψ(t) must be finite at the point
t = 0 and at that point its value must be ψ(0) = E(1) = 1.
The next result explains how the name “moment generating function” arose.
Theorem
4.4.2
LetX be a random variables whose m.g.f. ψ(t) is finite for all values of t in some open
interval around the point t = 0. Then, for each integer n > 0, the nth moment of X,
4.4 Moments 237
E(Xn), is finite and equals the nth derivative ψ(n)(t) at t = 0. That is, E(Xn) = ψ(n)(0)
for n = 1, 2, . . . .
We sketch the proof at the end of this section.
Example
4.4.3
Calculating an m.g.f. Suppose that X is a random variable for which the p.d.f. is as
follows:
f (x) =
 
e
−x for x >0,
0 otherwise.
We shall determine the m.g.f. of X and also Var(X).
For each real number t ,
ψ(t) = E(etX) =
  ∞
0
etxe
−x dx
=
  ∞
0
e(t−1)x dx.
The final integral in this equation will be finite if and only if t < 1. Therefore, ψ(t) is
finite only for t < 1. For each such value of t ,
ψ(t) = 1
1− t
.
Since ψ(t) is finite for all values of t in an open interval around the point t = 0,
all moments of X exist. The first two derivatives of ψ are
ψ
 
(t) = 1
(1− t)2 and ψ
  
(t) = 2
(1− t)3
.
Therefore, E(X) = ψ
 
(0) = 1 and E(X2) = ψ
  
(0) = 2. It now follows that
Var(X) = ψ
  
(sec-4-4-3)=
# 4.4.3 Properties of Moment Generating Functions

We shall now present three basic theorems pertaining to moment generating functions.

Theorem
4.4.3
Let X be a random variable for which the m.g.f. is ψ1; let Y = aX + b, where a and b
are given constants; and let ψ2 denote the m.g.f. of Y . Then for every value of t such
that ψ1(at) is finite,
ψ2(t) = ebtψ1(at). (4.4.2)
Proof By the definition of an m.g.f.,
ψ2(t) = E(etY ) = E[et (aX+b)]= ebtE(eatX) = ebtψ1(at).
Example
4.4.4
Calculating the m.g.f. of a Linear Function. Suppose that the distribution of X is as
specified in Example 4.4.3. We saw that the m.g.f. of X for t < 1 is
ψ1(t) = 1
1− t
.
If Y = 3 − 2X, then the m.g.f. of Y is finite for t > −1/2 and will have the value
ψ2(t) = e3tψ1(−2t) = e3t
1+ 2t
.  
238 Chapter 4 Expectation
The next theorem shows that the m.g.f. of the sum of an arbitrary number of
independent random variables has a very simple form. Because of this property, the
m.g.f. is an important tool in the study of such sums.
Theorem
4.4.4
Suppose that X1, . . . , Xn are n independent random variables; and for i = 1, . . . , n,
letψi denote the m.g.f. ofXi . Let Y = X1+ . . . + Xn, and let the m.g.f. of Y be denoted
by ψ. Then for every value of t such that ψi(t) is finite for i = 1, . . . , n,
ψ(t) =
!n
i=1
ψi(t ). (4.4.3)
Proof By definition,
ψ(t) = E(etY ) = E[et (X1+...+Xn)]= E
 
!n
i=1
etXi
 
.
Since the random variables X1, . . . ,Xn are independent, it follows from Theorem
4.2.6 that
E
 
!n
i=1
etXi

## The Moment Generating Function for the Binomial Distribution

Suppose that
a random variable X has the binomial distribution with parameters n and p. In
Sections 4.2 and 4.3, the mean and the variance ofX were determined by representing
X as the sum of n independent random variables X1, . . . , Xn. In this representation,
the distribution of each variable Xi is as follows:
Pr(Xi
= 1) = p and Pr(Xi
= 0) = 1− p.
We shall now use this representation to determine the m.g.f. of X = X1 + . . . + Xn.
Since each of the random variables X1, . . . , Xn has the same distribution, the
m.g.f. of each variable will be the same. For i = 1, . . . , n, the m.g.f. of Xi is
ψi(t) = E(etXi) = (et) Pr(Xi
= 1) + (1) Pr(Xi
= 0)
= pet + 1− p.
It follows from Theorem 4.4.4 that the m.g.f. of X in this case is
ψ(t) = (pet + 1− p)n. (4.4.4)
Uniqueness of Moment Generating Functions We shall now state one more important
property of the m.g.f. The proof of this property is beyond the scope of this
book and is omitted.

## Theorem 4.4.5

If the m.g.f.’s of two random variables X1 and X2 are finite and identical for all values
of t in an open interval around the point t = 0, then the probability distributions of
X1 and X2 must be identical.

@thm-4-4-5 is the justification for the claim made at the start of this discussion,
namely, that the m.g.f. is another way to characterize the distribution of a random
variable.

## The Additive Property of the Binomial Distribution

Moment generating functions
provide a simple way to derive the distribution of the sum of two independent
binomial random variables with the same second parameter.

## Theorem 4.4.6

If X1 and X2 are independent random variables, and if Xi has the binomial distribution
with parameters ni and p (i = 1, 2), then X1 + X2 has the binomial distribution
with parameters n1 + n2 and p.
Proof L et ψi denote the m.g.f. of Xi for i = 1, 2. It follows from Eq. (4.4.4) that
ψi(t) = (pet + 1− p)ni .
Let ψ denote the m.g.f. of X1 + X2. Then, by Theorem 4.4.4,
ψ(t) = (pet + 1− p)n1+n2.
It can be seen from Eq. (4.4.4) that this function ψ is the m.g.f. of the binomial
distribution with parameters n1+ n2 and p. Hence, byTheorem 4.4.5, the distribution
of X1 + X2 must be that binomial distribution.
Sketch of the Proof of Theorem 4.4.2
First, we indicate why all moments of X are finite. Let t > 0 be such that both ψ(t)
and ψ(−t) are finite. Define g(x) = etx + e
−tx. Notice that
E[g(X)]= ψ(t) + ψ(−t) <∞. (4.4.5)
On every bounded interval of x values, g(x) is bounded. For each integer n > 0, as
|x|→∞, g(x) is eventually larger than |x|n. It follows from these facts and (4.4.5)
that E|Xn| <∞.
Although it is beyond the scope of this book, it can be shown that the derivative
ψ
 
(t) exists at the point t = 0, and that at t = 0, the derivative of the expectation in
Eq. (4.4.1) must be equal to the expectation of the derivative. Thus,
ψ
 
(0) =
 
t=0
= (XetX)t=0 = X.
It follows that
ψ
 
(0) = E(X).

In other words, the derivative of the m.g.f. ψ(t) at t = 0 is the mean of X.
Furthermore, it can be shown that it is possible to differentiate ψ(t) an arbitrary
number of times at the point t = 0. For n = 1, 2, . . . , the nth derivative ψ(n)(0) at
t = 0 will satisfy the following relation:
ψ(n)(0) =
 
dn
dtn
E(etX)

Thus, ψ
 
(0) = E(X), ψ
  
(0) = E(X2), ψ
   
(0) = E(X3), and so on.

Hence, we see that

the m.g.f., if it is finite in an open interval around t = 0, can be used to generate all
of the moments of the distribution by taking derivatives at t = 0.

(sec-4-4-4)=
# 4.4.4 Summary

If the kth moment of a random variable exists, then so does the jth moment for every
j < k. The moment generating function of X, ψ(t) = E(etX), if it is finite for t in a
neighborhood of 0, can be used to find moments of X. The kth derivative of ψ(t) at
t = 0 is E(Xk). The m.g.f. characterizes the distribution in the sense that all random
variables that have the same m.g.f. have the same distribution.

(sec-4-4-5)=
# 4.4.5 Exercises

1. If X has the uniform distribution on the interval [a, b],
what is the value of the fifth central moment of X?
2. If X has the uniform distribution on the interval [a, b],
write a formula for every even central moment of X.
3. Suppose that X is a random variable for which E(X) =
1, E(X2) = 2, and E(X3) = 5. Find the value of the third
central moment of X.
4. Suppose that X is a random variable such that E(X2)
is finite. (a) Show that E(X2) ≥ [E(X)]2. (b) Show that
E(X2) = [E(X)]2 if and only if there exists a constant c
such that Pr(X = c) = 1. Hint: Var(X) ≥ 0.
5. Suppose that X is a random variable with mean μ and
variance σ2, and that the fourth moment of X is finite.
Show that
E[(X − μ)4]≥ σ4.
6. Suppose that X has the uniform distribution on the
interval [a, b]. Determine the m.g.f. of X.
7. Suppose thatXis a random variable for which the m.g.f.
is as follows:
ψ(t) = 1
4
(3et + e
−t ) for −∞< t <∞.
Find the mean and the variance of X.
8. Suppose thatXis a random variable for which the m.g.f.
is as follows:
ψ(t) = et2+3t for −∞< t <∞.
Find the mean and the variance of X.
9. Let X be a random variable with mean μ and variance
σ2, and let ψ1(t) denote the m.g.f. of X for −∞ < t <∞.
Let c be a given positive constant, and let Y be a random
variable for which the m.g.f. is
ψ2(t) = ec[ψ1(t)−1] for −∞< t <∞.
Find expressions for the mean and the variance of Y in
terms of the mean and the variance of X.
10. Suppose that the random variables X and Y are i.i.d.
and that the m.g.f. of each is
ψ(t) = et2+3t for −∞< t <∞.
Find the m.g.f. of Z = 2X − 3Y + 4.
11. Suppose that X is a random variable for which the
m.g.f. is as follows:
ψ(t) = 1
5
et + 2
5
e4t + 2
5
e8t for −∞< t <∞.
Find the probability distribution of X. Hint: It is a simple
discrete distribution.
12. Suppose that X is a random variable for which the
m.g.f. is as follows:
ψ(t) = 1
6
(4 + et + e
−t ) for −∞< t <∞.
Find the probability distribution of X.
13. Let X have the Cauchy distribution (see Example
4.1.8). Prove that the m.g.f. ψ(t) is finite only for t = 0.
14. Let X have p.d.f.
f (x) =
 
x
−2 if x >1,
0 otherwise.
Prove that the m.g.f. ψ(t) is finite for all t ≤ 0 but for no
t > 0.

15. Prove the following extension of Theorem 4.4.1: If
E(|X|a) <∞for some positive number a, then E(|X|b) <
∞for every positive numberb <a. Give the proof for the
case in which X has a discrete distribution.
16. Let X have the binomial distribution with parameters
n and p. Let Y have the binomial distribution with parameters
n and 1− p. Prove that the skewness of Y is the
negative of the skewness of X. Hint: Let Z = n − X and
show that Z has the same distribution as Y .
17. Find the skewness of the distribution in Example 4.4.3.
