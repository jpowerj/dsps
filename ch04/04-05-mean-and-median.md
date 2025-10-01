(sec-4-5)=
# 4.5 The Mean and the Median

(sec-4-5-0)=
# Overview

*Although the mean of a distribution is a measure of central location, the median (see @def-3-3-3) is also a measure of central location for a distribution. This section presents some comparisons and contrasts between these two location summaries of a distribution.*

(sec-4-5-1)=
# 4.5.1 The Median

It was mentioned in @sec-4-1 that the mean of a probability distribution on the real line will be at the center of gravity of that distribution. In this sense, the mean of a
distribution can be regarded as the center of the distribution. There is another point
on the line that might also be regarded as the center of the distribution. Suppose
that there is a point m0 that divides the total probability into two equal parts, that
is, the probability to the left of m0 is 1/2, and the probability to the right of m0 is
also 1/2. For a continuous distribution, the median of the distribution introduced
in Definition 3.3.3 is such a number. If there is such an m0, it could legitimately be
called a center of the distribution. It should be noted, however, that for some discrete
distributions there will not be any point at which the total probability is divided into
two parts that are exactly equal. Moreover, for other distributions, which may be
either discrete or continuous, there will be more than one such point. Therefore, the
formal definition of a median, which will now be given, must be general enough to
include these possibilities.

:::: {prf:definition} Median
:label: def-4-5-1
:enumerator: 4.5.1
:::{.head}
## Definition 4.5.1: Median
:::

Let X be a random variable. Every number m with the following property
is called a median of the distribution of X:
Pr(X ≤ m) ≥ 1/2 and Pr(X ≥ m) ≥ 1/2.

::::

Another way to understand this definition is that a median is a point m that
satisfies the following two requirements: First, if m is included with the values of X
to the left of m, then
Pr(X ≤ m) ≥ Pr(X > m).
Second, if m is included with the values of X to the right of m, then
Pr(X ≥ m) ≥ Pr(X < m).
If there is a number m such that Pr(X < m) = Pr(X > m), that is, if the number m
does actually divide the total probability into two equal parts, then m will of course
be a median of the distribution of X (see Exercise 16).

## Note: Multiple Medians

One can prove that every distribution must have at least
one median. Indeed, the 1/2 quantile from Definition 3.3.2 is a median. (See Exercise 1.) For some distributions, every number in some interval is a median. In such cases, the 1/2 quantile is the minimum of the set of all medians.When a whole interval
of numbers are medians of a distribution, some writers refer to the midpoint of the
interval as the median.

Example
4.5.1
The Median of a Discrete Distribution. Suppose that X has the following discrete
distribution:
Pr(X = 1) = 0.1, Pr(X = 2) = 0.2,
Pr(X = 3) = 0.3, Pr(X = 4) = 0.4.
The value 3 is a median of this distribution because Pr(X ≤ 3) = 0.6, which is greater
than 1/2, and Pr(X ≥ 3) = 0.7, which is also greater than 1/2. Furthermore, 3 is the
unique median of this distribution.  
Example
4.5.2
A Discrete Distribution for Which the Median Is Not Unique. Suppose that X has the
following discrete distribution:
Pr(X = 1) = 0.1, Pr(X = 2) = 0.4,
Pr(X = 3) = 0.3, Pr(X = 4) = 0.2.
Here, Pr(X ≤ 2) = 1/2, and Pr(X ≥ 3) = 1/2. Therefore, every value ofmin the closed
interval 2 ≤ m ≤ 3 will be a median of this distribution. The most popular choice of
median of this distribution would be the midpoint 2.5.  
Example
4.5.3
The Median of a Continuous Distribution. Suppose thatXhas a continuous distribution
for which the p.d.f. is as follows:
f (x) =
 
4x3 for 0 < x <1,
0 otherwise.
The unique median of this distribution will be the number m such that
  m
0
4x3 dx =
  1
