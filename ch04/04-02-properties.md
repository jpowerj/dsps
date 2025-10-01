(sec-4-2)=
# 4.2 Properties of Expectations

(sec-4-2-0)=
# Overview

*In this section, we present some results that simplify the calculation of expectations for some common functions of random variables.*

(sec-4-2-1)=
# 4.2.1 Basic Theorems

Suppose that $X$ is a random variable for which the expectation $\mathbb{E}[X]$ exists. We shall present several results pertaining to the basic properties of expectations.

## Theorem 4.2.1: Linear Function

If Y = aX + b, where a and b are finite constants, then
E(Y) = aE(X) + b.


Proof We first shall assume, for convenience, that X has a continuous distribution
for which the p.d.f. is f . Then
E(Y) = E(aX + b) =
  ∞
−∞
(ax + b)f (x) dx
= a
  ∞
−∞
xf (x) dx + b
  ∞
−∞
f (x) dx
= aE(X) + b.


A similar proof can be given for a discrete distribution.


## Example 4.2.1: Calculating the Expectation of a Linear Function

Suppose that E(X) = 5. Then
E(3X − 5) = 3E(X) − 5 = 10
and
E(−3X + 15)=−3E(X) + 15 = 0.  

The following result follows from Theorem 4.2.1 with a = 0.

## Corollary 4.2.1

If X = c with probability 1, then E(X) = c.

## Example 4.2.2: Investment

An investor is trying to choose between two possible stocks to buy for a three-month investment. One stock costs \$50 per share and has a rate of return of $R_1$ dollars per share for the three-month period, where $R_1$ is a random variable.

The second stock costs \$30 per share and has a rate of return of R2 per share for the same
three-month period.

The investor has a total of \$6000 to invest. For this example,
suppose that the investor will buy shares of only one stock. (In Example 4.2.3, we
shall consider strategies in which the investor buys more than one stock.) Suppose
that R1 has the uniform distribution on the interval [−10, 20] and that R2 has the
uniform distribution on the interval [−4.5, 10]. We shall first compute the expected
dollar value of investing in each of the two stocks. For the first stock, the $6000 will
purchase 120 shares, so the return will be 120R1, whose mean is 120E(R1) = 600.
(Solve Exercise 1 in Sec. 4.1 to see why E(R1) = 5.) For the second stock, the $6000
will purchase 200 shares, so the return will be 200R2, whose mean is 200E(R2) = 550.

The first stock has a higher expected return.

In addition to calculating expected return, we should also ask which of the two
investments is riskier. We shall now compute the value at risk (VaR) at probability
level 0.97 for each investment. (See Example 3.3.7 on page 113.) VaR will be the
negative of the 1− 0.97 = 0.03 quantile for the return on each investment. For the
first stock, the return 120R1 has the uniform distribution on the interval [−1200, 2400]
(see Exercise 14 in Sec. 3.8) whose 0.03 quantile is (according to Example 3.3.8 on
page 114) 0.03 × 2400 + 0.97 × (−1200)=−1092. So VaR= 1092. For the second
stock, the return 200R2 has the uniform distribution on the interval [−900, 2000]
whose 0.03 quantile is 0.03 × 2000 + 0.97 × (−900)=−813. So VaR= 813. Even
though the first stock has higher expected return, the second stock seems to be
slightly less risky in terms of VaR. How should we balance risk and expected return
to choose between the two purchases? One way to answer this question is illustrated
in Example 4.8.10, after we learn about utility.

## Theorem 4.2.2

If there exists a constant such that Pr(X ≥ a) = 1, then E(X) ≥ a. If there exists a
constant b such that Pr(X ≤ b) = 1, then E(X) ≤ b.
Proof We shall assume again, for convenience, that X has a continuous distribution
for which the p.d.f. is f , and we shall suppose first that Pr(X ≥ a) = 1. Because X is
bounded below, the second integral in (4.1.5) is finite. Then


The proof of the other part of the theorem and the proof for a discrete distribution
are similar.

It follows from Theorem 4.2.2 that if Pr(a ≤ X ≤ b) = 1, then a ≤ E(X) ≤ b.

## Theorem 4.2.3

