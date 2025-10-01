(sec-4-7)=
# 4.7 Conditional Expectation

(sec-4-7-0)=
# Overview

*Since expectations (including variances and covariances) are properties of distributions, there will exist conditional versions of all such distributional summaries as well as conditional versions of all theorems that we have proven or will later prove about expectations. In particular, suppose that we wish to predict one random variable $Y$ using a function $d(X)$ of another random variable $X$ so as to minimize $\mathbb{E}{[Y − d(X)]^2}$. Then $d(X)$ should be the conditional mean of $Y$ given $X$. There is also a very useful theorem that is an extension to expectations of the law of total probability.*

(sec-4-7-1)=
# 4.7.1 Definition and Basic Properties

:::: {prf:example} Household Survey
:label: exm-4-7-1
:enumerator: 4.7.1
:::{.head}
## Example 4.7.1: Household Survey
:::

A collection of households were surveyed, and each household reported the number of members and the number of automobiles owned. The reported numbers are in Table 4.1.

Suppose that we were to sample a household at random from those households
in the survey and learn the number of members. What would then be the expected
number of automobiles that they own?  

::::

The question at the end of Example 4.7.1 is closely related to the conditional
distribution of one random variable given the other, as defined in Sec. 3.6.

:::: {prf:definition} Conditional Expectation / Mean
:label: def-4-7-1
:enumerator: 4.7.1
:::{.head}
## Definition 4.7.1: Conditional Expectation/Mean
:::

Let X and Y be random variables such that the mean
of Y exists and is finite. The conditional expectation (or conditional mean) of Y given
X = x is denoted by E(Y|x) and is defined to be the expectation of the conditional
distribution of Y given X = x.
For example, if Y has a continuous conditional distribution given X = x with
conditional p.d.f. g2(y|x), then

E(Y|x) =

yg2(y|x) dy. (4.7.1)

Similarly, if Y has a discrete conditional distribution given X = x with conditional p.f.

g2(y|x), then
E(Y|x) =
 
All y
yg2(y|x). (4.7.2)

::::

Table 4.1 Reported numbers of household members and
automobiles in Example 4.7.1

The value of E(Y|x) will not be uniquely defined for those values of x such that
the marginal p.f. or p.d.f. of X satisfies f1(x) = 0. However, since these values of x
form a set of points whose probability is 0, the definition of E(Y|x) at such a point
is irrelevant. (See Exercise 11 in Sec. 3.6.) It is also possible that there will be some
values of x such that the mean of the conditional distribution of Y given X = x is
undefined for those x values. When the mean of Y exists and is finite, the set of x
values for which the conditional mean is undefined has probability 0.

The expressions in @eq-4-7-1 and @eq-4-7-2 are functions of $x$. These functions of $x$ can be computed before $X$ is observed, and this idea leads to the following useful concept.

:::: {prf:definition} Conditional Means as Random Variables
:label: def-4-7-2
:enumerator: 4.7.2
:::{.head}
## Definition 4.7.2: Conditional Means as Random Variables
:::

Let $h(x)$ stand for the function of $x$ that is denoted E(Y|x) in either @eq-4-7-1 or @eq-4-7-2.
Define the symbol $\mathbb{E}[Y \mid X]$ to mean $h(X)$ and call it the conditional mean of Y given X.

::::

In other words, E(Y|X) is a random variable (a function of X) whose value when X = x is E(Y|x). Obviously, we could define E(X|Y) and E(X|y) analogously.

## Example 4.7.2: Household Survey

Consider the household survey in @exm-4-7-1.

Let X be the number of members in a randomly selected household from the survey, and let Y be
the number of cars owned by that household. The 250 surveyed households are all
equally likely to be selected, so Pr(X = x, Y = y) is the number of households with
x members and y cars, divided by 250. Those probabilities are reported in Table 4.2.
Suppose that the sampled household has X = 4 members. The conditional p.f. of Y
given X = 4 is g2(y|4) = f (4, y)/f1(4), which is the x = 4 column of Table 4.2 divided
by f1(4) = 0.208, namely,
g2(0|4) = 0.0385, g2(1|4) = 0.5769, g2(2|4) = 0.2885, g2(3|4) = 0.0962.

