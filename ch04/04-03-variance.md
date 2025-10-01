(sec-4-3)=
# 4.3 Variance

(sec-4-3-0)=
# Overview

*Although the mean of a distribution is a useful summary, it does not convey very much information about the distribution. For example, a random variable $X$ with mean 2 has the same mean as the constant random variable $Y$ such that $\Pr(Y = 2) = 1$ even if $X$ is not constant. To distinguish the distribution of $X$ from the distribution of $Y$ in this case, it might be useful to give some measure of how spread out the distribution of $X$ is. The variance of $X$ is one such measure. The standard deviation of $X$ is the square root of the variance. The variance also plays an important role in the approximation methods that arise in @sec-6.

:::: {prf:example} Stock Price Changes
:label: exm-4-3-1
:enumerator: 4.3.1
::: {.head}
## Example 4.3.1: Stock Price Changes
:::

Consider the pricesAand B of two stocks at a time one month in
the future. Assume that A has the uniform distribution on the interval [25, 35] and B
has the uniform distribution on the interval [15, 45]. It is easy to see (from Exercise 1
in Sec. 4.1) that both stocks have a mean price of 30. But the distributions are very
different. For example, A will surely be worth at least 25 while Pr(B < 25) = 1/3.
But B has more upside potential also. The p.d.f.’s of these two random variables are
plotted in Fig. 4.5.  
226 Chapter 4 Expectation
Figure 4.5 The p.d.f.’s of
two uniform distributions
in Example 4.3.1. Both
distributions have mean
equal to 30, but they are
spread out differently.
0 10 20 30 40 50 60
0.02 0.04 0.06 0.08 0.10 0.12
Uniform on [25,35]
Uniform on [15,45]
x
p.d.f.

::::

(sec-4-3-1)=
# 4.3.1 Definitions of the Variance and the Standard Deviation

Although the two random prices in Example 4.3.1 have the same mean, price B
is more spread out than price A, and it would be good to have a summary of the
distribution that makes this easy to see.

## Definition 4.3.1: Variance / Standard Deviation

Let X be a random variable with finite mean μ = E(X).
The variance of X, denoted by Var(X), is defined as follows:
Var(X) = E[(X − μ)2]. (4.3.1)
If X has infinite mean or if the mean of X does not exist, we say that Var(X) does
not exist. The standard deviation of X is the nonnegative square root of Var(X) if the
variance exists.
If the expectation in Eq. (4.3.1) is infinite, we say that Var(X) and the standard
deviation of X are infinite.
When only one random variable is being discussed, it is common to denote its
standard deviation by the symbol σ, and the variance is denoted by σ2. When more
than one random variable is being discussed, the name of the random variable is
included as a subscript to the symbol σ, e.g., σX would be the standard deviation of
X while σ2
Y would be the variance of Y .

## Example 4.3.2: Stock Price Changes

Return to the two random variables A and B in Example 4.3.1.
Using Theorem 4.1.1, we can compute
Var(A) =
  35
25
(a − 30)2 1
10
da = 1
10
  5
−5
x2dx = 1
10
x3
3
     
5
x=−5
15
y=−15
= 75.

So, Var(B) is nine times as large as Var(A). The standard deviations of A and B are

σA
= 2.87 and σB
= 8.66.  

## Note: Variance Depends Only on the Distribution.

The variance and standard
deviation of a random variable X depend only on the distribution of X, just as
the expectation of X depends only on the distribution. Indeed, everything that can
be computed from the p.f. or p.d.f. depends only on the distribution. Two random variables with the same distribution will have the same variance, even if they have nothing to do with each other.

## Example 4.3.3: Variance and Standard Deviation of a Discrete Distribution

Suppose that a random
variable X can take each of the five values −2, 0, 1, 3, and 4 with equal probability.
We shall determine the variance and standard deviation of X.
In this example,
E(X) = 1
5
(−2 + 0 + 1+ 3 + 4) = 1.2.
Let μ = E(X) = 1.2, and define W = (X − μ)2. Then Var(X) = E(W). We can easily
compute the p.f. f of W:
x −2 0 1 3 4
w 10.24 1.44 0.04 3.24 7.84
f (w) 1/5 1/5 1/5 1/5 1/5
It follows that
Var(X) = E(W) = 1
5
[10.24 + 1.44 + 0.04 + 3.24 + 7.84]= 4.56.

The standard deviation of X is the square root of the variance, namely, 2.135.  

