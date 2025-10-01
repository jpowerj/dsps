(sec-5-4)=
# 5.4 The Poisson Distributions

(sec-5-4-0)=
# Overview

*Many experiments consist of observing the occurrence times of random arrivals. Examples include arrivals of customers for service, arrivals of calls at a switchboard, occurrences of floods and other natural and man-made disasters, and so forth. The family of Poisson distributions is used to model the number of such arrivals that occur in a fixed time period. Poisson distributions are also useful approximations to binomial distributions with very small success probabilities.*

(sec-5-4-1)=
# 5.4.1 Definition and Properties of the Poisson Distributions

## Example 5.4.1: Customer Arrivals

A store owner believes that customers arrive at his store at a rate
of 4.5 customers per hour on average. He wants to find the distribution of the actual
number X of customers who will arrive during a particular one-hour period later in
the day.He models customer arrivals in different time periods as independent of each
other.As a first approximation, he divides the one-hour period into 3600 seconds and
thinks of the arrival rate as being 4.5/3600 = 0.00125 per second. He then says that
during each second either 0 or 1 customers will arrive, and the probability of an arrival
during any single second is 0.00125.He then tries to use the binomial distribution with
288 Chapter 5 Special Distributions
parameters n = 3600 and p = 0.00125 for the distribution of the number of customers
who arrive during the one-hour period later in the day.
Hestarts calculating f , the p.f. of this binomial distribution, and quickly discovers
how cumbersome the calculations are. However, he realizes that the successive values
of f (x) are closely related to each other because f (x) changes in a systematic way
as x increases. So he computes
f (x + 1)
f (x)
=
  n
x+1
 
px+1(1− p)n−x−1
 n
x
 
px(1− p)n−x
= (n − x)p
(x + 1)(1− p)
≈ np
x + 1
,
where the reasoning for the approximation at the end is as follows: For the first 30
or so values of x, n − x is essentially the same as n and dividing by 1− p has almost
no effect because p is so small. For example, for x = 30, the actual value is 0.1441,
while the approximation is 0.1452. This approximation suggests defining λ = np and
approximating f (x + 1) ≈ f (x)λ/(x + 1) for all the values of x that matter. That is,
f (1) = f (0)λ,
f (2) = f (1)
λ
2
= f (0)
λ2
2
,
f (3) = f (2)
λ
3
= f (0)
λ3
6
,
...
Continuing the pattern for all x yields f (x) = f (0)λx/x! for all x. To obtain a p.f. for
X, he would need to make sure that
 ∞
x=0 f (x) = 1. This is easily achieved by setting
f (0) = 1
 ∞
x=0 λx/x!
= e
−λ,
where the last equality follows from the following well-known calculus result:
eλ =
∞ 
x=0
λx
x!
, (5.4.1)
for all λ>0. Hence, f (x) = e
−λλx/x! for x = 0, 1, . . . and f (x) = 0 otherwise is a p.f.
 