The conditional mean of Y given X = 4 is then

E(Y|4) = 0 × 0.0385 + 1× 0.5769 + 2 × 0.2885 + 3 × 0.0962 = 1.442.

Similarly, we can compute E(Y|x) for all eight values of x. They are

x 1 2 3 4 5 6 7 8
E(Y|x) 0.609 1.057 1.317 1.442 1.538 1.533 1.75 2
Table 4.2 Joint p.f. f (x, y) of X and Y in Example 4.7.2 together with marginal
p.f.’s f1(x) and f2(y)


The random variable that takes the value 0.609 when the sampled household has one
member, takes the value 1.057 when the sampled household has two members, and
so on, is the random variable E(Y|X).  

## Example 4.7.3: A Clinical Trial

Consider a clinical trial in which a number of patients will be treated
and each patient will have one of two possible outcomes: success or failure. Let P
be the proportion of successes in a very large collection of patients, and let Xi
= 1
if the ith patient is a success and Xi
= 0 if not. Assume that the random variables
X1, X2, . . . are conditionally independent given P = p with Pr(Xi
= 1|P = p) = p.
Let X = X1 + . . . + Xn, which is the number of patients out of the first n who are
successes. We now compute the conditional mean of X given P. The patients are
independent and identically distributed conditional on P = p. Hence, the conditional
distribution of X given P = p is the binomial distribution with parameters n and p.
As we saw in Sec. 4.2, the mean of this binomial distribution is np, so E(X|p) = np
and E(X|P) = nP . Later, we will show how to compute the conditional mean of P
given X. This can be used to predict P after observing X.  
Note: The Conditional Mean of Y Given X Is a Random Variable. Because E(Y|X)
is a function of the random variable X, it is itself a random variable with its own
probability distribution, which can be derived from the distribution of X. On the
other hand, h(x) = E(Y|x) is a function of x that can be manipulated like any other
function. The connection between the two is that when one substitutes the random
variable X for x in h(x), the result is h(X) = E(Y|X).
We shall now show that the mean of the random variable E(Y|X) must be E(Y).
A similar calculation shows that the mean of E(X|Y) must be E(X).
Theorem
4.7.1
Law of Total Probability for Expectations. Let X and Y be random variables such that
Y has finite mean. Then
E[E(Y|X)]= E(Y). (4.7.3)
Proof We shall assume, for convenience, that X and Y have a continuous joint
distribution. Then
E[E(Y|X)]=
  ∞
−∞
E(Y|x)f1(x) dx
=
  ∞
−∞
  ∞
−∞
yg2(y|x)f1(x) dy dx.
Since g2(y|x) = f (x, y)/f1(x), it follows that
E[E(Y|X)]=
  ∞
−∞
  ∞
−∞
yf(x, y) dy dx = E(Y).
The proof for a discrete distribution or a more general type of distribution is similar.
Example
4.7.4
Household Survey. At the end of Example 4.7.2, we described the random variable
E(Y|X). Its distribution can be constructed from that description. It has a discrete distribution
that takes the eight values of E(Y|x) listed near the end of that example with
corresponding probabilities f1(x) for x = 1, . . . , 8. To be specific, let Z = E(Y|X),
then Pr[Z = E(Y|x)]= f1(x) for x = 1, . . . , 8. The specific values are
4.7 Conditional Expectation 259
z 0.609 1.057 1.317 1.442 1.538 1.533 1.75 2
Pr(Z = z) 0.092 0.140 0.164 0.208 0.208 0.120 0.048 0.020
We can compute E(Z) = 0.609 × 0.092 + . . . + 2 × 0.020 = 1.348. The reader can
verify that E(Y) = 1.348 by using the values of f2(y) in Table 4.2.  
Example
4.7.5
A Clinical Trial. In Example 4.7.3, we let X be the number of patients out of the
first n who are successes. The conditional mean of X given P = p was computed as
E(X|p) = np, where P is the proportion of successes in a large population of patients.
If the distribution of P is uniform on the interval [0, 1], then the marginal expected
value of X is E[E(X|P)]= E(nP ) = n/2. We will see how to calculate E(P|X) in
Example 4.7.8.  
Example
4.7.6
Choosing Points from Uniform Distributions. Suppose that a point X is chosen in
accordance with the uniform distribution on the interval [0, 1]. Also, suppose that
after the valueX = x has been observed (0<x <1), a point Y is chosen in accordance
with a uniform distribution on the interval [x, 1]. We shall determine the value
of E(Y).
For each given value of x (0 < x <1), E(Y|x) will be equal to the midpoint
(1/2)(x + 1) of the interval [x, 1]. Therefore, E(Y|X) = (1/2)(X + 1) and
E(Y) = E[E(Y|X)]= 1
2
[E(X) + 1]= 1
2