There is an alternative method for calculating the variance of a distribution,
which is often easier to use.

## Theorem 4.3.1: Alternative Method for Calculating the Variance

For every random variable X,
Var(X) = E(X2) − [E(X)]2.
Proof Let E(X) = μ. Then
Var(X) = E[(X − μ)2]
= E(X2 − 2μX + μ2)
= E(X2) − 2μE(X) + μ2
= E(X2) − μ2.

## Example 4.3.4: Variance of a Discrete Distribution

Once again, consider the random variable X in
Example 4.3.3, which takes each of the five values −2, 0, 1, 3, and 4 with equal
probability. We shall use Theorem 4.3.1 to compute Var(X). In Example 4.3.3, we
computed the mean of X as μ = 1.2. To use Theorem 4.3.1, we need
E(X2) = 1
5
[(−2)2 + 02 + 12 + 32 + 42]= 6.

BecauseE(X) = 1.2, Theorem 4.3.1 says that
Var(X) = 6 − (1.2)2 = 4.56,
which agrees with the calculation in Example 4.3.3.  

The variance (as well as the standard deviation) of a distribution provides a measure
of the spread or dispersion of the distribution around its meanμ.Asmall value of
the variance indicates that the probability distribution is tightly concentrated around $\mu$; a large value of the variance typically indicates that the probability distribution
has a wide spread around μ. However, the variance of a distribution, as well as its
mean, can be made arbitrarily large by placing even a very small but positive amount
of probability far enough from the origin on the real line.

## Example 4.3.5: Slight Modification of a Bernoulli Distribution

Let X be a discrete random variable
with the following p.d.f.:

0.5 ifx = 0,
0.499 if x = 1,
0.001 if x = 10,000,
0 otherwise.

There is a sense in which the distribution of X differs very little from the Bernoulli
distribution with parameter 0.5. However, the mean and variance of X are quite
different from the mean and variance of the Bernoulli distribution with parameter
0.5. Let Y have the Bernoulli distribution with parameter 0.5. In Example 4.1.3,
we computed the mean of Y as E(Y) = 0.5. Since Y 2 = Y , E(Y2) = E(Y) = 0.5, so

Var(Y ) = 0.5− 0.52 = 0.25. The means of X and X2 are also straightforward calculations:
E(X) = 0.5 × 0 + 0.499 × 1+ 0.001× 10,000 = 10.499
E(X2) = 0.5 × 02 + 0.499 × 12 + 0.001× 10,0002 = 100,000.499.
So Var(X) = 99,890.27. The mean and variance of X are much larger than the mean
and variance of Y .  

(sec-4-3-2)=
# 4.3.2 Properties of the Variance

We shall now present several theorems that state basic properties of the variance. In
these theorems we shall assume that the variances of all the random variables exist.
The first theorem concerns the possible values of the variance.

## Theorem 4.3.2

For each X, Var(X) ≥ 0. If X is a bounded random variable, then Var(X) must exist
and be finite.
Proof Because Var(X) is the mean of a nonnegative random variable (X − μ)2, it
must be nonnegative according to Theorem 4.2.2. If X is bounded, then the mean
exists, and hence the variance exists. Furthermore, if X is bounded the so too is
(X − μ)2, so the variance must be finite.
The next theorem shows that the variance of a random variable X cannot be 0 unless
the entire probability distribution of X is concentrated at a single point.

## Theorem 4.3.3

Var(X) = 0 if and only if there exists a constant c such that Pr(X = c) = 1.
Proof Suppose first that there exists a constant c such that Pr(X = c) = 1. Then
E(X) = c, and Pr[(X − c)2 = 0]= 1. Therefore,
Var(X) = E[(X − c)2]= 0.
Conversely, suppose that Var(X) = 0. Then Pr[(X − μ)2 ≥ 0] = 1 but
E[(X − μ)2]= 0. It follows from Theorem 4.2.3 that
Pr[(X − μ)2 = 0]= 1.
Hence, Pr(X = μ) = 1.
4.3 Variance 229
Figure 4.6 The p.d.f. of a
random variable X together
with the p.d.f.’s of X + 3 and
−X. Note that the spreads of
all three distributions appear
the same.
0.5 1.0 1.5
p.d.f. of x
p.d.f. of x   3
p.d.f. of x
x
p.d.f.
 2 0 2 4 6

## Theorem 4.3.4

