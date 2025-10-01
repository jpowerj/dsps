(sec-4-6)=
# 4.6 Covariance and Correlation

(sec-4-6-0)=
# Overview

*When we are interested in the joint distribution of two random variables, it is useful to have a summary of how much the two random variables depend on each other. The covariance and correlation are attempts to measure that dependence, but they only capture a particular type of dependence, namely linear dependence.*

(sec-4-6-1)=
# 4.6.1 Covariance

:::: {prf:example} Test Scores
:label: exm-4-6-1
:enumerator: 4.6.1
:::{.head}
## Example 4.6.1: Test Scores
:::

When applying for college, high school students often take a number of
standardized tests. Consider a particular student who will take both a verbal and a
quantitative test. Let X be this student’s score on the verbal test, and let Y be the
same student’s score on the quantitative test. Although there are students who do
much better on one test than the other, it might still be reasonable to expect that a
student who does very well on one test to do at least a little better than average on
the other. We would like to find a numerical summary of the joint distribution of X
and Y that reflects the degree to which we believe a high or low score on one test will
be accompanied by a high or low score on the other test.  

::::

When we consider the joint distribution of two random variables, the means, the
medians, and the variances of the variables provide useful information about their
marginal distributions. However, these values do not provide any information about
the relationship between the two variables or about their tendency to vary together
rather than independently. In this section and the next one, we shall introduce
summaries of a joint distribution that enable us to measure the association between
two random variables, determine the variance of the sum of an arbitrary number of
dependent random variables, and predict the value of one random variable by using
the observed value of some other related variable.

:::: {prf:definition} Covariance
:label: def-4-6-1
:enumerator: 4.6.1
:::{.head}
## Definition 4.6.1: Covariance
:::

Let X and Y be random variables having finite means. Let E(X) = μX
and E(Y) = μY The covariance of X and Y , which is denoted by Cov(X, Y ), is defined
as
Cov(X, Y ) = E[(X − μX)(Y − μY )], (4.6.1)
if the expectation in Eq. (4.6.1) exists.

::::

It can be shown (see Exercise 2 at the end of this section) that if both X and Y
have finite variance, then the expectation in Eq. (4.6.1) will exist and Cov(X, Y ) will
be finite. However, the value of Cov(X, Y ) can be positive, negative, or zero.

## Example 4.6.2: Test Scores

Let X and Y be the test scores in Example 4.6.1, and suppose that they
have the joint p.d.f.
f (x, y) =
 
2xy + 0.5 for 0 ≤ x ≤ 1 and 0 ≤ y ≤ 1,
0 otherwise.

We shall compute the covariance Cov(X, Y ). First, we shall compute the means μX
and μY of X and Y , respectively. The symmetry in the joint p.d.f. means that X and
Y have the same marginal distribution; hence, μX
= μY . We see that

so that μY
= 7/12 as well. The covariance can be computed using Theorem 4.1.2.
Specifically, we must evaluate the integral

 

y − 7
12
 
(2xy + 0.5) dy dx.
This integral is straightforward, albeit tedious, to compute, and the result is
Cov(X, Y ) = 1/144.  
The following result often simplifies the calculation of a covariance.


## Theorem 4.6.1

For all random variables X and Y such that σ2

Cov(X, Y ) = E(XY) − E(X)E(Y). (4.6.2)

Proof It follows from Eq. (4.6.1) that
Cov(X, Y ) = E(XY − μXY − μYX + μXμY )
= E(XY) − μXE(Y) − μYE(X) + μXμY .
Since E(X) = μX and E(Y) = μY , Eq. (4.6.2) is obtained.

The covariance between X and Y is intended to measure the degree to which
X and Y tend to be large at the same time or the degree to which one tends to be
large while the other is small. Some intution about this interpretation can be gathered
from a careful look at Eq. (4.6.1). For example, suppose that Cov(X, Y ) is positive.
Then $X > \mu_X$ and $Y > \mu_Y$ must occur together and/orX<μX andY <μY must occur
together to a larger extent thanX<μX occurs withY >μY andX>μX occurs with
Y <μY . Otherwise, the mean would be negative. Similarly, if Cov(X, Y ) is negative,
thenX>μX andY <μY must occur together and/orX<μX andY >μY must occur
together to larger extent than the other two inequalities. If Cov(X, Y ) = 0, then the
extent to which X and Y are on the same sides of their respective means exactly
balances the extent to which they are on opposite sides of their means.