Suppose that E(X) = a and that either Pr(X ≥ a) =1 or Pr(X ≤ a) = 1. Then
Pr(X = a) = 1.
Proof We shall provide a proof for the case in which X has a discrete distribution
and Pr(X ≥ a) = 1. The other cases are similar. Let x1, x2, . . . include every value
x >a such that Pr(X = x) > 0, if any. Let p0 = Pr(X = a). Then,
E(X) = p0a +
∞ 
j=1
xj Pr(X = xj ). (4.2.1)
Each xj in the sum on the right side of Eq. (4.2.1) is greater than a. If we replace all
of the xj ’s by a, the sum can’t get larger, and hence
E(X) ≥ p0a +
∞ 
j=1
a Pr(X = xj ) = a. (4.2.2)
Furthermore, the inequality in Eq. (4.2.2) will be strict if there is even onex >a with
Pr(X = x) > 0. This contradicts E(X) = a. Hence, there can be no x >a such that
Pr(X = x) > 0.

## Theorem 4.2.4

If X1, . . . ,Xn are n random variables such that each expectation E(Xi) is finite
(i = 1, . . . , n), then
E(X1 + . . . + Xn) = E(X1) + . . . + E(Xn).
Proof We shall first assume that n = 2 and also, for convenience, thatX1 andX2 have
a continuous joint distribution for which the joint p.d.f. is f . Then
E(X1 + X2) =

where f1 and f2 are the marginal p.d.f.’s of X1 and X2. The proof for a discrete
distribution is similar. Finally, the theorem can be established for each positive
integer n by an induction argument.
It should be emphasized that, in accordance with Theorem 4.2.4, the expectation
of the sum of several random variables always equals the sum of their individual
expectations, regardless of what their joint distribution is. Even though the joint p.d.f.
ofX1 andX2 appeared in the proof of Theorem 4.2.4, only the marginal p.d.f.’s figured
into the calculation of E(X1 + X2).

The next result follows easily from Theorems 4.2.1 and 4.2.4.

## Corollary 4.2.2

Assume that E(Xi) is finite for i = 1, . . . , n. For all constants a1, . . . , an and b,
E(a1X1 + . . . + anXn
+ b) = a1E(X1) + . . . + anE(Xn) + b.

## Example 4.2.3: Investment Portfolio

Suppose that the investor with \$6000 in @exm-4-2-2 can buy shares of both of the two stocks. Suppose that the investor buys s1 shares of the first
stock at \$50 per share and s2 shares of the second stock at $30 per share. Such a
combination of investments is called a portfolio. Ignoring possible problems with
fractional shares, the values of s1 and s2 must satisfy

50s1 + 30s2 = 6000,

in order to invest the entire $6000. The return on this portfolio will be s1R1 + s2R2.
The mean return will be

s1E(R1) + s2E(R2) = 5s1 + 2.75s2.

For example, if s1 = 54 and s2 = 110, then the mean return is 572.5.  

## Example 4.2.4: Sampling without Replacement

Suppose that a box contains red balls and blue balls
and that the proportion of red balls in the box is $p$ ($0 \leq p \leq 1$). Suppose that $n$ balls are
selected from the box at random without replacement, and let X denote the number
of red balls that are selected.

We shall determine the value of E(X).


We shall begin by defining n random variables X1, . . . , Xn as follows: For i =
1, . . . , n, let Xi
= 1 if the ith ball that is selected is red, and let Xi
= 0 if the ith ball
is blue. Since the n balls are selected without replacement, the random variables
X1, . . . , Xn are dependent. However, the marginal distribution of each Xi can be
derived easily (see Exercise 10 of Sec. 1.7). We can imagine that all the balls are
arranged in the box in some random order, and that the first n balls in this arrangement
are selected. Because of randomness, the probability that the ith ball in the
arrangement will be red is simply p. Hence, for i = 1, . . . , n,
Pr(Xi
= 1) = p and Pr(Xi
= 0) = 1− p. (4.2.3)
Therefore, E(Xi) = 1(p) + 0(1− p) = p.
From the definition of X1, . . . , Xn, it follows that X1 + . . . + Xn is equal to the
total number of red balls that are selected. Therefore, X = X1 + . . . + Xn and, by
Theorem 4.2.4,
E(X) = E(X1) + . . . + E(Xn) = np. (4.2.4)

## Note: In General, $\mathbb{E}[g(X)] \neq g(\mathbb{E}(X))$