For constants a and b, let Y = aX + b. Then
Var(Y ) = a2 Var(X),
and σY
= |a|σX.
Proof If E(X) = μ, then E(Y) = aμ + b by Theorem 4.2.1. Therefore,
Var(Y ) = E[(aX + b − aμ − b)2]= E[(aX − aμ)2]
= a2E[(X − μ)2]= a2 Var(X).
Taking the square root of Var(Y ) yields |a|σX.
It follows from Theorem 4.3.4 that Var(X + b) = Var(X) for every constant b.
This result is intuitively plausible, since shifting the entire distribution ofX a distance
of b units along the real line will change the mean of the distribution by b units but
the shift will not affect the dispersion of the distribution around its mean. Figure 4.6
shows the p.d.f. a random variable X together with the p.d.f. of X + 3 to illustrate
how a shift of the distribution does not affect the spread.
Similarly, it follows from Theorem 4.3.4 that Var(−X) = Var(X). This result also
is intuitively plausible, since reflecting the entire distribution of X with respect to the
origin of the real line will result in a new distribution that is the mirror image of the
original one. The mean will be changed from μ to −μ, but the total dispersion of
the distribution around its mean will not be affected. Figure 4.6 shows the p.d.f. of a
random variable X together with the p.d.f. of −X to illustrate how a reflection of the
distribution does not affect the spread.

## Example 4.3.6: Calculating the Variance and Standard Deviation of a Linear Function

Consider the same
random variableX as in Example 4.3.3, which takes each of the five values−2, 0, 1, 3,
and 4 with equal probability.We shall determine the variance and standard deviation
of Y = 4X − 7.
In Example 4.3.3, we computed the mean of X as μ = 1.2 and the variance as
4.56. By Theorem 4.3.4,
Var(Y ) = 16 Var(X) = 72.96.
Also, the standard deviation σ of Y is
σY
= 4σX
= 4(4.56)1/2 = 8.54.  
230 Chapter 4 Expectation
The next theorem provides an alternative method for calculating the variance of
a sum of independent random variables.

## Theorem 4.3.5

If X1, . . . , Xn are independent random variables with finite means, then
Var(X1 + . . . + Xn) = Var(X1) + . . . + Var(Xn).
Proof Suppose first that n = 2. If E(X1) = μ1 and E(X2) = μ2, then
E(X1 + X2) = μ1 + μ2.
Therefore,
Var(X1 + X2) = E[(X1 + X2 − μ1 − μ2)2]
= E[(X1 − μ1)2 + (X2 − μ2)2 + 2(X1 − μ1)(X2 − μ2)]
= Var(X1) + Var(X2) + 2E[(X1 − μ1)(X2 − μ2)].
Since X1 and X2 are independent,
E[(X1 − μ1)(X2 − μ2)]= E(X1 − μ1)E(X2 − μ2)
= (μ1 − μ1)(μ2 − μ2)
= 0.

It follows, therefore, that
Var(X1 + X2) = Var(X1) + Var(X2).

The theorem can now be established for each positive integer n by an induction
argument.
It should be emphasized that the random variables in Theorem 4.3.5 must be
independent. The variance of the sum of random variables that are not independent
will be discussed in Sec. 4.6. By combining Theorems 4.3.4 and 4.3.5, we can now
obtain the following corollary.

## Corollary 4.3.1

If X1, . . . , Xn are independent random variables with finite means, and if a1, . . . , an
and b are arbitrary constants, then
Var(a1X1 + . . . + anXn
+ b) = a2
1 Var(X1) + . . . + a2
n Var(Xn).

## Example 4.3.7: Investment Portfolio

An investor with $100,000 to invest wishes to construct a portfolio
consisting of shares of one or both of two available stocks and possibly some
fixed-rate investments. Suppose that the two stocks have random rates of return R1
and R2 per share for a period of one year. Suppose that R1 has a distribution with
mean 6 and variance 55, while R2 has mean 4 and variance 28. Suppose that the first
stock costs $60 per share and the second costs $48 per share. Suppose that money
can also be invested at a fixed rate of 3.6 percent per year. The portfolio will consist
of s1 shares of the first stock, s2 shares of the second stock, and all remaining money
($s3) invested at the fixed rate. The return on this portfolio will be
s1R1 + s2R2 + 0.036s3,
where the coefficients are constrained by
60s1 + 48s2 + s3 = 100,000, (4.3.2)