m
4x3 dx = 1
2
.
This number is m = 1/21/4.  
Example
4.5.4
A Continuous Distribution for Which the Median Is Not Unique. Suppose that X has a
continuous distribution for which the p.d.f. is as follows:
f (x) =
⎧⎨
⎩
1/2 for 0 ≤ x ≤ 1,
1 for 2.5 ≤ x ≤ 3,
0 otherwise.
Here, for every value of m in the closed interval 1≤ m ≤ 2.5, Pr(X ≤ m) = Pr(X ≥
m) = 1/2. Therefore, every value of m in the interval 1≤ m ≤ 2.5 is a median of this
distribution.  
Comparison of the Mean and the Median
Example
4.5.5
Last Lottery Number. In a state lottery game, a three-digit number from 000 to 999
is drawn each day. After several years, all but one of the 1000 possible numbers has
been drawn. A lottery official would like to predict how much longer it will be until
that missing number is finally drawn. Let X be the number of days (X = 1 being
tomorrow) until that number appears. It is not difficult to determine the distribution
of X, assuming that all 1000 numbers are equally likely to be drawn each day and
4.5 The Mean and the Median 243
that the draws are independent. Let Ax stand for the event that the missing number
is drawn on day x for x = 1, 2, . . . . Then {X = 1} = A1, and for x >1,
{X = x} = Ac
1
∩ . . . ∩ Ac
x−1
∩ Ax.
Since the Ax events are independent and all have probability 0.001, it is easy to see
that the p.f. of X is
f (x) =
 
0.001(0.999)x−1 for x = 1, 2, . . .
0 otherwise.
But, the lottery official wants to give a single-number prediction for when the number
will be drawn. What summary of the distribution would be appropriate for this
prediction?  
The lottery official in Example 4.5.5 wants some sort of “average” or “middle”
number to summarize the distribution of the number of days until the last number
appears. Presumably she wants a prediction that is neither excessively large nor too
small. Either the mean or a median of X can be used as such a summary of the
distribution. Some important properties of the mean have already been described in
this chapter, and several more properties will be given later in the book. However, for
many purposes the median is a more useful measure of the middle of the distribution
than is the mean. For example, every distribution has a median, but not every
distribution has a mean. As illustrated in Example 4.3.5, the mean of a distribution
can be made very large by removing a small but positive amount of probability from
any part of the distribution and assigning this amount to a sufficiently large value of x.
Onthe other hand, the median may be unaffected by a similar change in probabilities.
If any amount of probability is removed from a value of x larger than the median
and assigned to an arbitrarily large value of x, the median of the new distribution
will be the same as that of the original distribution. In Example 4.3.5, all numbers in
the interval [0, 1] are medians of both random variables X and Y despite the large
difference in their means.
Example
4.5.6
Annual Incomes. Suppose that the mean annual income among the families in a
certain community is $30,000. It is possible that only a few families in the community
actually have an income as large as $30,000, but those few families have incomes that
are very much larger than $30,000. As an extreme example, suppose that there are
100 families and 99 of them have income of $1,000 while the other one has income
of $2,901,000. If, however, the median annual income among the families is $30,000,
then at least one-half of the families must have incomes of $30,000 or more.  
The median has one convenient property that the mean does not have.
Theorem
4.5.1
One-to-One Function. Let X be a random variable that takes values in an interval I
of real numbers. Let r be a one-to-one function defined on the interval I. If m is a
median of X, then r(m) is a median of r(X).
Proof Let Y = r(X). We need to show that Pr(Y ≥ r(m)) ≥ 1/2 and Pr(Y ≤ r(m)) ≥
1/2. Since r is one-to-one on the interval I , it must be either increasing or decreasing
over the interval I. If r is increasing, then Y ≥ r(m) if and only if X ≥ m, so Pr(Y ≥
r(m)) = Pr(X ≥ m) ≥ 1/2. Similarly, Y ≤ r(m) if and only ifX ≤ mand Pr(Y ≤ r(m)) ≥
1/2 also. If r is decreasing, then Y ≥ r(m) if and only if X ≤ m. The remainder of the
proof is then similar to the preceding.
244 Chapter 4 Expectation
We shall now consider two specific criteria by which the prediction of a random
variable X can be judged. By the first criterion, the optimal prediction that can be
made is the mean. By the second criterion, the optimal prediction is the median.
Minimizing the Mean Squared Error
Suppose that X is a random variable with mean μ and variance σ2. Suppose also that
the value of X is to be observed in some experiment, but this value must be predicted
before the observation can be made. One basis for making the prediction is to select
some number d for which the expected value of the square of the error X − d will be
a minimum.
Definition
4.5.2
Mean Squared Error/M.S.E.. The number E[(X − d)2] is called the mean squared error
(M.S.E.) of the prediction d.
The next result shows that the number d for which the M.S.E. is minimized is
E(X).
Theorem
4.5.2
Let X be a random variable with finite variance σ2, and let μ = E(X). For every
number d,
E[(X − μ)2]≤ E[(X − d)2]. (4.5.1)
Furthermore, there will be equality in the relation (4.5.1) if and only if d = μ.
Proof For every value of d,
E[(X − d)2]= E(X2 − 2 dX + d2)
= E(X2) − 2 dμ + d2. (4.5.2)
The final expression in Eq. (4.5.2) is simply a quadratic function of d. By elementary
differentiation it will be found that the minimum value of this function is attained
when d = μ. Hence, in order to minimize the M.S.E., the predicted value of X
should be its mean μ. Furthermore, when this prediction is used, the M.S.E. is simply
E[(X − μ)2]= σ2.
Example
4.5.7
Last Lottery Number. In Example 4.5.5, we discussed a state lottery in which one
number had never yet been drawn. Let X stand for the number of days until that
last number is eventually drawn. The p.f. of X was computed in Example 4.5.5 as
f (x) =
 