The approximation formula for the p.f. of a binomial distribution at the end
of Example 5.4.1 is actually a useful p.f. that can model many phenomena of types
similar to the arrivals of customers.
Definition
5.4.1
Poisson Distribution. Let λ > 0. A random variable X has the Poisson distribution
with mean λ if the p.f. of X is as follows:
f (x|λ) =
⎧⎨
⎩
e
−λλx
x!
for x = 0, 1, 2, . . . ,
0 otherwise.
(5.4.2)
At the end of Example 5.4.1, we proved that the function in Eq. (5.4.2) is indeed
a p.f. In order to justify the phrase “with mean λ” in the definition of the distribution,
we need to prove that the mean is indeed λ.
Theorem
5.4.1
Mean. The mean of the distribution with p.f. equal to (5.4.2) is λ.
5.4 The Poisson Distributions 289
Proof If X has the distribution with p.f. f (x|λ), then E(X) is given by the following
infinite series:
E(X) =
∞ 
x=0
xf (x|λ).
Since the term corresponding to x = 0 in this series is 0, we can omit this term and
can begin the summation with the term for x = 1. Therefore,
E(X) =
∞ 
x=1
xf (x|λ) =
∞ 
x=1
x
e
−λλx
x!
= λ
∞ 
x=1
e
−λλx−1
(x − 1)!
.
If we now let y = x − 1 in this summation, we obtain
E(X) = λ
∞ 
y=0
e
−λλy
y!
.
The sum of the series in this equation is the sum of f (y|λ), which equals 1. Hence,
E(X) = λ.
Example
5.4.2
Customer Arrivals. In Example 5.4.1, the store owner was approximating the binomial
distribution with parameters 3600 and 0.00125 with a distribution that we now know
as the Poisson distribution with mean λ = 3600 × 0.00125 = 4.5. For x = 0, . . . , 9,
Table 5.1 has the binomial and corresponding Poisson probabilities.
The division of the one-hour period into 3600 seconds was somewhat arbitrary.
The owner could have divided the hour into 7200 half-seconds or 14400 quarterseconds,
etc. Regardless of how finely the time is divided, the product of the number
of time intervals and the rate in customers per time interval will always be 4.5 because
they are all based on a rate of 4.5 customers per hour. Perhaps the store owner would
do better simply modeling the numberX of arrivals as a Poisson random variable with
mean 4.5, rather than choosing an arbitrarily sized time interval to accommodate a
tedious binomial calculation. The disadvantage to the Poisson model for X is that
there is positive probability that a Poisson random variable will be arbitrarily large,
whereas a binomial random variable with parameters n and p can never exceed n.
However, the probability is essentially 0 that a Poisson random variable with mean
4.5 will exceed 19.  
Table 5.1 Binomial and Poisson probabilities in Example 5.4.2
x
0 1 2 3 4
Binomial 0.01108 0.04991 0.11241 0.16874 0.18991
Poisson 0.01111 0.04999 0.11248 0.16872 0.18981
x
5 6 7 8 9
Binomial 0.17094 0.12819 0.08237 0.04630 0.02313
Poisson 0.17083 0.12812 0.08237 0.04633 0.02317
290 Chapter 5 Special Distributions
Theorem
5.4.2
Variance. The variance of the Poisson distribution with mean λ is also λ.
Proof The variance can be found by a technique similar to the one used in the
proof of Theorem 5.4.1 to find the mean. We begin by considering the following
expectation:
E[X(X − 1)]=
∞ 
x=0
x(x − 1)f (x|λ) =
∞ 
x=2
x(x − 1)f (x|λ)
=
∞ 
x=2
x(x − 1)
e
−λλx
x!
= λ2
∞ 
x=2
e
−λλx−2
(x − 2)!
.
If we let y = x − 2, we obtain
E[X(X − 1)]= λ2
∞ 
y=0
e
−λλy
y!
= λ2. (5.4.3)
Since E[X(X − 1)]= E(X2) − E(X) = E(X2) − λ, it follows from Eq. (5.4.3) that
E(X2) = λ2 + λ. Therefore,
Var(X) = E(X2) − [E(X)]2 = λ. (5.4.4)
Hence, the variance is also equal to λ.

## Theorem 5.4.3: Moment Generating Function

The m.g.f. of the Poisson distribution with mean λ is
ψ(t) = eλ(et−1), (5.4.5)
for all real t .
Proof For every value of t (−∞< t <∞),
ψ(t) = E(etX) =
∞ 
x=0
etxe
−λλx
x!
= e
−λ
∞ 
x=0
(λet)x
x!
.
It follows from Eq. (5.4.1) that, for −∞< t <∞,
ψ(t) = e
−λeλet = eλ(et−1).
The mean and the variance, as well as all other moments, can be determined
from the m.g.f. given in Eq. (5.4.5). We shall not derive the values of any other
moments here, but we shall use the m.g.f. to derive the following property of Poisson
distributions.