(sec-4-6-2)=
# 4.6.2 Correlation

Although Cov(X, Y ) gives a numerical measure of the degree to which X and Y vary
together, the magnitude of Cov(X, Y ) is also influenced by the overall magnitudes of
X and Y . For example, in Exercise 5 in this section, you can prove that Cov(2X, Y ) =
2 Cov(X, Y ). In order to obtain a measure of association between X and Y that is
not driven by arbitrary changes in the scales of one or the other random variable, we
define a slightly different quantity next.
Definition
4.6.2
Correlation. Let X and Y be random variables with finite variances σ2
X and σ2
Y , respectively.
Then the correlation of X and Y , which is denoted by ρ(X, Y), is defined
as follows:
ρ(X, Y) = Cov(X, Y )
σXσY
. (4.6.3)
In order to determine the range of possible values of the correlation ρ(X, Y), we
shall need the following result.

## Theorem 4.6.2: Schwarz Inequality

For all random variables U and V such that E(UV ) exists,
[E(UV )]2 ≤ E(U2)E(V 2). (4.6.4)
If, in addition, the right-hand side of Eq. (4.6.4) is finite, then the two sides of
Eq. (4.6.4) equal the same value if and only if there are nonzero constants a and
b such that aU + bV = 0 with probability 1.
Proof If E(U2) = 0, then Pr(U = 0) = 1. Therefore, it must also be true that Pr(UV =
0) = 1. Hence, E(UV ) = 0, and the relation (4.6.4) is satisfied. Similarly, if E(V 2) = 0,
then the relation (4.6.4) will be satisfied. Moreover, if either E(U2) or E(V 2) is
infinite, then the right side of the relation (4.6.4) will be infinite. In this case, the
relation (4.6.4) will surely be satisfied.
For the rest of the proof, assume that 0<E(U2) <∞ and 0<E(V2) <∞. For
all numbers a and b,
0 ≤ E[(aU + bV )2]= a2E(U2) + b2E(V 2) + 2abE(UV ) (4.6.5)
and
0 ≤ E[(aU − bV )2]= a2E(U2) + b2E(V 2) − 2abE(UV ). (4.6.6)
If we let a = [E(V 2)]1/2 and b = [E(U2)]1/2, then it follows from the relation (4.6.5)
that
E(UV )≥−[E(U2)E(V 2)]1/2. (4.6.7)
It also follows from the relation (4.6.6) that
E(UV ) ≤ [E(U2)E(V 2)]1/2. (4.6.8)

These two relations together imply that the relation (4.6.4) is satisfied.

Finally, suppose that the right-hand side of Eq. (4.6.4) is finite. Both sides of
(4.6.4) equal the same value if and only if the same is true for either (4.6.7) or (4.6.8).
Both sides of (4.6.7) equal the same value if and only if the rightmost expression in
(4.6.5) is 0. This, in turn, is true if and only if E[(aU + bV )2]= 0, which occurs if and
only if aU + bV = 0 with probability 1. The reader can easily check that both sides
of (4.6.8) equal the same value if and only if aU − bV = 0 with probability 1.

A slight variant on Theorem 4.6.2 is the result we want.

## Theorem 4.6.3: Cauchy-Schwarz Inequality

Let X and Y be random variables with finite variance.
Then

Xσ2
Y , (4.6.9)
and
−1≤ ρ(X, Y) ≤ 1. (4.6.10)

Furthermore, the inequality in Eq. (4.6.9) is an equality if and only if there are
nonzero constants a and b and a constant c such that aX + bY = c with probability 1.

Proof Let U = X − μX and V = Y − μY . Eq. (4.6.9) now follows directly from Theorem
4.6.2. In turn, it follows from Eq. (4.6.3) that [ρ(X, Y)]2 ≤ 1 or, equivalently, that
Eq. (4.6.10) holds. The final claim follows easily from the similar claim at the end of
Theorem 4.6.2.

## Definition 4.6.3: Positively / Negatively Correlated / Uncorrelated

It is said that X and Y are positively
correlated if ρ(X, Y) > 0, that X and Y are negatively correlated if ρ(X, Y) < 0, and
that X and Y are uncorrelated if ρ(X, Y) = 0.
It can be seen from Eq. (4.6.3) that Cov(X, Y ) and ρ(X, Y) must have the same
sign; that is, both are positive, or both are negative, or both are zero.