0.001(0.999)x−1 for x = 1, 2, . . .
0 otherwise.
We can compute the mean of X as
E(X) =
∞ 
x=1
x0.001(0.999)x−1 = 0.001
∞ 
x=1
x(0.999)x−1. (4.5.3)
At first, this sum does not look like one that is easy to compute. However, it is closely
related to the general sum
g(y) =
∞ 
x=0
yx = 1
1− y
,
4.5 The Mean and the Median 245
if 0 <y <1. Using properties of power series from calculus, we know that the derivative
of g(y) can be found by differentiating the individual terms of the power series.
That is,
g
 
(y) =
∞ 
x=0
xyx−1 =
∞ 
x=1
xyx−1,
for 0 < y <1. But we also know that g
 
(y) = 1/(1− y)2. The last sum in Eq. (4.5.3) is
g
 
(0.999) = 1/(0.001)2. It follows that
E(X) = 0.001
1
(0.001)2
= 1000.  
Minimizing the Mean Absolute Error
Another possible basis for predicting the value of a random variable X is to choose
some number d for which E(|X − d|) will be a minimum.
Definition
4.5.3
Mean Absolute Error/M.A.E. The number E(|X − d|) is called the mean absolute error
(M.A.E.) of the prediction d.
We shall now show that the M.A.E. is minimized when the chosen value of d is a
median of the distribution of X.
Theorem
4.5.3
LetX be a random variable with finite mean, and letmbe a median of the distribution
of X. For every number d,
E(|X − m|) ≤ E(|X − d|). (4.5.4)
Furthermore, there will be equality in the relation (4.5.4) if and only if d is also a
median of the distribution of X.
Proof For convenience, we shall assume that X has a continuous distribution for
which the p.d.f. is f . The proof for any other type of distribution is similar. Suppose
first that d >m. Then
E(|X − d|) − E(|X − m|) =
  ∞
−∞
(|x − d| − |x − m|)f (x) dx
=
  m
−∞
(d − m)f (x) dx +
  d