## Theorem 5.4.4

If the random variables X1, . . . ,Xk are independent and if Xi has the Poisson distribution
with mean λi (i = 1, . . . , k), then the sum X1 + . . . + Xk has the Poisson
distribution with mean λ1 + . . . + λk.
Proof Let ψi(t) denote the m.g.f. of Xi for i = 1, . . . , k, and let ψ(t) denote the
m.g.f. of the sum X1 + . . . + Xk. Since X1, . . . , Xk are independent, it follows that,
for −∞< t <∞,
ψ(t) =
!k
i=1
ψi(t) =
!k
i=1
eλi(et−1) = e(λ1+...+λk)(et−1).
5.4 The Poisson Distributions 291
It can be seen from Eq. (5.4.5) that this m.g.f. ψ(t) is the m.g.f. of the Poisson
distribution with mean λ1 + . . . + λk. Hence, the distribution of X1 + . . . + Xk must
be as stated in the theorem.
Atable of probabilities for Poisson distributions with various values of the mean
λ is given at the end of this book.
Example
5.4.3
Customer Arrivals. Suppose that the store owner in Examples 5.4.1 and 5.4.2 is interested
not only in the number of customers that arrive in the one-hour period,
but also in how many customers arrive in the next hour after that period. Let Y be
the number of customers that arrive in the second hour. By the reasoning at the
end of Example 5.4.2, the owner might model Y as a Poisson random variable with
mean 4.5. He would also say that X and Y are independent because he has been
assuming that arrivals in disjoint time intervals are independent. According to Theorem
5.4.4, X + Y would have the Poisson distribution with mean 4.5+ 4.5= 9.What
is the probability that at least 12 customers will arrive in the entire two-hour period?
We can use the table of Poisson probabilities in the back of this book by looking in
the λ = 9 column. Either add up the numbers corresponding to k = 0, . . . , 11 and
subtract the total from 1, or add up those from k = 12 to the end. Either way, the
result is Pr(X ≥ 12) = 0.1970.  
The Poisson Approximation to Binomial Distributions
In Examples 5.4.1 and 5.4.2, we illustrated how close the Poisson distribution with
mean 4.5 is to the binomial distribution with parameters 3600 and 0.00125.We shall
now demonstrate a general version of that result, namely, that when the value of n
is large and the value of p is close to 0, the binomial distribution with parameters n
and p can be approximated by the Poisson distribution with mean np.
Theorem
5.4.5
Closeness of Binomial and Poisson Distributions. For each integer n and each 0<p<1,
let f (x|n, p) denote the p.f. of the binomial distribution with parameters n and p.
Let f (x|λ) denote the p.f. of the Poisson distribution with mean λ. Let {pn
}∞
n=1 be a
sequence of numbers between 0 and 1 such that limn→∞ npn
= λ. Then
lim
n→∞
f (x|n, pn) = f (x|λ),
for all x = 0, 1, . . . .
Proof We begin by writing
f (x|n, pn) = n(n − 1) . . . (n − x + 1)
x!
px
n(1− pn)n−x.
Next, let λn
= npn so that limn→∞ λn
= λ. Then f (x|n, pn) can be rewritten in the
following form:
f (x|n, pn) =
λx
n
x!
n
n
. n − 1
n
. . . n − x + 1
n


1− λn
n
 n

1− λn
n
 −x
. (5.4.6)
For each x ≥ 0,
lim
n→∞
n
n
. n − 1
n
. . . n − x + 1
n


1− λn
n
 −x
= 1.
292 Chapter 5 Special Distributions
Furthermore, it follows from Theorem 5.3.3 that
lim
n→∞


1− λn
n
 n