## Example 4.6.3: Test Scores

For the two test scores in Example 4.6.2, we can compute the correlation
ρ(X, Y). The variances of X and Y are both equal to 11/144, so the correlation is
ρ(X, Y) = 1/11.  

(sec-4-6-3)=
# 4.6.3 Properties of Covariance and Correlation

We shall now present four theorems pertaining to the basic properties of covariance
and correlation.
The first theorem shows that independent random variables must be uncorrelated.

## Theorem 4.6.4

If X and Y are independent random variables with 0<σ2
X <∞and 0<σ2
Y <∞, then
Cov(X, Y ) = ρ(X, Y) = 0.
Proof If X and Y are independent, then E(XY) = E(X)E(Y). Therefore, by Eq.
(4.6.2), Cov(X, Y ) = 0. Also, it follows that ρ(X, Y) = 0.
The converse of Theorem 4.6.4 is not true as a general rule. Two dependent
random variables can be uncorrelated. Indeed, even though Y is an explicit function
of X, it is possible that ρ(X, Y) = 0, as in the following examples.

## Example 4.6.4: Dependent but Uncorrelated Random Variables

Suppose that the random variable X
can take only the three values−1, 0, and 1, and that each of these three values has the
same probability. Also, let the random variable Y be defined by the relation Y = X2.
We shall show that X and Y are dependent but uncorrelated.

Figure 4.10 The shaded
region is where the joint p.d.f.
of (X, Y ) is constant and
nonzero in Example 4.6.5.
The vertical line indicates the
values of Y that are possible
when X = 0.5.

In this example, X and Y are clearly dependent, since Y is not constant and the
value of Y is completely determined by the value of X. However,
E(XY) = E(X3) = E(X) = 0,
because X3 is the same random variable as X. Since E(XY) = 0 and E(X)E(Y) = 0,
it follows from Theorem 4.6.1 that Cov(X, Y ) = 0 and that X and Y are uncorrelated.

## Example 4.6.5: Uniform Distribution Inside a Circle

Let (X, Y ) have joint p.d.f. that is constant on
the interior of the unit circle, the shaded region in Fig. 4.10. The constant value of
the p.d.f. is one over the area of the circle, that is, 1/(2π). It is clear that X and Y
are dependent since the region where the joint p.d.f. is nonzero is not a rectangle.
In particular, notice that the set of possible values for Y is the interval (−1, 1), but
when X = 0.5, the set of possible values for Y is the smaller interval (−0.866, 0.866).
The symmetry of the circle makes it clear that both X and Y have mean 0. Also, it is
not difficult to see that E(XY) =
   
xyf (x, y)dxdy = 0.

To see this, notice that the
integral of xy over the top half of the circle is exactly the negative of the integral of xy
over the bottom half. Hence, Cov(X, Y ) = 0, but the random variables are dependent.
 
The next result shows that if Y is a linear function of X, then X and Y must be
correlated and, in fact, $|\rho(X, Y)| = 1$.

## Theorem 4.6.5

Suppose that X is a random variable such that 0<σ2
X <∞, and Y = aX + b for some
constants a and b, where a  = 0. Ifa >0, then ρ(X, Y) = 1. Ifa <0, then ρ(X, Y)=−1.
Proof If Y = aX + b, then μY
= aμX
+ b and Y − μY
= a(X − μX). Therefore, by
Eq. (4.6.1),
Cov(X, Y ) = aE[(X − μX)2]= aσ2
X.

Since σY
= |a|σX, the theorem follows from Eq. (4.6.3).

There is a converse to Theorem 4.6.5. That is, |ρ(X, Y)| = 1 implies that X and
Y are linearly related. (See Exercise 17.) In general, the value of ρ(X, Y) provides a
measure of the extent to which two random variables X and Y are linearly related. If the joint distribution of X and Y is relatively concentrated around a straight line in
the xy-plane that has a positive slope, then ρ(X, Y) will typically be close to 1. If the
joint distribution is relatively concentrated around a straight line that has a negative
slope, then ρ(X, Y) will typically be close to −1.We shall not discuss these concepts
further here, but we shall consider them again when the bivariate normal distribution
is introduced and studied in Sec. 5.10.