Figure 4.7 The set of all
means and variances of
investment portfolios in
Example 4.3.7. The solid
vertical line shows the range
of possible variances for
portfoloios with a mean of
7000.
0 4000 5000 6000 7000 8000 9000 10,000
Efficient portfolio
with mean 7000
Efficient portfolios
Range of variances
Mean of portfolio return
Variance of portfolio return
1.5 108
1 108
5 107
2.55 107

as well as s1, s2, s3 ≥ 0. For now, we shall assume that R1 and R2 are independent. The
mean and the variance of the return on the portfolio will be
E(s1R1 + s2R2 + 0.036s3) = 6s1 + 4s2 + 0.036s3,
Var(s1R1 + s2R2 + 0.036s3) = 55s2
1
+ 28s2
2.

One method for comparing a class of portfolios is to say that portfolio A is at least
as good as portfolio B if the mean return for A is at least as large as the mean return
for B and if the variance for A is no larger than the variance of B. (See Markowitz,
1987, for a classic treatment of such methods.) The reason for preferring smaller
variance is that large variance is associated with large deviations from the mean,
and for portfolios with a common mean, some of the large deviations are going to
have to be below the mean, leading to the risk of large losses. Figure 4.7 is a plot
of the pairs (mean, variance) for all of the possible portfolios in this example. That
is, for each (s1, s2, s3) that satisfy (4.3.2), there is a point in the outlined region of
Fig. 4.7. The points to the right and toward the bottom are those that have the largest
mean return for a fixed variance, and the ones that have the smallest variance for
a fixed mean return. These portfolios are called efficient. For example, suppose that
the investor would like a mean return of 7000. The vertical line segment above 7000
on the horizontal axis in Fig. 4.7 indicates the possible variances of all portfolios with
mean return of 7000.Amongthese, the portfolio with the smallest variance is efficient
and is indicated in Fig. 4.7. This portfolio has s1 = 524.7, s2 = 609.7, s3 = 39,250, and
variance 2.55× 107. So, every portfolio with mean return greater than 7000 must have
variance larger than 2.55× 107, and every portfolio with variance less than 2.55× 107
must have mean return smaller than 7000.  

(sec-4-3-3)=
## 4.3.3 The Variance of a Binomial Distribution

We shall now consider again the method of generating a binomial distribution presented in @sec-4-2. Suppose that a box contains red balls and blue balls, and that the proportion of red balls is $p$ ($0 \leq p \leq 1$). Suppose also that a random sample of $n$ balls
is selected from the box with replacement. For i = 1, . . . , n, let Xi
= 1 if the ith ball
that is selected is red, and let Xi
= 0 otherwise. If X denotes the total number of red
balls in the sample, then X = X1 + . . . + Xn and X will have the binomial distribution
with parameters n and p.

Figure 4.8 Two binomial
distributions with the same
mean (2.5) but different
variances.
0.05 0.10 0.15 0.20 0.25 0.30
x
p.f.
0 2 4 6 8 10
n   5, p   0.5
n   10, p   0.25


Since X1, . . . , Xn are independent, it follows from Theorem 4.3.5 that
Var(X) =
 n
i=1
Var(Xi).
According to Example 4.1.3, E(Xi) = p for i = 1, . . . , n. Since X2
i
= Xi for each i,
E(X2
i ) = E(Xi) = p. Therefore, by Theorem 4.3.1,
Var(Xi) = E(X2
i ) − [E(Xi)]2
= p − p2 = p(1− p).
It now follows that
Var(X) = np(1− p). (4.3.3)

@fig-4-8 compares two different binomial distributions with the same mean (2.5) but different variances (1.25 and 1.875). One can see how the p.f. of the distribution
with the larger variance (n = 10, p = 0.25) is higher at more extreme values
and lower at more central values than is the p.f. of the distribution with the smaller
variance (n = 5, p = 0.5). Similarly, Fig. 4.5 compares two uniform distributions with
the same mean (30) and different variances (8.33 and 75). The same pattern appears,
namely that the distribution with larger variance has higher p.d.f. at more extreme
values and lower p.d.f. at more central values.

(sec-4-3-4)=
# 4.3.4 Interquartile Range

## Example 4.3.8: The Cauchy Distribution