1
2
+ 1
 
= 3
4
.  
When manipulating the conditional distribution given X = x, it is safe to act as if
X is the constant x. This fact, which can simplify the calculation of certain conditional
means, is now stated without proof.
Theorem
4.7.2
Let X and Y be random variables, and let Z = r(X, Y) for some function r. The
conditional distribution of Z given X = x is the same as the conditional distribution
of r(x, Y) given X = x.
One consequence of Theorem 4.7.2 when X and Y have a continuous joint
distribution is that
E(Z|x) = E(r(x, Y)|x) =

@thm-4-7-1 also implies that for two arbitrary random variables X and Y ,

E{E[r(X, Y)|X]} = E[r(X, Y)], (4.7.4)

by letting Z = r(X, Y) and noting that E{E(Z|X)} = E(Z).
We can define, in a similar manner, the conditional expectation of r(X, Y) given
Y and the conditional expectation of a function r(X1, . . . , Xn) of several random
variables given one or more of the variables X1, . . . , Xn.

## Example 4.7.7: Linear Conditional Expectation

Suppose that E(Y|X) = aX + b for some constants a
and b. We shall determine the value of E(XY) in terms of E(X) and E(X2).
By Eq. (4.7.4), E(XY) = E[E(XY|X)]. Furthermore, since X is considered to be
given and fixed in the conditional expectation,
E(XY|X) = XE(Y|X) = X(aX + b) = aX2 + bX.

Therefore,
E(XY) = E(aX2 + bX) = aE(X2) + bE(X).  

The mean is not the only feature of a conditional distribution that is important
enough to get its own name.

## Definition 4.7.3: Conditional Variance

For every given value x, let $\text{Var}[Y \mid x]$ denote the variance of the
conditional distribution of Y given that X = x. That is,

Var(Y |x) = E{[Y − E(Y|x)]2|x}. (4.7.5)

We call Var(Y |x) the conditional variance of Y given X = x.

The expression in Eq. (4.7.5) is once again a function v(x). We shall define
Var(Y |X) to be v(X) and call it the conditional variance of Y given X.
Note: Other Conditional Quantities. In much the same way as in Definitions 4.7.1
and 4.7.3, we could define any conditional summary of a distribution that we wish. For
example, conditional quantiles of Y given X = x are the quantiles of the conditional
distribution of Y given X = x. The conditional m.g.f. of Y given X = x is the m.g.f. of
the conditional distribution of Y given X = x, etc.

(sec-4-7-4)=
# Prediction

At the end of Example 4.7.3, we considered the problem of predicting the proportion
P of successes in a large population of patients given the observed number X of
succeses in a sample of size n. In general, consider two arbitrary random variables X
and Y that have a specified joint distribution and suppose that after the value of X
has been observed, the value of Y must be predicted. In other words, the predicted
value of Y can depend on the value of X. We shall assume that this predicted value $d(X)$ must be chosen so as to minimize the mean squared error E{[Y − d(X)]2}.

## Theorem 4.7.3

The prediction d(X) that minimizes E{[Y − d(X)]2} is d(X) = E(Y|X).

Proof We shall prove the theorem in the case in which X has a continuous distribution,
but the proof in the discrete case is virtually identical. Let d(X) = E(Y|X),
and let $d^*(X)$ be an arbitrary predictor.

We need only prove that

$$
E{[Y − d(X)]2} ≤  E{[Y − d^*(X)]2}.
$$

It follows from @eq-4-7-4 that