= e
−λ. (5.4.7)
It now follows from Eq. (5.4.6) that for every x ≥ 0,
lim
n→∞
f (x|n, pn) = e
−λλx
x!
= f (x|λ).
Example
5.4.4
Approximating a Probability. Suppose that in a large population the proportion of
people who have a certain disease is 0.01.We shall determine the probability that in
a random group of 200 people at least four people will have the disease.
In this example, we can assume that the exact distribution of the number of
people having the disease among the 200 people in the random group is the binomial
distribution with parameters n = 200 and p = 0.01. Therefore, this distribution can
be approximated by the Poisson distribution for which the mean is λ = np = 2. If X
denotes a random variable having this Poisson distribution, then it can be found from
the table of the Poisson distribution at the end of this book that Pr(X ≥ 4) = 0.1428.
Hence, the probability that at least four people will have the disease is approximately
0.1428. The actual value is 0.1420.  
Theorem 5.4.5 says that if n is large and p is small so that np is close to λ, then the
binomial distribution with parameters n and p is close to the Poisson distribution with
mean λ. Recall Theorem 5.3.4, which says that if A and B are large compared to n and
ifA/(A + B) is close to p, then the hypergeometric distribution with parametersA, B,
and n is close to the binomial distribution with parameters n and p. These two results
can be combined into the following theorem, whose proof is left to Exercise 17.
Theorem
5.4.6
Closeness of Hypergeometric and Poisson Distributions. Let λ > 0. Let Y have the
Poisson distribution with mean λ. For each positive integer T , let AT , BT , and
nT be integers such that limT→∞ AT
=∞, limT→∞ BT
=∞, limT→∞ nT
=∞, and
limT→∞ nTAT /(AT
+ BT ) = λ. Let XT have the hypergeometric distribution with
parameters AT , BT , and nT . For each fixed x = 0, 1, . . .,
lim
T→∞
Pr(Y = x)
Pr(XT
= x)
= 1.
Poisson Processes
Example
5.4.5
Customer Arrivals. In Example 5.4.3, the store owner believes that the number of
customers that arrive in each one-hour period has the Poisson distribution with mean
4.5. What if the owner is interested in a half-hour period or a 4-hour and 15-minute
period? Is it safe to assume that the number of customers that arrive in a half-hour
period has the Poisson distribution with mean 2.25?  
In order to be sure that all of the distributions for the various numbers of arrivals
in Example 5.4.5 are consistent with each other, the store owner needs to think about
the overall process of customer arrivals, not just a few isolated time periods. The
following definition gives a model for the overall process of arrivals that will allow
the store owner to construct distributions for all the counts of customer arrivals that
interest him as well as other useful things.
5.4 The Poisson Distributions 293
Definition
5.4.2
Poisson Process. APoisson process with rate λ per unit time is a process that satisfies
the following two properties:
i. The number of arrivals in every fixed interval of time of length t has the Poisson
distribution with mean λt.
ii. The numbers of arrivals in every collection of disjoint time intervals are independent.
The answer to the question at the end of Example 5.4.5 will be “yes” if the store
owner makes the assumption that customers arrive according to a Poisson process
with rate 4.5 per hour. Here is another example.
Example
5.4.6
Radioactive Particles. Suppose that radioactive particles strike a certain target in
accordance with a Poisson process at an average rate of three particles per minute.
We shall determine the probability that 10 or more particles will strike the target in
a particular two-minute period.
In a Poisson process, the number of particles striking the target in any particular
one-minute period has the Poisson distribution with mean λ. Since the mean number
of strikes in any one-minute period is 3, it follows that λ = 3 in this example.
Therefore, the number of strikes X in any two-minute period will have the Poisson
distribution with mean 6. It can be found from the table of the Poisson distribution
at the end of this book that Pr(X ≥ 10) = 0.0838.  
Note: Generality of Poisson Processes. Although we have introduced Poisson processes
in terms of counts of arrivals during time intervals, Poisson processes are
actually more general. For example, a Poisson process can be used to model occurrences
in space as well as time. A Poisson process could be used to model telephone
calls arriving at a switchboard, atomic particles emitted from a radioactive source,
diseased trees in a forest, or defects on the surface of a manufactured product. The
reason for the popularity of the Poisson process model is twofold. First, the model
is computationally convenient. Second, there is a mathematical justification for the
model if one makes three plausible assumptions about how the phenomena occur.
We shall present the three assumptions in some detail after another example.
Example
5.4.7
Cryptosporidium in Drinking Water. Cryptosporidium is a genus of protozoa that occurs
as small oocysts and can cause painful sickness and even death when ingested.
Occasionally, oocysts are detected in public drinking water supplies.Aconcentration
as low as one oocyst per five liters can be enough to trigger a boil-water advisory. In
April 1993, many thousands of people became ill during a cryptosporidiosis outbreak
in Milwaukee, Wisconsin. Different water systems have different systems for monitoring
protozoa occurrence in drinking water. One problem with monitoring systems
is that detection technology is not always very sensitive. One popular technique is to
push a large amount of water through a very fine filter and then treat the material
captured on the filter in a way that identifies Cryptosporidium oocysts. The number
of oocysts is then counted and recorded. Even if there is an oocyst on the filter, the
probability can be as low as 0.1 that it will get counted.
Suppose that, in a particular water supply, oocysts occur according to a Poisson
process with rate λ oocysts per liter. Suppose that the filtering system is capable of
capturing all oocysts in a sample, but that the counting system has probability p of
actually observing each oocyst that is on the filter. Assume that the counting system
observes or misses each oocyst on the filter independently. What is the distribution
of the number of counted oocysts from t liters of filtered water?
294 Chapter 5 Special Distributions
Let Y be the number of oocysts in the t liters (all of which make it onto the filter).
Then Y has the Poisson distribution with mean λt. Let Xi
= 1 if the ith oocyst on the
filter gets counted, and Xi
= 0 if not. Let X be the counted number of oocysts so that
X = X1 + . . . + Xy if Y = y. Conditional on Y = y, we have assumed that the Xi are
independent Bernoulli random variables with parameter p, so X has the binomial
distribution with parameters y and p conditional on Y = y. We want the marginal
distribution of X. This can be found using the law of total probability for random
variables (3.6.11). For x = 0, 1, . . . ,
f1(x) =
∞ 
y=0
g1(x|y)f2(y)
=
∞ 
y=x