## Note: Correlation Measures Only Linear Relationship

A large value of $|\rho(X, Y)|$ means that X and Y are close to being linearly related and hence are closely related.
But a small value of |ρ(X, Y)| does not mean that X and Y are not close to being
related. Indeed, @exm-4-6-4 illustrates random variables that are functionally related but have 0 correlation.

We shall now determine the variance of the sum of random variables that are
not necessarily independent.

## Theorem 4.6.6

If X and Y are random variables such that Var(X) <∞and Var(Y ) <∞, then
Var(X + Y) = Var(X) + Var(Y ) + 2 Cov(X, Y ). (4.6.11)
Proof Since E(X + Y) = μX
+ μY , then
Var(X + Y) = E[(X + Y − μX
− μY )2]
= E[(X − μX)2 + (Y − μY )2 + 2(X − μX)(Y − μY )]
= Var(X) + Var(Y ) + 2 Cov(X, Y ).
For all constants a and b, it can be shown that Cov(aX, bY ) = ab Cov(X, Y )
(see Exercise 5 at the end of this section). The following then follows easily from @thm-4-6-6.

## Corollary 4.6.1

Let a, b, and c be constants. Under the conditions of @thm-4-6-6,

Var(aX + bY + c) = a2 Var(X) + b2 Var(Y ) + 2ab Cov(X, Y ). (4.6.12)

A particularly useful special case of Corollary 4.6.1 is

Var(X − Y) = Var(X) + Var(Y ) − 2 Cov(X, Y ). (4.6.13)

## Example 4.6.6: Investment Portfolio

Consider, once again, the investor in @exm-4-3-7 trying to choose a portfolio with \$100,000 to invest.

We shall make the same assumptions
about the returns on the two stocks, except that now we will suppose that the
correlation between the two returns R1 and R2 is −0.3, reflecting a belief that the two
stocks tend to react in opposite ways to common market forces. The variance of a
portfolio of s1 shares of the first stock, s2 shares of the second stock, and s3 dollars
invested at 3.6% is now
Var(s1R1 + s2R2 + 0.036s3) = 55s2


We continue to assume that (4.3.2) holds.

Figure 4.11 shows the relationship between
the mean and variance of the efficient portfolios in this example and Example 4.3.7.
Notice how the variances are smaller in this example than in Example 4.3.7. This is
due to the fact that the negative correlation lowers the variance of a linear combination
with positive coefficients.  
Theorem 4.6.6 can also be extended easily to the variance of the sum of n random
variables, as follows.

Figure 4.11 Mean and variance
of efficient investment
portfolios.
Mean portfolio return

## Theorem 4.6.7

If X1, . . . , Xn are random variables such that Var(Xi) <∞for i = 1, . . . , n, then


Proof For every random variable Y , Cov(Y, Y ) = Var(Y ). Therefore, by using the
result in Exercise 8 at the end of this section, we can obtain the following relation:
Var
 

We shall separate the final sum in this relation into two sums: (i) the sum of those
terms for which i = j and (ii) the sum of those terms for which i  = j . Then, if we use
the fact that Cov(Xi, Xj ) = Cov(Xj, Xi), we obtain the relation



The following is a simple corrolary to @thm-4-6-7.

## Corollary 4.6.2

If X1, . . . , Xn are uncorrelated random variables (that is, if Xi and Xj are uncorrelated
whenever i  = j ), then

Var(Xi). (4.6.15)

Corollary 4.6.2 extends Theorem 4.3.5 on page 230, which states that (4.6.15) holds
if X1, . . . , Xn are independent random variables.

## Note: In General, Variances Add Only for Uncorrelated Random Variables

The variance of a sum of random variables should be calculated using @thm-4-6-7 in general. Corollary 4.6.2 applies only for uncorrelated random variables.

(sec-4-6-4)=
# Summary

The covariance ofX and Y is Cov(X, Y ) = E{[X − E(X)][Y − E(Y)]}.The correlation
is ρ(X, Y) = Cov(X, Y )/[Var(X) Var(Y )]1/2, and it measures the extent to which X
and Y are linearly related. Indeed, X and Y are precisely linearly related if and only
if |ρ(X, Y)| = 1. The variance of a sum of random variables can be expressed as the
sum of the variances plus two times the sum of the covariances. The variance of a
linear function is Var(aX + bY + c) = a2 Var(X) + b2 Var(Y ) + 2ab Cov(X, Y ).