E{[Y − d(X)]2} = E(E{[Y − d(X)]2|X}). (4.7.6)

A similar equation holds for $d^*$.

Let Z = [Y − d(X)]2, and let h(x) = E(Z|x). Similarly,
let $Z^* = [Y − d^*(X)]^2$ and

$h(x) = \mathbb{E}[Z^* \mid x]$. The right-hand side of (4.7.6) is
h(x)f1(x) dx, and the corresponding expression using $d^*$ is

$h^*(x)f_1(x) dx$.

So, the
proof will be complete if we can prove that

$$
h(x)f1(x) dx \leq h(x)f1(x) dx.
$$

(4.7.7)
Clearly, @eq-4-7-7 holds if we can show that $h(x) \leq h^*(x)$ for all $x$.

That is, the proof is complete if we can show that $E{[Y − d(X)]2|x} \leq E{[Y − d(X)]2|x}$.

When we condition on X = x, we are allowed to treat X as if it were the constant x, so we need
to show that

$$
E{[Y − d(x)]2|x} ≤ E{[Y − d^*(x)]2|x}.
$$

These last expressions are nothing more than the M.S.E.’s for two different predictions d(x) and d(x) of Y calculated using the conditional distribution of Y given X = x. As discussed in Sec. 4.5, the
M.S.E. of such a prediction is smallest if the prediction is the mean of the distribution
of Y . In this case, that mean is the mean of the conditional distribution of Y given
X = x. Since d(x) is the mean of the conditional distribution of Y given X = x, it must
have smaller M.S.E. than every other prediction $d^*(x)$. Hence, $h(x) \leq h^*(x)$ for all x.

If the value X = x is observed and the value E(Y|x) is predicted for Y , then
the M.S.E. of this predicted value will be Var(Y |x), from Definition 4.7.3. It follows
from Eq. (4.7.6) that if the prediction is to be made by using the function d(X) =
E(Y|X), then the overall M.S.E., averaged over all the possible values of X, will be
E[Var(Y |X)].

If the value of Y must be predicted without any information about the value of
X, then, as shown in Sec. 4.5, the best prediction is the mean E(Y) and the M.S.E.
is Var(Y ). However, if X can be observed before the prediction is made, the best
prediction is d(X) = E(Y|X) and the M.S.E. is E[Var(Y |X)]. Thus, the reduction in
the M.S.E. that can be achieved by using the observation X is

Var(Y ) − E[Var(Y |X)]. (4.7.8)

This reduction provides a measure of the usefulness of X in predicting Y . It is shown
in Exercise 11 at the end of this section that this reduction can also be expressed as $\text{Var}[\mathbb{E}[Y \mid X]]$.

It is important to distinguish carefully between the overall M.S.E., which is
E[Var(Y |X)],
and the M.S.E. of the particular prediction to be made when X = x,
which is Var(Y |x). Before the value of X has been observed, the appropriate value
for the M.S.E. of the complete process of observing X and then predicting Y is
E[Var(Y |X)]. After a particular value x of X has been observed and the prediction
E(Y|x) has been made, the appropriate measure of the M.S.E. of this prediction is
Var(Y |x). A useful relationship between these values is given in the following result,
whose proof is left to Exercise 11.

## Theorem 4.7.4: Law of Total Probability for Variances

If X and Y are arbitrary random variables for
which the necessary expectations and variances exist, then

$$
\text{Var}[Y] = \mathbb{E}[\text{Var}[Y \mid X]] + \text{Var}[\mathbb{E}[Y \mid X]].
$$

## Example 4.7.8: A Clinical Trial

In @exm-4-7-3, let $X$ be the number of patients out of the first
40 in a clinical trial who have success as their outcome. Let P be the probability
that an individual patient is a success. Suppose that P has the uniform distribution
on the interval [0, 1] before the trial begins, and suppose that the outcomes of the
patients are conditionally independent given P = p. As we saw in Example 4.7.3, X
has the binomial distribution with parameters 40 and p given P = p. If we needed to
minimize M.S.E. in predicting P before observing X, we would use the mean of P,
namely, 1/2. The M.S.E. would beVar(P ) = 1/12. However, we shall soon observe the
value of X and then predict P. To do this, we shall need the conditional distribution
of P given X = x. Bayes’ theorem for random variables (3.6.13) tells us that the
conditional p.d.f. of P given X = x is