@thm-4-2-1 and @thm-4-2-4 imply that if $g$ is a linear function of a random vector X, then E[g(X)]= g(E(X)). For a nonlinear function
g, we have already seen Example 4.1.13 in which E[g(X)]  = g(E(X)). Jensen’s
inequality (Theorem 4.2.5) gives a relationship between E[g(X)] and g(E(X)) for
another special class of functions.

## Definition 4.2.1: Convex Functions

A function g of a vector argument is convex if, for every α ∈ (0, 1),
and every x and y,
g[αx + (1− α)y]≥ αg(x) + (1− α)g(y).
The proof of Theorem 4.2.5 is not given, but one special case is left to the reader in
Exercise 13.

## Theorem 4.2.5: Jensen's Inequality

Let g be a convex function, and let X be a random vector with
finite mean. Then E[g(X)]≥ g(E(X)).

## Example 4.2.5: Sampling with Replacement

Suppose again that in a box containing red balls and
blue balls, the proportion of red balls is p (0 ≤ p ≤ 1). Suppose now, however, that
a random sample of n balls is selected from the box with replacement. If X denotes
the number of red balls in the sample, then X has the binomial distribution with
parameters n and p, as described in Sec. 3.1. We shall now determine the value
of E(X).
As before, for i = 1, . . . , n, let Xi
= 1 if the ith ball that is selected is red, and let
Xi
= 0 otherwise. Then, as before, X = X1 + . . . + Xn. In this problem, the random
variables X1, . . . ,Xn are independent, and the marginal distribution of each Xi is
again given by Eq. (4.2.3). Therefore, E(Xi) = p for i = 1, . . . , n, and it follows from
Theorem 4.2.4 that
E(X) = np. (4.2.5)

Thus, the mean of the binomial distribution with parameters n and p is np. The
p.f. f (x) of this binomial distribution is given by Eq. (3.1.4), and the mean can be
computed directly from the p.f. as follows:

Hence, by Eq. (4.2.5), the value of the sum in Eq. (4.2.6) must be np.  

It is seen from Eqs. (4.2.4) and (4.2.5) that the expected number of red balls
in a sample of n balls is np, regardless of whether the sample is selected with or
without replacement. However, the distribution of the number of red balls is different
depending on whether sampling is done with or without replacement (for n > 1).
For example, Pr(X = n) is always smaller in Example 4.2.4 where sampling is done
without replacement than in Example 4.2.5 where sampling is done with replacement,
if n > 1. (See Exercise 27 in Sec. 4.9.)

## Example 4.2.6: Expected Number of Matches

Suppose that a person types n letters, types the addresses
on n envelopes, and then places each letter in an envelope in a random
manner. Let X be the number of letters that are placed in the correct envelopes.
We shall find the mean of X. (In Sec. 1.10, we did a more difficult calculation with
this same example.)
For i = 1, . . . , n, let Xi
= 1 if the ith letter is placed in the correct envelope, and
let Xi
= 0 otherwise. Then, for i = 1, . . . , n,
Pr(Xi
= 1) = 1
n
and Pr(Xi
= 0) = 1− 1
n
.
Therefore,

= 1
n
+ . . . + 1
n
= 1.
Thus, the expected value of the number of correct matches of letters and envelopes
is 1, regardless of the value of n.  

(sec-4-2-2)=
# 4.2.2 Expectation of a Product of Independent Random Variables

## Theorem 4.2.6

If X1, . . . , Xn are n independent random variables such that each expectation E(Xi)
is finite (i = 1, . . . , n), then
E
 
!n
i=1
Xi
 
=
!n
i=1
E(Xi).
Proof We shall again assume, for convenience, that X1, . . . , Xn have a continuous
joint distribution for which the joint p.d.f. is f . Also, we shall let fi denote the marginal
p.d.f. ofXi (i = 1, . . . , n). Then, since the variablesX1, . . . , Xn are independent,
it follows that at every point (x1, . . . , xn) ∈ Rn,
f (x1, . . . , xn) =
!n
i=1
fi(xi).
Therefore,

The proof for a discrete distribution is similar.

The difference between @thm-4-2-4 and @thm-4-2-6 should be emphasized.

If it is assumed that each expectation is finite, the expectation of the sum of a group
of random variables is always equal to the sum of their individual expectations.
However, the expectation of the product of a group of random variables is not always
equal to the product of their individual expectations. If the random variables are
independent, then this equality will also hold.

## Example 4.2.7: Calculating the Expectation of a Combination of Random Variables