(sec-4-6-5)=
# Exercises

1. Suppose that the pair (X, Y ) is uniformly distributed on
the interior of a circle of radius 1. Compute ρ(X, Y).
2. Prove that if Var(X) < ∞ and Var(Y ) < ∞, then
Cov(X, Y ) is finite. Hint: By considering the relation
[(X − μX) ± (Y − μY )]2 ≥ 0, show that
|(X − μX)(Y − μY )| ≤ 1
2
[(X − μX)2 + (Y − μY )2].
3. Suppose that X has the uniform distribution on the
interval [−2, 2] and Y = X6. Show that X and Y are uncorrelated.
4. Suppose that the distribution of a random variable X is
symmetric with respect to the point x = 0, 0<E(X4) <∞,
and Y = X2. Show that X and Y are uncorrelated.
5. For all random variables X and Y and all constants a,
b, c, and d, show that
Cov(aX + b, cY + d) = ac Cov(X, Y ).
6. LetX and Y be random variables such that 0<σ2
X <∞
and 0 <σ2
Y <∞. Suppose that U = aX + b and V = cY +
d, where a  = 0 and c  = 0. Show that ρ(U, V ) = ρ(X, Y) if
ac > 0, and ρ(U, V )=−ρ(X, Y) if ac < 0.
7. Let X, Y , and Z be three random variables such that
Cov(X, Z) and Cov(Y, Z) exist, and let a, b, and c be
arbitrary given constants. Show that
Cov(aX + bY + c, Z) = a Cov(X, Z) + b Cov(Y, Z).
8. Suppose that X1, . . . , Xm and Y1, . . . , Yn are random
variables such that Cov(Xi, Yj ) exists for i = 1, . . . , m and
j = 1, . . . , n, and suppose that a1, . . . , am and b1, . . . , bn
are constants. Show that

9. Suppose that X and Y are two random variables, which
may be dependent, and Var(X) = Var(Y ). Assuming that
0 < Var(X + Y)<∞and 0 < Var(X − Y)<∞, show that
the random variables X + Y and X − Y are uncorrelated.

10. Suppose that X and Y are negatively correlated. Is
Var(X + Y) larger or smaller than Var(X − Y)?

11. Show that two random variables X and Y cannot possibly
have the following properties: E(X) = 3, E(Y) = 2,
E(X2) = 10, E(Y2) = 29, and E(XY) = 0.

12. Suppose that X and Y have a continuous joint distribution
for which the joint p.d.f. is as follows:

0 otherwise.
Determine the value of Var(2X − 3Y + 8).

13. Suppose that X and Y are random variables such that
Var(X) = 9, Var(Y ) = 4, and ρ(X, Y)=−1/6. Determine
(a) Var(X + Y) and (b) Var(X − 3Y + 4).

14. Suppose that X, Y , and Z are three random variables
such that Var(X) = 1, Var(Y ) = 4, Var(Z) = 8, Cov(X, Y )
= 1, Cov(X, Z)=−1, and Cov(Y, Z) = 2. Determine

* (a) $\text{Var}[X + Y + Z]$ and
* (b) $\text{Var}[3X − Y − 2Z + 1]$

15. Suppose that X1, . . . , Xn are random variables such
that the variance of each variable is 1 and the correlation
between each pair of different variables is 1/4. Determine
Var(X1 + . . . + Xn).

16. Consider the investor in @exm-4-2-3. Suppose that the returns R1 and R2 on the two stocks
have correlation −1. A portfolio will consist of s1 shares
of the first stock and s2 shares of the second stock where
s1, s2 ≥ 0. Find a portfolio such that the total cost of the
portfolio is $6000 and the variance of the return is 0.

Why is this situation unrealistic?

17. Let X and Y be random variables with finite variance.
Prove that |ρ(X, Y)| = 1 implies that there exist constants
a, b, and c such that aX + bY = c with probability 1.

Hint: Use @thm-4-6-2 with $U = X − \mu_X$ and $V = Y − \mu_Y$.

18. Let X and Y have a continuous distribution with joint
p.d.f.
f (x, y) =
 
x + y for 0 ≤ x ≤ 1 and 0 ≤ y ≤ 1,
0 otherwise.

Compute the covariance Cov(X, Y ).