g2(p|x) = g1(x|p)f2(p)
f1(x)
, (4.7.9)

where g1(x|p) is the conditional p.f. of X given P = p, namely, the binomial p.f.

g1(x|p) =
 40
x
 
px(1− p)40−x for x = 0, . . . , 40, f2(p) = 1 for $0 < p < 1$ is the marginal pdf of $P$, and
$f_1(x)$ is the marginal pmf of $X$ obtained from the law of total probability

Figure 4.12 The conditional p.d.f. of P given X = 18 in Example 4.7.8. The marginal
p.d.f. of P (prior to observing X) is also shown.

This last integral looks difficult to compute. However, there is a simple formula for
integrals of this form, namely,

A proof of Eq. (4.7.11) is given in Sec. 5.8. Substituting (4.7.11) into (4.7.10) yields

for x = 0, . . . , 40. Substituting this into Eq. (4.7.9) yields
g2(p|x) = 

x!(40 − x)!
px(1− p)40−x, for $0 < p < 1$.

For example, with x = 18, the observed number of successes in Table 2.1, a graph of
g2(p|18) is shown in Fig. 4.12.

If we want to minimize the M.S.E. when predicting P, we should use E(P|x),
the conditional mean. We can compute E(P|x) using the conditional p.d.f. and
Eq. (4.7.11):

(4.7.12)

So, after X = x is observed, we will predict P to be (x + 1)/42, which is very close to
the proportion of the first 40 patients who are successes. The M.S.E. after observing
X = x is the conditional variance Var(P |x). We can compute this using (4.7.12) and

Using the fact that Var(P |x) = E(P2|x) − [E(P|x)]2, we see that

The overall M.S.E. of predicting P from X is the mean of the conditional M.S.E.
E[Var(P |X)]= E


In this calculation, we used two popular formulas,


. (4.7.14)

The overall M.S.E. is quite a bit smaller than the value 1/12 = 0.08333, which we
would have obtained before observing X. As an illustration, Fig. 4.12 shows how
much more spread out the marginal distribution of P is compared to the conditional
distribution of P after observing X = 18.  
It should be emphasized that for the conditions of Example 4.7.8, 0.003968 is the
appropriate value of the overall M.S.E. when it is known that the value of X will be
available for predicting P but before the explicit value of X has been determined.
After the value of X = x has been determined, the appropriate value of the M.S.E. is

$$
\text{Var}[P \mid x] = (x+1)(41−x)
$$

75,852 . 

Notice that the largest possible value of Var(P |x) is 0.005814
when x = 20 and is still much less than 1/12.

A result similar to Theorem 4.7.3 holds if we are trying to minimize the M.A.E.
(mean absolute error) of our prediction rather than the M.S.E. In Exercise 16, you
can prove that the predictor that minimizes M.A.E. is d(X) equal to the median of
the conditional distribution of Y given X.

# Summary