m
(d + m − 2x)f (x) dx +
  ∞
d
(m − d)f (x) dx
≥
  m
−∞
(d − m)f (x) dx +
  d
m
(m − d)f (x) dx +
  ∞
d
(m − d)f (x) dx
= (d − m)[Pr(X ≤ m) − Pr(X > m)]. (4.5.5)
Since m is a median of the distribution of X, it follows that
Pr(X ≤ m) ≥ 1/2 ≥ Pr(X > m). (4.5.6)
The final difference in the relation (4.5.5) is therefore nonnegative. Hence,
E(|X − d|) ≥ E(|X − m|). (4.5.7)
Furthermore, there can be equality in the relation (4.5.7) only if the inequalities in
relations (4.5.5) and (4.5.6) are actually equalities.Acareful analysis shows that these
inequalities will be equalities only if d is also a median of the distribution of X.
The proof for every value of d such that d <mis similar.
246 Chapter 4 Expectation
Example
4.5.8
Last Lottery Number. In Example 4.5.5, in order to compute the median ofX, we must
find the smallest number x such that the c.d.f. F(x) ≥ 0.5. For integer x, we have
F(x) =
 x
n=1
0.001(0.999)n−1.
We can use the popular formula
 x
n=0
yn = 1− yx+1
1− y
to see that, for integer x ≥ 1,
F(x) = 0.001
1− (0.999)x
1− 0.999
= 1− (0.999)x.
Setting this equal to 0.5 and solving for x gives x = 692.8; hence, the median of X is
693.The median is unique becauseF(x) never takes the exact value 0.5 for any integer
x. The median of X is much smaller than the mean of 1000 found in Example 4.5.7.
 
The reason that the mean is so much larger than the median in Examples 4.5.7
and 4.5.8 is that the distribution has probability at arbitrarily large values but is
bounded below. The probability at these large values pulls the mean up because there
is no probability at equally small values to balance. The median is not affected by
how the upper half of the probability is distributed. The following example involves
a symmetric distribution. Here, the mean and median(s) are more similar.
Example
4.5.9
Predicting a Discrete Uniform Random Variable. Suppose that the probability is 1/6
that a random variable X will take each of the following six values: 1, 2, 3, 4, 5, 6.We
shall determine the prediction for which the M.S.E. is minimum and the prediction
for which the M.A.E. is minimum.
In this example,
E(X) = 1
6
(1+ 2 + 3 + 4 + 5 + 6) = 3.5.
Therefore, the M.S.E. will be minimized by the unique value d = 3.5.
Also, every number m in the closed interval 3 ≤ m ≤ 4 is a median of the given
distribution. Therefore, the M.A.E. will be minimized by every value of d such that
3 ≤ d ≤ 4 and only by such a value of d. Because the distribution of X is symmetric,
the mean of X is also a median of X.  
Note: When the M.A.E. and M.S.E. Are Finite. We noted that the median exists for
every distribution, but the M.A.E. is finite if and only if the distribution has a finite
mean. Similarly, the M.S.E. is finite if and only if the distribution has a finite variance.
Summary
A median of X is any number m such that Pr(X ≤ m) ≥ 1/2 and Pr(X ≥ m) ≥ 1/2.
To minimize E(|X − d|) by choice of d, one must choose d to be a median of X. To
minimize E[(X − d)2] by choice of d, one must choose d = E(X).
4.5 The Mean and the Median 247
Exercises
1. Prove that the 1/2 quantile as defined in Definition 3.3.2
is a median as defined in Definition 4.5.1.
2. Suppose that a random variable X has a discrete distribution
for which the p.f. is as follows:
f (x) =
 
cx for x = 1, 2, 3, 4, 5, 6,
0 otherwise.
Determine all the medians of this distribution.
3. Suppose that a random variable X has a continuous
distribution for which the p.d.f. is as follows:
f (x) =
 