y
x
 
px(1− p)y−xe
−λt (λt)y
y!
= e
−λt (pλt)x
x!
∞ 
y=x
[λt (1− p)]y−x
(y − x)!
= e
−λt (pλt)x
x!
∞ 
u=0
[λt (1− p)]u
u!
= e
−λt (pλt)x
x!
eλt (1−p) = e
−pλt (pλt)x
x!
.
This is easily recognized as the p.f. of the Poisson distribution with mean pλt. The
effect of losing a fraction 1− p of the oocyst count is merely to lower the rate of the
Poisson process from λ per liter to pλ per liter.
Suppose that λ = 0.2 and p = 0.1. How much water must we filter in order
for there to be probability at least 0.9 that we will count at least one oocyst? The
probability of counting at least one oocyst is 1 minus the probability of counting
none, which is e
−pλt = e
−0.02t . So, we need t large enough so that 1− e
−0.02t ≥ 0.9,
that is, t ≥ 115.Atypical procedure is to test 100 liters, which would have probability
1− e
−.02×100 = 0.86 of detecting at least one oocyst.

# Assumptions Underlying the Poisson Process Model

In what follows, we shall refer to time intervals, but the assumptions can be used
equally well for subregions of two- or three-dimensional regions or sublengths of
a linear distance. Indeed, a Poisson process can be used to model occurrences in
any region that can be subdivided into arbitrarily small pieces. There are three
assumptions that lead to the Poisson process model.
The first assumption is that the numbers of occurrences in any collection of
disjoint intervals of time must be mutually independent. For example, even though
an unusually large number of telephone calls are received at a switchboard during
a particular interval, the probability that at least one call will be received during a
forthcoming interval remains unchanged. Similarly, even though no call has been
received at the switchboard for an unusually long interval, the probability that a call
will be received during the next short interval remains unchanged.
The second assumption is that the probability of an occurrence during each
very short interval of time must be approximately proportional to the length of
that interval. To express this condition more formally, we shall use the standard