In @exm-4-1-8, we saw a distribution (the Cauchy distribution) whose mean did not exist, and hence its variance does not exist. But, we
might still want to describe how spread out such a distribution is. For example, if X
has the Cauchy distribution and Y = 2X, it stands to reason that Y is twice as spread
out as X is, but how do we quantify this?  
There is a measure of spread that exists for every distribution, regardless of
whether or not the distribution has a mean or variance. Recall from Definition 3.3.2
that the quantile function for a random variable is the inverse of the c.d.f., and it is
defined for every random variable.

## Definition 4.3.2: Interquartile Range (IQR)

Let X be a random variable with quantile function F
−1(p)
for 0 < p <1.

The interquartile range (IQR) is defined to be F

−1(0.75) − F
−1(0.25).
In words, the IQR is the length of the interval that contains the middle half of the
distribution.

## Example 4.3.9: The Cauchy Distribution

Let X have the Cauchy distribution. The c.d.f. F of X can
be found using a trigonometric substitution in the following integral:
F(x) =
  x
−∞
dy
π(1+ y2)
= 1
2
+ tan−1(x)
π
,
where tan−1(x) is the principal inverse of the tangent function, taking values from
−π/2 to π/2 as x runs from −∞ to ∞. The quantile function of X is then F
−1(p) =
tan[π(p − 1/2)] for 0<p <1. The IQR is
F
−1(0.75) − F
−1(0.25) = tan(π/4) − tan(−π/4) = 2.

It is not difficult to show that, if Y = 2X, then the IQR of Y is 4. (See Exercise 14.)

(sec-4-3-5)=
# 4.3.5 Summary

The variance of $X$, denoted by $\text{Var}[X]$, is the mean of [X − E(X)]2 and measures how
spread out the distribution of X is. The variance also equals E(X2) − [E(X)]2. The
standard deviation is the square root of the variance. The variance of aX + b, where
a and b are constants, is a2 Var(X). The variance of the sum of independent random
variables is the sum of the variances. As an example, the variance of the binomial
distribution with parameters n and p is np(1− p). The interquartile range (IQR) is
the difference between the 0.75 and 0.25 quantiles. The IQR is a measure of spread
that exists for every distribution.

(sec-4-3-6)=
# 4.3.6 Exercises

1. Suppose that X has the uniform distribution on the
interval [0, 1]. Compute the variance of X.
2. Suppose that one word is selected at random from the
sentence the girl put on her beautiful red hat. If X
denotes the number of letters in the word that is selected,
what is the value of Var(X)?
3. For all numbers a and b such that a <b, find the variance
of the uniform distribution on the interval [a, b].
4. Suppose that X is a random variable for which E(X) =
μ and Var(X) = σ2. Show that
E[X(X − 1)]= μ(μ − 1) + σ2.
5. Let X be a random variable for which E(X) = μ and
Var(X) = σ2, and let c be an arbitrary constant. Show that
E[(X − c)2]= (μ − c)2 + σ2.
6. Suppose that X and Y are independent random variables
whose variances exist and such that E(X) = E(Y).
Show that
E[(X − Y)2]= Var(X) + Var(Y ).
7. Suppose that X and Y are independent random variables
for which Var(X) = Var(Y ) = 3. Find the values of
(a) Var(X − Y) and (b) Var(2X − 3Y + 1).
8. Construct an example of a distribution for which the
mean is finite but the variance is infinite.
9. Let X have the discrete uniform distribution on the
integers 1, . . . , n. Compute the variance of X. Hint: You
may wish to use the formula
 n
k=1 k2 = n(n + 1) . (2n +
1)/6.
234 Chapter 4 Expectation
10. Consider the example efficient portfolio at the end of
Example 4.3.7. Suppose that Ri has the uniform distribution
on the interval [ai, bi] for i = 1, 2.
a. Find the two intervals [a1, b1] and [a2, b2]. Hint: The
intervals are determined by the means and variances.
b. Find the value at risk (VaR) for the example portfolio
at probability level 0.97. Hint: Review Example 3.9.5
to see how to find the p.d.f. of the sum of two uniform
random variables.
11. Let X have the uniform distribution on the interval
[0, 1]. Find the IQR of X.
12. Let X have the p.d.f. f (x) = exp(−x) for x ≥ 0, and
f (x) = 0 for x <0. Find the IQR of X.

13. Let X have the binomial distribution with parameters
5 and 0.3. Find the IQR of X. Hint: Return to Example
3.3.9 and Table 3.1.

14. Let X be a random variable whose interquartile range
is η. Let Y = 2X. Prove that the interquartile range of Y is
2η.