e
−x for x >0,
0 otherwise.
Determine all the medians of this distribution.
4. In a small community consisting of 153 families, the
number of families that have k children (k = 0, 1, 2, . . .)
is given in the following table:
Number of Number of
children families
0 21
1 40
2 42
3 27
4 or more 23
Determine the mean and the median of the number of
children per family. (For the mean, assume that all families
with four or more children have only four children. Why
doesn’t this point matter for the median?)
5. Suppose that an observed value ofX is equally likely to
come from a continuous distribution for which the p.d.f.
is f or from one for which the p.d.f. is g. Suppose that
f (x)>0 for 0 < x <1 and f (x) = 0 otherwise, and suppose
also that g(x) > 0 for 2 < x <4 and g(x) = 0 otherwise.
Determine: (a) the mean and
(b) the median of the distribution of X.
6. Suppose that a random variable X has a continuous
distribution for which the p.d.f. f is as follows:
f (x) =
 
2x for 0 < x <1,
0 otherwise.
Determine the value of d that minimizes
(a) E[(X − d)2] and (b) E(|X − d|).
7. Suppose that a person’s score X on a certain examination
will be a number in the interval 0 ≤ X ≤ 1 and that
X has a continuous distribution for which the p.d.f. is as
follows:
f (x) =
 
x + 1
2 for 0 ≤ x ≤ 1,
0 otherwise.
Determine the prediction of X that minimizes (a) the
M.S.E. and (b) the M.A.E.
8. Suppose that the distribution of a random variable
X is symmetric with respect to the point x = 0 and that
E(X4) <∞. Show that E[(X − d)4] is minimized by the
value d = 0.
9. Suppose that a fire can occur at any one of five points
along a road. These points are located at −3, −1, 0, 1, and
2 in Fig. 4.9. Suppose also that the probability that each of
these points will be the location of the next fire that occurs
along the road is as specified in Fig. 4.9.
 3
0.2
0.1 0.1
0.4
0.2
 1 0 1 2 Road
Figure 4.9 Probabilities for Exercise 9.
a. At what point along the road should a fire engine
wait in order to minimize the expected value of the
square of the distance that it must travel to the next
fire?
b. Where should the fire engine wait to minimize the
expected value of the distance that it must travel to
the next fire?
10. If n houses are located at various points along a
straight road, at what point along the road should a store
be located in order to minimize the sum of the distances
from the n houses to the store?
11. Let X be a random variable having the binomial distribution
with parameters n = 7 and p = 1/4, and let Y be
a random variable having the binomial distribution with
parameters n = 5 and p = 1/2.Which of these two random
variables can be predicted with the smaller M.S.E.?
12. Consider a coin for which the probability of obtaining
a head on each given toss is 0.3. Suppose that the coin is to
be tossed 15 times, and let X denote the number of heads
that will be obtained.
a. What prediction of X has the smallest M.S.E.?
b. What prediction of X has the smallest M.A.E.?
13. Suppose that the distribution of X is symmetric
around a point m. Prove that m is a median of X.
248 Chapter 4 Expectation
14. Find the median of the Cauchy distribution defined in
Example 4.1.8.
15. LetX be a random variable with c.d.f. F. Suppose that
a <b are numbers such that both a and b are medians of
X.
a. Prove that F(a) = 1/2.
b. Prove that there exist a smallest c ≤ a and a largest
d ≥ b such that every number in the closed interval
[c, d] is a median of X.
c. If X has a discrete distribution, prove that F(d) >
1/2.
16. Let X be a random variable. Suppose that there exists
a number m such that Pr(X < m) = Pr(X > m). Prove that
m is a median of the distribution of X.
17. Let X be a random variable. Suppose that there exists
a number m such that Pr(X <m) < 1/2 and Pr(X >m) <
1/2. Prove that m is the unique median of the distribution
of X.
18. Prove the following extension of Theorem 4.5.1. Let
m be the p quantile of the random variable X. (See Definition
3.3.2.) If r is a strictly increasing function, then r(m)
is the p quantile of r(X).