mathematical notation in which o(t) denotes any function of t having the property
that
lim

t→0
o(t)
t
= 0. (5.4.8)

According to @eq-5-4-8, o(t) must be a function that approaches 0 as t →0, and, furthermore,
this function must approach 0 at a rate faster than t itself.

An example of
such a function is o(t) = tα, where α >1. It can be verified that this function satisfies
Eq. (5.4.8). The second assumption can now be expressed as follows: There exists a
constant λ>0 such that for every time interval of length t , the probability of at least
one occurrence during that interval has the form λt + o(t). Thus, for every very small
value of t , the probability of at least one occurrence during an interval of length t is
equal to λt plus a quantity having a smaller order of magnitude.
One of the consequences of the second assumption is that the process being observed
must be stationary over the entire period of observation; that is, the probability
of an occurrence must be the same over the entire period. There can be neither busy
intervals, during which we know in advance that occurrences are likely to be more
frequent, nor quiet intervals, during which we know in advance that occurrences are
likely to be less frequent. This condition is reflected in the fact that the same constant
λ expresses the probability of an occurrence in every interval over the entire
period of observation. The second assumption can be relaxed at the cost of more
complicated mathematics, but we shall not do so here.

The third assumption is that, for each very short interval of time, the probability
that there will be two or more occurrences in that interval must have a smaller order
of magnitude than the probability that there will be just one occurrence. In symbols,
the probability of two or more occurrences in a time interval of length t must be
o(t). Thus, the probability of two or more occurrences in a small interval must be
negligible in comparison with the probability of one occurrence in that interval. Of
course, it follows from the second assumption that the probability of one occurrence
in that same interval will itself be negligible in comparison with the probability of no
occurrences.

Under the preceding three assumptions, it can be shown that the process will
satisfy the definition of a Poisson process with rate λ. See Exercise 16 in this section
for one method of proof.

# Summary

Poisson distributions are used to model data that arrive as counts. A Poisson process
with rate λ is a model for random occurrences that have a constant expected rate λ
per unit time (or per unit area). We must assume that occurrences in disjoint time
intervals (or disjoint areas) are independent and that two or more occurrences cannot
happen at the same time (or place). The number of occurrences in an interval of
length (or area of size) t has the Poisson distribution with mean tλ. If n is large and
p is small, then the binomial distribution with parameters n and p is approximately
the same as the Poisson distribution with mean np.

# Exercises