Suppose that X1,
X2, and X3 are independent random variables such that E(Xi) = 0 and E(X2
i ) = 1 for
i = 1, 2, 3. We shall determine the value of E[X2
1(X2 − 4X3)2].
Since X1, X2, and X3 are independent, it follows that the two random variables
X2
1 and (X2 − 4X3)2 are also independent. Therefore,
E[X2
1(X2 − 4X3)2]= E(X2
1)E[(X2 − 4X3)2]
= E(X2
2
− 8X2X3 + 16X2
3)
= E(X2
2) − 8E(X2X3) + 16E(X2
3)
= 1− 8E(X2)E(X3) + 16
= 17.  

## Example 4.2.8: Repeated Filtering

A filtration process removes a random proportion of particulates
in water to which it is applied. Suppose that a sample of water is subjected to this
process twice. Let X1 be the proportion of the particulates that are removed by
the first pass. Let X2 be the proportion of what remains after the first pass that
4.2 Properties of Expectations 223
is removed by the second pass. Assume that X1 and X2 are independent random
variables with common p.d.f. f (x) = 4x3 for 0 < x <1 and f (x) = 0 otherwise. Let
Y be the proportion of the original particulates that remain in the sample after two
passes. Then Y = (1− X1)(1− X2). Because X1 and X2 are independent, so too are
1− X1 and 1− X2. Since 1− X1 and 1− X2 have the same distribution, they have the
same mean, call it μ. It follows that Y has mean μ2. We can find μ as
μ = E(1− X1) =
  1
0
(1− x1)4x3
1dx1 = 1− 4
5
= 0.2.
It follows that E(Y) = 0.22 = 0.04.  

## Expectation for Nonnegative Distributions

## Theorem 4.2.7: Integer-Valued Random Variables

Let X be a random variable that can take only the
values 0, 1, 2, . . . . Then
E(X) =
∞ 
n=1
Pr(X ≥ n). (4.2.7)
Proof First, we can write
E(X) =
∞ 
n=0
n Pr(X = n) =
∞ 
n=1
n Pr(X = n). (4.2.8)
Next, consider the following triangular array of probabilities:
Pr(X = 1) Pr(X = 2) Pr(X = 3) . . .
Pr(X = 2) Pr(X = 3) . . .
Pr(X = 3) . . .
. . .
We can compute the sum of all the elements in this array in two different ways
because all of the summands are nonnegative. First, we can add the elements in each
c olumn of the array and then add these column totals. Thus, we obtain the value ∞
n=1 n Pr(X = n). Second, we can add the elements in each row of the array and then
add these row totals. In this way we obtain the value
 ∞
n=1 Pr(X ≥ n). Therefore,
∞ 
n=1
n Pr(X = n) =
∞ 
n=1
Pr(X ≥ n).
Eq. (4.2.7) now follows from Eq. (4.2.8).

## Example 4.2.9: Expected Number of Trials

Suppose that a person repeatedly tries to perform a certain
task until he is successful. Suppose also that the probability of success on each given
trial is $p$ ($0 < p < 1$) and that all trials are independent. If X denotes the number of the trial on which the first success is obtained, then E(X) can be determined as follows.

Since at least one trial is always required, Pr(X ≥ 1) = 1. Also, for n = 2, 3, . . . ,
at least n trials will be required if and only if none of the first n − 1 trials results in
success. Therefore,
Pr(X ≥ n) = (1− p)n−1.

By Eq. (4.2.7), it follows that
E(X) = 1+ (1− p) + (1− p)2 + . . . = 1
1− (1− p)
= 1
p
.  

@thm-4-2-7 has a more general version that applies to all nonnegative random variables.

## Theorem 4.2.8: General Nonnegative Random Variable

Let X be a nonnegative random variable with
c.d.f. F. Then
E(X) =
  ∞
0
[1− F(x)]dx. (4.2.9)

The proof of Theorem 4.2.8 is left to the reader in Exercises 1 and 2 in Sec. 4.9.

## Example 4.2.10: Expected Waiting Time

Let X be the time that a customer spends waiting for service
in a queue. Suppose that the c.d.f. of X is
F(x) =
 
0 if x ≤ 0,
1− e
−2x if x >0.
Then the mean of X is
E(X) =
  ∞
0
e
−2xdx = 1
2

(sec-4-2-3)=
# 4.2.3 Summary