The conditional mean E(Y|x) of Y given X = x is the mean of the conditional
distribution of Y given X = x. This conditional distribution was defined in Chapter 3.
Likewise, the conditional variance Var(Y |x) of Y given X = x is the variance of
the conditional distribution. The law of total probability for expectations says that
E[E(Y|X)]= E(Y). If we will observe X and then need to predict Y , the predictor
that leads to the smallest M.S.E. is the conditional mean E(Y|X).
264 Chapter 4 Expectation
Exercises
1. Consider again the situation described in Example
4.7.8. Compute the M.S.E. when using E(P|x) to predict
P after observing X = 18. How much smaller is this than
the marginal M.S.E. 1/12?
2. Suppose that 20 percent of the students who took a
certain test were from school A and that the arithmetic
average of their scores on the test was 80. Suppose also
that 30 percent of the students were from schoolB and that
the arithmetic average of their scores was 76. Suppose,
finally, that the other 50 percent of the students were from
school C and that the arithmetic average of their scores
was 84. If a student is selected at random from the entire
group that took the test, what is the expected value of her
score?
3. Suppose that 0 < Var(X) <∞ and 0 < Var(Y ) <∞.
Show that if E(X|Y) is constant for all values of Y , then X
and Y are uncorrelated.
4. Suppose that the distribution of X is symmetric with
respect to the point x = 0, that all moments ofX exist, and
that E(Y|X) = aX + b, where a and b are given constants.
Show that X2m and Y are uncorrelated for m = 1, 2, . . . .
5. Suppose that a point X1 is chosen from the uniform
distribution on the interval [0, 1], and that after the value
X1 = x1 is observed, a point X2 is chosen from a uniform
distribution on the interval [x1, 1]. Suppose further that
additional variables X3, X4, . . . are generated in the same
way. In general, for j = 1, 2, . . . , after the value Xj
=
xj has been observed, Xj+1 is chosen from a uniform
distribution on the interval [xj , 1].Find the value of E(Xn).
6. Suppose that the joint distribution ofX and Y is the uniform
distribution on the circle x2 + y2 < 1. Find E(X|Y).
7. Suppose that X and Y have a continuous joint distribution
for which the joint p.d.f. is as follows:
f (x, y) =
 
x + y for 0 ≤ x ≤ 1 and 0 ≤ y ≤ 1,
0 otherwise.
Find E(Y|X) and Var(Y |X).
8. Consider again the conditions of Exercise 7. (a) If it
is observed that X = 1/2, what predicted value of Y will
have the smallest M.S.E.? (b) What will be the value of
this M.S.E.?
9. Consider again the conditions of Exercise 7. If the value
of Y is to be predicted from the value of X, what will be
the minimum value of the overall M.S.E.?
10. Suppose that, for the conditions in Exercises 7 and 9,
a person either can pay a cost c for the opportunity of
observing the value of X before predicting the value of Y
or can simply predict the value of Y without first observing
the value of X. If the person considers her total loss to be
the cost c plus the M.S.E. of her predicted value, what is
the maximum value of c that she should be willing to pay?
11. Prove Theorem 4.7.4.
12. Suppose that X and Y are random variables such that
E(Y|X) = aX + b. Assuming that Cov(X, Y ) exists and
that 0 < Var(X) <∞, determine expressions for a and b
in terms of E(X), E(Y), Var(X), and Cov(X, Y ).
13. Suppose that a person’s score X on a mathematics
aptitude test is a number in the interval (0, 1) and that
his score Y on a music aptitude test is also a number in
the interval (0, 1). Suppose also that in the population of
all college students in the United States, the scores X and
Y are distributed in accordance with the following joint
p.d.f.:
f (x, y) =
 
2
5 (2x + 3y) for 0 ≤ x ≤ 1 and 0 ≤ y ≤ 1,
0 otherwise.
a. If a college student is selected at random, what predicted
value of his score on the music test has the
smallest M.S.E.?
b. What predicted value of his score on the mathematics
test has the smallest M.A.E.?
14. Consider again the conditions of Exercise 13. Are the
scores of college students on the mathematics test and the
music test positively correlated, negatively correlated, or
uncorrelated?
15. Consider again the conditions of Exercise 13. (a) If a
student’s score on the mathematics test is 0.8, what predicted
value of his score on the music test has the smallest
M.S.E.? (b) If a student’s score on the music test is 1/3,
what predicted value of his score on the mathematics test
has the smallest M.A.E.?
16. Define a conditional median of Y given X = x to be
any median of the conditional distribution of Y given X =
x. Suppose that we will get to observe X and then we will
need to predict Y . Suppose that we wish to choose our
prediction d(X) so as to minimize mean absolute error,
E(|Y − d(X)|). Prove that d(x) should be chosen to be
a conditional median of Y given X = x. Hint: You can
modify the proof of Theorem 4.7.3 to handle this case.
17. Prove Theorem 4.7.2 for the case in which X and Y
have a discrete joint distribution. The key to the proof is
to write all of the necessary conditional p.f.’s in terms of
the joint p.f. of X and Y and the marginal p.f. of X. To
facilitate this, for each x and z, give a name to the set of y
values such that r(x, y) = z.