1. In Example 5.4.7, with λ = 0.2 and p = 0.1, compute
the probability that we would detect at least two oocysts
after filtering 100 liters of water.
2. Suppose that on a given weekend the number of accidents
at a certain intersection has the Poisson distribution
with mean 0.7.What is the probability that there will be at
least three accidents at the intersection during the weekend?
3. Suppose that the number of defects on a bolt of cloth
produced by a certain process has the Poisson distribution
with mean 0.4. If a random sample of five bolts of cloth is
inspected, what is the probability that the total number of
defects on the five bolts will be at least 6?
4. Suppose that in a certain book there are on the average
λ misprints per page and that misprints occurred according
to a Poisson process. What is the probability that a
particular page will contain no misprints?
5. Suppose that a book with n pages contains on the average
λ misprints per page. What is the probability that
there will be at least m pages which contain more than k
misprints?
6. Suppose that a certain type of magnetic tape contains
on the average three defects per 1000 feet. What is the
probability that a roll of tape 1200 feet long contains no
defects?
7. Suppose that on the average a certain store serves 15
customers per hour.What is the probability that the store
will serve more than 20 customers in a particular two-hour
period?
8. Suppose that X1 and X2 are independent random variables
and that Xi has the Poisson distribution with mean
λi (i = 1, 2). For each fixed value of k (k = 1, 2, . . .), determine
the conditional distribution of X1 given that X1 +
X2 = k.
9. Suppose that the total number of items produced by
a certain machine has the Poisson distribution with mean
λ, all items are produced independently of one another,
and the probability that any given item produced by the
machine will be defective is p. Determine the marginal
distribution of the number of defective items produced by
the machine.
10. For the problem described in Exercise 9, let X denote
the number of defective items produced by the machine,
and let Y denote the number of nondefective items produced
by the machine. Show thatX and Y are independent
random variables.
11. The mode of a discrete distribution was defined in
Exercise 12 of Sec. 5.2. Determine the mode or modes of
the Poisson distribution with mean λ.
12. Suppose that the proportion of colorblind people in
a certain population is 0.005. What is the probability that
there will not be more than one colorblind person in a
randomly chosen group of 600 people?
13. The probability of triplets in human births is approximately
0.001. What is the probability that there will be
exactly one set of triplets among 700 births in a large hospital?
14. An airline sells 200 tickets for a certain flight on an
airplane that has only 198 seats because, on the average,
1 percent of purchasers of airline tickets do not appear
for the departure of their flight. Determine the probability
that everyone who appears for the departure of this flight
will have a seat.
15. Suppose that internet users access a particular Web
site according to a Poisson process with rate λ per hour,
but λ is unknown. The Web site maintainer believes that
λ has a continuous distribution with p.d.f.
f (λ) =
 
2e
−2λ for λ > 0,
0 otherwise.
Let X be the number of users who access the Web
site during a one-hour period. If X = 1 is observed, find
the conditional p.d.f. of λ given X = 1.
16. In this exercise, we shall prove that the three assumptions
underlying the Poisson process model do indeed
imply that occurrences happen according to a Poisson
process. What we need to show is that, for each t , the
number of occurrences during a time interval of length t
has the Poisson distribution with mean λt. Let X stand for
the number of occurrences during a particular time interval
of length t . Feel free to use the following extension of
Eq. (5.4.7): For all real a,
lim
u→0
(1+ au + o(u))
1/u = ea, (5.4.9)
a. For each positive integer n, divide the time interval
into n disjoint subintervals of length t/n each. For
i = 1, . . . , n, let Yi
= 1 if exactly one arrival occurs in
the ith subinterval, and letAi be the event that two or
more occurrences occur during the ith subinterval.
Let Wn
= n
i=1 Yi . For each nonnegative integer k,
show that we can write Pr(X = k) = Pr(Wn
= k) +
Pr(B), where B is a subset of ∪n
i=1Ai .
b. Show that limn→∞ Pr(∪n
i=1Ai) = 0. Hint: Show that
Pr(∩n
i=1Ac
i ) = (1+ o(u))1/u where u = 1/n.
c. Show that limn→∞ Pr(Wn
= k) = e
−λ(λt)k/k!. Hint:
limn→∞ n!/[nk(n − k)!]= 1.
d. Show that X has the Poisson distribution with mean
λt.

17. Prove Theorem 5.4.6. One approach is to adapt the
proof of Theorem 5.3.4 by replacing n by nT in that proof.
The steps of the proof that are significanlty different are
the following. (i) You will need to show that BT
− nT goes
to ∞. (ii) The three limits that depend on Theorem 5.3.3
need to be rewritten as ratios converging to 1. For example,
the second one is rewritten as
lim
T→∞


You’ll need a couple more such limits as well. (iii) Instead
of (5.3.12), prove that
lim

= λxe
−λ.
18. Let AT , BT , and nT be sequences, all three of which go
to∞as T →∞. Prove that limT→∞ nTAT /(AT
+ BT ) = λ
if and only if limT→∞ nTAT /BT
= λ.