The mean of a linear function of a random vector is the linear function of the mean.
In particular, the mean of a sum is the sum of the means.As an example, the mean of
the binomial distribution with parameters n and p is np. No such relationship holds
in general for nonlinear functions. For independent random variables, the mean of
the product is the product of the means.

(sec-4-2-4)=
# 4.2.4 Exercises

1. Suppose that the return R (in dollars per share) of a
stock has the uniform distribution on the interval [−3, 7].
Suppose also, that each share of the stock costs $1.50.
Let Y be the net return (total return minus cost) on an
investment of 10 shares of the stock. Compute E(Y).
2. Suppose that three random variables X1, X2, X3 form
a random sample from a distribution for which the mean
is 5. Determine the value of
E(2X1 − 3X2 + X3 − 4).
3. Suppose that three random variables X1, X2, X3 form
a random sample from the uniform distribution on the
interval [0, 1]. Determine the value of
E[(X1 − 2X2 + X3)2].
4. Suppose that the random variable X has the uniform
distribution on the interval [0, 1], that the random variable
Y has the uniform distribution on the interval [5, 9],
and that X and Y are independent. Suppose also that a
rectangle is to be constructed for which the lengths of two
adjacent sides are X and Y . Determine the expected value
of the area of the rectangle.
5. Suppose that the variables X1, . . . , Xn form a random
sample of size n from a given continuous distribution on
the real line for which the p.d.f. is f . Find the expectation
of the number of observations in the sample that fall
within a specified interval a ≤ x ≤ b.

6. Suppose that a particle starts at the origin of the real
line and moves along the line in jumps of one unit. For
each jump, the probability is p (0 ≤ p ≤ 1) that the particle
will jump one unit to the left and the probability is 1− p
that the particle will jump one unit to the right. Find the
expected value of the position of the particle after n jumps.
7. Suppose that on each play of a certain game a gambler
is equally likely to win or to lose. Suppose that when he
wins, his fortune is doubled, and that when he loses, his
fortune is cut in half. If he begins playing with a given
fortune c, what is the expected value of his fortune after
n independent plays of the game?
8. Suppose that a class contains 10 boys and 15 girls, and
suppose that eight students are to be selected at random
from the class without replacement. Let X denote the
number of boys that are selected, and let Y denote the
number of girls that are selected. Find E(X − Y).
9. Suppose that the proportion of defective items in a
large lot is p, and suppose that a random sample of n
items is selected from the lot. Let X denote the number of
defective items in the sample, and let Y denote the number
of nondefective items. Find E(X − Y).
10. Suppose that a fair coin is tossed repeatedly until a
head is obtained for the first time. (a)What is the expected
number of tosses that will be required? (b) What is the
expected number of tails that will be obtained before the
first head is obtained?
11. Suppose that a fair coin is tossed repeatedly until exactly
k heads have been obtained. Determine the expected
number of tosses that will be required. Hint: Represent the
total number of tosses X in the form X = X1 + . . . + Xk,
where Xi is the number of tosses required to obtain the
ith head after i − 1 heads have been obtained.
12. Suppose that the two return random variables R1 and
R2 in Examples 4.2.2 and 4.2.3 are independent. Consider
the portfolio at the end of Example 4.2.3 with s1 = 54
shares of the first stock and s2 = 110 shares of the second
stock.
a. Prove that the change in value X of the portfolio has
the p.d.f.
f (x)
=
⎧⎪⎪⎪⎨
⎪⎪⎪⎩
3.87 × 10−7(x + 1035) if −1035< x <560,
6.1728 × 10−4 if 560 ≤ x ≤ 585,
3.87 × 10−7(2180 − x) if 585< x <2180,
0 otherwise.
Hint: Look at Example 3.9.5.
b. Find the value at risk (VaR) at probability level 0.97
for the portfolio.
13. Prove the special case of Theorem 4.2.5 in which the
function g is twice continuously differentiable and X is
one-dimensional. You may assume that a twice continuously
differentiable convex function has nonnegative second
derivative. Hint: Expand g(X) around its mean using
Taylor’s theorem with remainder. Taylor’s theorem with
remainder says that if g(x) has two continuous derivatives
g
  and g
   at x = x0, then there exists y between x0 and x
such that
g(x) = g(x0) + (x − x0)g
 
(x0) + (x − x0)2
2
g
  
(y).