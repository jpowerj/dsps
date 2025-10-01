(sec-3-7)=
# 3.7 Multivariate Distributions

(sec-3-7-0)=
# Overview

*In this section, we shall extend the results that were developed in Sections 3.4, 3.5, and 3.6 for two random variables $X$ and $Y$ to an arbitrary finite number $n$ of random variables $X_1, \ldots,X_n$. In general, the joint distribution of more than two random variables is called a multivariate distribution. The theory of statistical inference (the subject of the part of this book beginning with Chapter 7) relies on mathematical models for observable data in which each observation is a random variable. For this reason, multivariate distributions arise naturally in the mathematical models for data. The most commonly used model will be one in which the individual data random variables are conditionally independent given one or two other random variables.*

(sec-3-7-1)=
# 3.7.1 Joint Distributions

:::: {prf:example} A Clinical Trial
:label: exm-3-7-1
:enumerator: 3.7.1

Suppose that m patients with a certain medical condition are given a
treatment, and each patient either recovers from the condition or fails to recover. For
each i = 1, . . . , m, we can let Xi
= 1 if patient i recovers and Xi
= 0 if not.We might
also believe that there is a random variable P having a continuous distribution taking
values between 0 and 1 such that, if we knew that P = p, we would say that the m
patients recover or fail to recover independently of each other each with probability
p of recovery. We now have named n = m + 1 random variables in which we are
interested.

::::

The situation described in @exm-3-7-1 requires us to construct a joint distribution for $n$ random variables. We shall now provide definitions and examples of the important concepts needed to discuss multivariate distributions.

:::: {prf:definition} Joint Distribution Function / CDF
:label: def-3-7-1
:enumerator: 3.7.1

The joint c.d.f. of n random variables X1, . . . , Xn is
the function F whose value at every point (x1, . . . , xn) in n-dimensional space Rn is
specified by the relation
F(x1, . . . , xn) = Pr(X1 ≤ x1, X2 ≤ x2, . . . , Xn
≤ xn). (3.7.1)

::::

Every multivariate CDF satisfies properties similar to those given earlier for univariate and bivariate CDFs.


:::: {prf:example} Failure Times
:label: exm-3-7-2
:enumerator: 3.7.2

Suppose that a machine has three parts, and part i will fail at time Xi
for i = 1, 2, 3. The following function might be the joint c.d.f. of X1, X2, and X3:

::::

## Vector Notation

In the study of the joint distribution of n random variables
X1, . . . , Xn, it is often convenient to use the vector notation X = (X1, . . . , Xn) and
to refer to X as a random vector. Instead of speaking of the joint distribution of
the random variables X1, . . . , Xn with a joint c.d.f. F(x1, . . . , xn), we can simply
speak of the distribution of the random vector X with c.d.f. F(x). When this vector
notation is used, it must be kept in mind that if X is an n-dimensional random vector,
then its c.d.f. is defined as a function on n-dimensional space Rn. At each point
x = (x1, . . . , xn) ∈ Rn, the value of F(x) is specified by Eq. (3.7.1).

:::: {prf:definition} Joint Discrete Distribution / pmf
:label: def-3-7-2
:enumerator: 3.7.2

It is said that n random variables X1, . . . , Xn have a
discrete joint distribution if the random vector (X1, . . . , Xn) can have only a finite
number or an infinite sequence of different possible values (x1, . . . , xn) in Rn. The
joint p.f. of X1, . . . , Xn is then defined as the function f such that for every point
(x1, . . . , xn) ∈ Rn,
f (x1, . . . , xn) = Pr(X1 = x1, . . . , Xn
= xn).

::::

In vector notation, Definition 3.7.2 says that the random vector X has a discrete
distribution and that its p.f. is specified at every point x ∈ Rn by the relation
f (x) = Pr(X = x).

The following result is a simple generalization of @thm-3-4-2.

:::: {prf:theorem}
:label: thm-3-7-1
:enumerator: 3.7.1

If X has a joint discrete distribution with joint p.f. f , then for every subset C ⊂ Rn,

::::

It is easy to show that, if each of X1, . . . , Xn has a discrete distribution, then
X = (X1, . . . , Xn) has a discrete joint distribution.

:::: {prf:example} A Clinical Trial
:label: exm-3-7-3
:enumerator: 3.7.3

Consider the m patients in @exm-3-7-1. Suppose for now that $P = p$ is known so that we don't treat it as a random variable. The joint p.f. of

X = (X1, . . . , Xm) is
f (x) = px1+...+xm(1− p)m−x1−...−xm,
for all xi
∈ {0, 1} and 0 otherwise.  

::::

:::: {prf:definition} Continuous Distribution / pdf
:label: def-3-7-3
:enumerator: 3.7.3

It is said that n random variables X1, . . . , Xn have a
continuous joint distribution if there is a nonnegative function f defined on Rn such
that for every subset C ⊂ Rn,


if the integral exists. The function f is called the joint p.d.f. of X1, . . . , Xn.

::::

In vector notation, f (x) denotes the p.d.f. of the random vector X and Eq. (3.7.2)
could be rewritten more simply in the form

:::: {prf:theorem}
:label: thm-3-7-2
:enumerator: 3.7.2

If the joint distribution of X1, . . . , Xn is continuous, then the joint p.d.f. f can be
derived from the joint c.d.f. F by using the relation
f (x1, . . . , xn) = ∂nF(x1, . . . , xn)
∂x1 . . . ∂xn
at all points (x1, . . . , xn) at which the derivative in this relation exists.

::::

:::: {prf:example} Failure Times
:label: exm-3-7-4
:enumerator: 3.7.4

We can find the joint p.d.f. for the three random variables in Example
3.7.2 by applying Theorem 3.7.2. The third-order mixed partial is easily calculated
to be

::::

It is important to note that, even if each of X1, . . . , Xn has a continuous distribution,
the vector X = (X1, . . . , Xn) might not have a continuous joint distribution.
See @exr-3-7-9 in this section.

:::: {prf:example} Service Times in a Queue
:label: exm-3-7-5
:enumerator: 3.7.5

A queue is a system in which customers line up for service
and receive their service according to some algorithm. A simple model is the singleserver
queue, in which all customers wait for a single server to serve everyone ahead
of them in the line and then they get served. Suppose that n customers arrive at a

single-server queue for service. Let Xi be the time that the server spends serving
customer i for i = 1, . . . , n. We might use a joint distribution for X = (X1, . . . , Xn)
with joint p.d.f. of the form

(3.7.3)

We shall now find the value of c such that the function in Eq. (3.7.3) is a joint p.d.f.
We can do this by integrating over each variable x1, . . . , xn in succession (starting
with xn). The first integral is

The right-hand side of Eq. (3.7.4) is in the same form as the original p.d.f. except
that n has been reduced to n − 1 and c has been divided by n. It follows that when
we integrate over the variable xi (for i = n − 1, n − 2, . . . , 1), the result will be in
the same form with n reduced to i − 1 and c divided by n(n − 1) . . . i. The result of
integrating all coordinates except x1 is then

Integrating x1 out of this yields c/[2(n!)], which must equal 1, so c = 2(n!).

::::

(sec-3-7-2)=
# Mixed Distributions

:::: {prf:example} Arrivals at a Queue
:label: exm-3-7-6
:enumerator: 3.7.6

In @exm-3-7-5, we introduced the single-server queue and
discussed service times. Some features that influence the performance of a queue are
the rate at which customers arrive and the rate at which customers are served. Let Z
stand for the rate at which customers are served, and let Y stand for the rate at which
customers arrive at the queue. Finally, let W stand for the number of customers that
arrive during one day. ThenW is discrete while Y and Z could be continuous random
variables. A possible joint p.f./p.d.f. for these three random variables is

We can verify this claim shortly.  

::::

:::: {prf:definition} Joint pmf / pdf
:label: def-3-7-4
:enumerator: 3.7.4

Let X1, . . . , Xn be random variables, some of which have a continuous
joint distribution and some of which have discrete distributions; their joint distribution
would then be represented by a function f that we call the joint p.f./p.d.f. The
function has the property that the probability that X lies in a subset C ⊂ Rn is calculated
by summing f (x) over the values of the coordinates of x that correspond to the
discrete random variables and integrating over those coordinates that correspond to
the continuous random variables for all points x ∈ C.

::::

:::: {prf:example} Arrivals at a Queue
:label: exm-3-7-7
:enumerator: 3.7.7

We shall now verify that the proposed p.f./p.d.f. in @exm-3-7-6 actually sums and integrates to 1 over all values of (y, z, w). We must sum over w and integrate over y and z.We have our choice of in what order to do them. It is not

difficult to see that we can factor f as f (y, z,w) = h2(z)h13(y, w), where

So we can integrate z out first to get

Integrating y out of h13(y, w) is possible, but not pleasant. Instead, notice that $(8y)w/w!$ is the $w$th term in the Taylor expansion of e8y. Hence,

Finally, integrating over y yields 1.

::::

:::: {prf:example} A Clinical Trial
:label: exm-3-7-8
:enumerator: 3.7.8

In @exm-3-7-1, one of the random variables P has a continuous
distribution, and the others X1, . . . , Xm have discrete distributions. A possible joint
p.f./p.d.f. for (X1, . . . , Xm, P) is

We can find probabilities based on this function. Suppose, for example, that we want
the probability that there is exactly one success among the first two patients, that is,
Pr(X1 + X2 = 1).We must integrate f (x, p) over p and sum over all values of x that
have x1 + x2 = 1. For purposes of illustration, suppose that m = 4. First, factor out
px1+x2(1− p)2−x1−x2 = p(1− p), which yields



Summing over x3 yields

[p(1− p)]
 
px4(1− p)1−x4(1− p) + ppx4(1− p)1−x4
 
= [p(1− p)]px4(1− p)1−x4.

Summing this over x4 gives p(1− p). Next, integrate over p to get

0 p(1− p)dp =
1/6.

Finally, note that there are two (x1, x2) vectors, (1, 0) and (0, 1), that have
x1 + x2 = 1, so Pr(X1 + X2 = 1) = (1/6) + (1/6) = 1/3.

::::

(sec-3-7-3)=
# Marginal Distributions

**Deriving a Marginal PDF**: If the joint distribution of n random variables X1, . . . ,
Xn is known, then the marginal distribution of each single random variable Xi can
be derived from this joint distribution. For example, if the joint p.d.f. of X1, . . . , Xn
is f , then the marginal p.d.f. f1 of X1 is specified at every value x1 by the relation

More generally, the marginal joint p.d.f. of any k of the n random variables
X1, . . . , Xn can be found by integrating the joint p.d.f. over all possible values of
3.7 Multivariate Distributions 157
the other n − k variables. For example, if f is the joint p.d.f. of four random variables
X1, X2, X3, and X4, then the marginal bivariate p.d.f. f24 of X2 and X4 is specified at
each point (x2, x4) by the relation

:::: {prf:example} Service Times in a Queue
:label: exm-3-7-9
:enumerator: 3.7.9

Suppose that n = 5 in @exm-3-7-5 and that we want the marginal bivariate p.d.f. of (X1, X4).We must integrate Eq. (3.7.3) over x2, x3, and x5.

Since the joint p.d.f. is symmetric with respect to permutations of the coordinates of
x, we shall just integrate over the last three variables and then change the names of
the remaining variables to x1 and x4.We already saw how to do this in Example 3.7.5.
The result is

(3.7.5)

Then f14 is just like (3.7.5) with all the 2 subscripts changed to 4. The univariate
marginal p.d.f. of each Xi is

So, for example, if we want to know how likely it is that a customer will have to wait
longer than three time units, we can calculate Pr(Xi > 3) by integrating the function
in Eq. (3.7.6) from 3 to $\infty$. The result is 0.4.  

::::

If n random variables X1, . . . , Xn have a discrete joint distribution, then the
marginal joint p.f. of each subset of the n variables can be obtained from relations
similar to those for continuous distributions. In the new relations, the integrals are
replaced by sums.

## Deriving a Marginal CDF

Consider now a joint distribution for which the joint
c.d.f. of X1, . . . ,Xn is F. The marginal c.d.f. F1 of X1 can be obtained from the
following relation:

:::: {prf:example} Failure Times
:label: exm-3-7-10
:enumerator: 3.7.10

We can find the marginal CDF of $X_1$ from the joint c.d.f. in @exm-3-7-2 by letting x2 and x3 go to ∞. The limit is F1(x1) = 1− e
−x1 for x1 ≥ 0 and 0

otherwise.  

::::

More generally, the marginal joint c.d.f. of any k of the n random variables
X1, . . . , Xn can be found by computing the limiting value of the n-dimensional c.d.f.
F as xj
→∞for each of the other n − k variables xj .

For example, if F is the joint
c.d.f. of four random variables X1, X2, X3, and X4, then the marginal bivariate c.d.f.
F24 of X2 and X4 is specified at every point (x2, x4) by the relation
F24(x2, x4) = lim
x1,x3→∞
F(x1, x2, x3, x4).

Example
3.7.11
Failure Times. We can find the marginal bivariate c.d.f. of X1 and X3 from the joint
c.d.f. in Example 3.7.2 by letting x2 go to∞. The limit is
F13(x1, x3) =
 
(1− e
−x1)(1− e
−3x3) for x1, x3 ≥ 0,
0 otherwise.  

(sec-3-7-4)=
# Independent Random Variables

Definition
3.7.5
Independent Random Variables. It is said that n random variables X1, . . . , Xn are
independent if, for every n sets A1, A2, . . . , An of real numbers,
Pr(X1 ∈ A1, X2 ∈ A2, . . . , Xn
∈ An)
= Pr(X1 ∈ A1) Pr(X2 ∈ A2) . . . Pr(Xn
∈ An).
If X1, . . . , Xn are independent, it follows easily that the random variables in every
nonempty subset of X1, . . . , Xn are also independent. (See Exercise 11.)
There is a generalization of Theorem 3.5.4.
Theorem
3.7.3
Let F denote the joint c.d.f. of X1, . . . , Xn, and let Fi denote the marginal univariate
c.d.f. of Xi for i = 1, . . . , n. The variables X1, . . . , Xn are independent if and only if,
for all points (x1, x2, . . . , xn) ∈ Rn,
F(x1, x2, . . . , xn) = F1(x1)F2(x2) . . . Fn(xn).
Theorem 3.7.3 says that X1, . . . , Xn are independent if and only if their joint c.d.f.
is the product of their n individual marginal c.d.f.’s. It is easy to check that the three
random variables in Example 3.7.2 are independent using Theorem 3.7.3.
There is also a generalization of Corollary 3.5.1.
Theorem
3.7.4
If X1, . . . , Xn have a continuous, discrete, or mixed joint distribution for which the
joint p.d.f., joint p.f., or joint p.f./p.d.f. is f , and if fi is the marginal univariate p.d.f. or
p.f. of Xi (i = 1, . . . , n), then X1, . . . ,Xn are independent if and only if the following
relation is satisfied at all points (x1, x2, . . . , xn) ∈ Rn:
f (x1, x2, . . . , xn) = f1(x1)f2(x2) . . . fn(xn). (3.7.7)
Example
3.7.12
Service Times in a Queue. In Example 3.7.9, we can multiply together the two univariate
marginal p.d.f.’s of X1 and X2 calculated using Eq. (3.7.6) and see that the
product does not equal the bivariate marginal p.d.f. of (X1, X2) in Eq. (3.7.5). So X1
and X2 are not independent.  
Definition
3.7.6
Random Samples/i.i.d./Sample Size. Consider a given probability distribution on the
real line that can be represented by either a p.f. or a p.d.f. f . It is said that n
random variables X1, . . . , Xn form a random sample from this distribution if these
random variables are independent and the marginal p.f. or p.d.f. of each of them is
f . Such random variables are also said to be independent and identically distributed,
abbreviated i.i.d.We refer to the number n of random variables as the sample size.
Definition 3.7.6 says that X1, . . . , Xn form a random sample from the distribution
represented by f if their joint p.f. or p.d.f. g is specified as follows at all points
(x1, x2, . . . , xn) ∈ Rn:
g(x1, . . . , xn) = f (x1)f (x2) . . . f (xn).
Clearly, an i.i.d. sample cannot have a mixed joint distribution.
3.7 Multivariate Distributions 159
Example
3.7.13
Lifetimes of Light Bulbs. Suppose that the lifetime of each light bulb produced in a
certain factory is distributed according to the following p.d.f.:
f (x) =
 
xe
−x for x >0,
0 otherwise.
We shall determine the joint p.d.f. of the lifetimes of a random sample of n light bulbs
drawn from the factory’s production.
The lifetimes X1, . . . , Xn of the selected bulbs will form a random sample from
the p.d.f. f . For typographical simplicity, we shall use the notation exp(v) to denote
the exponential ev when the expression for v is complicated. Then the joint p.d.f. g
of X1, . . . , Xn will be as follows: If xi > 0 for i = 1, . . . , n,
 
.
Otherwise, g(x1, . . . , xn) = 0.
Every probability involving the n lifetimes X1, . . . , Xn can in principle be determined
by integrating this joint p.d.f. over the appropriate subset ofRn. For example, if
C is the subset of points (x1, . . . , xn) such that xi > 0 for i = 1, . . . , n and
 n
i=1 xi <a,
where a is a given positive number, then


The evaluation of the integral given at the end of Example 3.7.13 may require
a considerable amount of time without the aid of tables or a computer. Certain
other probabilities, however, can be evaluated easily from the basic properties of
continuous distributions and random samples. For example, suppose that for the
conditions of Example 3.7.13 it is desired to find Pr(X1<X2 < . . .<Xn). Since the
random variables X1, . . . , Xn have a continuous joint distribution, the probability
that at least two of these random variables will have the same value is 0. In fact,
the probability is 0 that the vector (X1, . . . , Xn) will belong to each specific subset
of Rn for which the n-dimensional volume is 0. Furthermore, since X1, . . . , Xn are
independent and identically distributed, each of these variables is equally likely to
be the smallest of the n lifetimes, and each is equally likely to be the largest. More
generally, if the lifetimes X1, . . . , Xn are arranged in order from the smallest to the
largest, each particular ordering of X1, . . . , Xn is as likely to be obtained as any
other ordering. Since there are n! different possible orderings, the probability that
the particular ordering X1 <X2 < . . .< Xn will be obtained is 1/n. Hence,
Pr(X1<X2 < . . .<Xn) = 1


(sec-3-7-5)=
# 3.7.5 Conditional Distributions

Suppose that n random variables X1, . . . , Xn have a continuous joint distribution for
which the joint p.d.f. is f and that f0 denotes the marginal joint p.d.f. of thek <nrandom
variablesX1, . . . ,Xk. Then for all values of x1, . . . , xk such that f0(x1, . . . , xk) >
0, the conditional p.d.f. of (Xk+1, . . . , Xn) given that X1 = x1, . . . , Xk
= xk is defined

as follows:

gk+1...n(xk+1, . . . , xn
|x1, . . . , xk) = f (x1, x2, . . . , xn)
f0(x1, . . . , xk)

The definition above generalizes to arbitrary joint distributions as follows.

## Definition 3.7.7: Conditional p.f., p.d.f., or p.f./p.d.f

Suppose that the random vectorX = (X1, . . . ,Xn)
is divided into two subvectors Y and Z, where Y is a k-dimensional random vector
comprising k of the n random variables in X, and Z is an (n − k)-dimensional random
vector comprising the other n − k random variables in X. Suppose also that the
n-dimensional joint p.f., p.d.f., or p.f./p.d.f. of (Y, Z) is f and that the marginal (n − k)-
dimensional p.f., p.d.f., or p.f./p.d.f. ofZ is f2. Then for every given point z ∈ Rn−k such
that f2(z) > 0, the conditional k-dimensional p.f., p.d.f., or p.f./p.d.f. g1 of Y given
Z = z is defined as follows:

g1( y|z) = f (y, z)
f2(z)
for y ∈ Rk. (3.7.8)

Eq. (3.7.8) can be rewritten as

f (y, z) = g1( y|z)f2(z), (3.7.9)

which allows construction of the joint distribution from a conditional distribution and
a marginal distribution. As in the bivariate case, it is safe to assume that f (y, z) = 0
whenever f2(z) = 0. Then Eq. (3.7.9) holds for all y and z even though g1( y|z) is not
uniquely defined.

## Example 3.7.14: Service Times in a Queue

In Example 3.7.9, we calculated the marginal bivariate
distribution of two service timesZ = (X1, X2).We can now find the conditional threedimensional
p.d.f. of Y = (X3, X4, X5) given Z = (x1, x2) for every pair (x1, x2) such
that x1, x2 > 0:
g1(x3, x4, x5|x1, x2) = f (x1, . . . , x5)
f12(x1, x2)



for x3, x4, x5 > 0, and 0 otherwise. The joint p.d.f. in (3.7.10) looks like a bunch of
symbols, but it can be quite useful. Suppose that we observe X1 = 4 and X2 = 6. Then
g1(x3, x4, x5|4.6) 

We can now calculate the conditional probability that X3 > 3 given X1 = 4, X2 = 6

Compare this to the calculation of Pr(X3 > 3) = 0.4 at the end of Example 3.7.9.
After learning that the first two service times are a bit longer than three time units, we
revise the probability thatX3 > 3 upward to reflect what we learned from the first two
observations. If the first two service times had been small, the conditional probability
that X3 > 3 would have been smaller than 0.4. For example, Pr(X3 > 3|X1 = 1, X2 =
1.5) = 0.216.  

## Example 3.7.15: Determining a Marginal Bivariate pdf

Suppose that Z is a random variable for which
the p.d.f. f0 is as follows:
f0(z) =


Suppose, furthermore, that for every given value Z = z > 0 two other random variablesX1
andX2 are independent and identically distributed and the conditional p.d.f.
of each of these variables is as follows:

g(x|z) =
 
ze
−zx for x >0,
0 otherwise.
(3.7.12)

We shall determine the marginal joint p.d.f. of (X1, X2).

Since X1 and X2 are i.i.d. for each given value of Z, their conditional joint p.d.f.
when Z = z > 0 is
g12(x1, x2|z) =
 
z2e
−z(x1+x2) for x1, x2 > 0,
0 otherwise.

The joint p.d.f. f of (Z, X1, X2) will be positive only at those points (z, x1, x2)
such that x1, x2, z>0. It now follows that, at every such point,
f (z, x1, x2) = f0(z)g12(x1, x2|z) = 2z2e
−z(2+x1+x2).

For x1 > 0 and x2 > 0, the marginal joint p.d.f. f12(x1, x2) of X1 and X2 can be
determined either using integration by parts or some special results that will arise
in Sec. 5.7:

f12(x1, x2) = for x1, x2 > 0.

The reader will note that this p.d.f. is the same as the marginal bivariate
p.d.f. of (X1, X2) found in Eq. (3.7.5).
From this marginal bivariate p.d.f., we can evaluate probabilities involving X1
and X2, such as Pr(X1 + X2 < 4). We have

## Example 3.7.16: Service Times in a Queue

We can think of the random variable Z in @exm-3-7-15 as the rate at which customers are served in the queue of Example 3.7.5. With this
interpretation, it is useful to find the conditional distribution of the rate Z after we
observe some of the service times such as X1 and X2.
For every value of z, the conditional p.d.f. of Z given X1 = x1 and X2 = x2 is

Finally, we shall evaluate Pr(Z ≤ 1|X1 = 1, X2 = 4). We have 

# Law of Total Probability and Bayes’ Theorem

@exm-3-7-15 contains an example of the multivariate version of the law of total probability, while Example 3.7.16
contains an example of the multivariate version of Bayes’ theorem. The proofs of
the general versions are straightforward consequences of Definition 3.7.7.

## Theorem 3.7.5: Multivariate Law of Total Probability and Bayes’ Theorem

Assume the conditions and
notation given in Definition 3.7.7. If Z has a continuous joint distribution, the marginal
p.d.f. of Y is

If Z has a discrete joint distribution, then the multiple integral in (3.7.14) must be
replaced by a multiple summation. If Z has a mixed joint distribution, the multiple
integral must be replaced by integration over those coordinates with continuous
distributions and summation over those coordinates with discrete distributions.

# Conditionally Independent Random Variables

In @exm-3-7-15 and @exm-3-7-16, $Z$ is the single random variableZ and Y = (X1, X2). These examples also illustrate the use
of conditionally independent random variables. That is, X1 and X2 are conditionally
independent given Z = z for all z > 0. In Example 3.7.16, we said that Z was the
rate at which customers were served.When this rate is unknown, it is a major source
of uncertainty. Partitioning the sample space by the values of the rate Z and then
conditioning on each value of Z removes a major source of uncertainty for part of
the calculation.

In general, conditional independence for random variables is similar to conditional
independence for events.

## Definition 3.7.8: Conditionally Independent Random Variables

Let Z be a random vector with joint p.f., p.d.f., or p.f./p.d.f. f0(z). Several random variables X1, . . . , Xn are conditionally
independent given Z if, for all z such that f0(z) > 0, we have


where g(x|z) stands for the conditional multivariate p.f., p.d.f., or p.f./p.d.f. of X given
Z = z and gi(xi
|z) stands for the conditional univariate p.f. or p.d.f. of Xi given Z = z.

In Example 3.7.15, gi(xi|z) = ze−zxi for xi > 0 and i = 1, 2.

## Example 3.7.17: A Clinical Trial

In @exm-3-7-8, the joint p.f./p.d.f. given there was constructed by assuming that X1, . . . , Xm were conditionally independent given P = p each with the same conditional p.f., gi(xi|p) = pxi(1− p)1−xi for xi∈ {0, 1} and that P had the uniform distribution on the interval [0, 1]. These assumptions produce, in the notation of @def-3-7-8,

g(x|p) = 

for 0 ≤ p ≤ 1.

Combining this with the marginal p.d.f. of P, f2(p) = 1 for 0 ≤ p ≤ 1
and 0 otherwise, we get the joint p.f./p.d.f. given in Example 3.7.8.  

# Conditional Versions of Past and Future Theorems

We mentioned earlier that
conditional distributions behave just like distributions. Hence, all theorems that we
have proven and will prove in the future have conditional versions. For example,
the law of total probability in Eq. (3.7.14) has the following version conditional on
another random vector W = w:

g1( y|z, w)f2(z|w) dz, (3.7.16)
where f1(y|w) stands for the conditional p.d.f., p.f., or p.f./p.d.f. of Y given W = w,
g1(y|z, w) stands for the conditional p.d.f., p.f., or p.f./p.d.f. ofY given (Z,W) = (z, w),
and f2(z|w) stands for the conditional p.d.f. of Z given W = w. Using the same
notation, the conditional version of Bayes’ theorem is
g2(z|y, w) = g1( y|z, w)f2(z|w)
f1( y|w)
. (3.7.17)

## Example 3.7.18: Conditioning on Random Variables in Sequence

In @exm-3-7-15, we found the
conditional p.d.f. of Z given (X1, X2) = (x1, x2). Suppose now that there are three
more observations available, X3, X4, and X5, and suppose that all of X1, . . . , X5
are conditionally i.i.d. given Z = z with p.d.f. g(x|z). We shall use the conditional
version of Bayes’ theorem to compute the conditional p.d.f. ofZ given (X1, . . . , X5) =
(x1, . . . , x5). First, we shall find the conditional p.d.f. g345(x3, x4, x5|x1, x2, z) of Y =
(X3, X4, X5) given Z = z and W = (X1, X2) = (x1, x2). We shall use the notation for
p.d.f.’s in the discussion immediately preceding this example. Since X1, . . . , X5 are
conditionally i.i.d. given Z, we have that g1( y|z, w) does not depend on w. In fact,
g1( y|z, w) = g(x3|z)g(x4|z)g(x5|z) = z3e
−z(x3+x4+x5),

for x3, x4, x5 > 0. We also need the conditional p.d.f. of Z given W = w, which was
calculated in Eq. (3.7.13), and we now denote it
f2(z|w) = 1
2
(2 + x1 + x2)3z2e
−z(2+x1+x2).
Finally, we need the conditional p.d.f. of the last three observations given the first
two. This was calculated in Example 3.7.14, and we now denote it
f1( y|w) = 60(2 + x1 + x2)3
(2 + x1 + . . . + x5)6
.

Now combine these using Bayes’ theorem (3.7.17) to obtain
g2(z| y, w) =
z3e
−z(x3+x4+x5) 1
2 (2 + x1 + x2)3z2e
−z(2+x1+x2)
60(2 + x1 + x2)3
(2 + x1 + . . . + x5)6
= 1
120
(2 + x1 + . . . + x5)6z5e
−z(2+x1+...+x5),
for z > 0.  

## Note: Simple Rule for Creating Conditional Versions of Results

If you ever wish to
determine the conditional version givenW = w of a result that you have proven, here
is a simple method. Just add “conditional onW = w” to every probabilistic statement
in the result. This includes all probabilities, c.d.f.’s, quantiles, names of distributions,
p.d.f.’s, p.f.’s, and so on. It also includes all future probabilistic concepts that we
introduce in later chapters (such as expected values and variances in Chapter 4).

## Note: Independence is a Special Case of Conditional Independence

Let X1, . . . ,
Xn be independent random variables, and let W be a constant random variable.
That is, there is a constant c such that Pr(W = c) = 1. Then X1, . . . , Xn are also
conditionally independent given W = c. The proof is straightforward and is left to
the reader (Exercise 15). This result is not particularly interesting in its own right.
Its value is the following: If we prove a result for conditionally independent random
variables or conditionally i.i.d. random variables, then the same result will hold for
independent random variables or i.i.d. random variables as the case may be.

# Histograms

## Example 3.7.19: Rate of Service

In Examples 3.7.5 and 3.7.6, we considered customers arriving at a
queue and being served. Let Z stand for the rate at which customers were served,
and we let X1, X2, . . . stand for the times that the successive customers requrired for
service. Assume that X1, X2, . . . are conditionally i.i.d. given Z = z with p.d.f.


This is the same as (3.7.12) from Example 3.7.15. In that example, we modeled Z as
a random variable with p.d.f. f0(z) = 2 exp(−2z) for z > 0. In this example, we shall
assume that X1, . . . , Xn will be observed for some large value n, and we want to
think about what these observations tell us about Z. To be specific, suppose that we
observe n = 100 service times. The first 10 times are listed here:
1.39, 0.61, 2.47, 3.35, 2.56, 3.60, 0.32, 1.43, 0.51, 0.94.


The smallest and largest observed service times from the entire sample are 0.004 and
9.60, respectively. It would be nice to have a graphical display of the entire sample
of n = 100 service times without having to list them separately.  
The histogram, defined below, is a graphical display of a collection of numbers.
It is particularly useful for displaying the observed values of a collection of random
variables that have been modeled as conditionally i.i.d.

## Definition 3.7.9: Histogram

Let x1, . . . , xn be a collection of numbers that all lie between two values

Choose some integer k ≥ 1 and divide
the interval [a, b] into k equal-length subintervals of length (b − a)/k. For each
subinterval, count how many of the numbers x1, . . . , xn are in the subinterval. Let
ci be the count for subinterval i for i = 1, . . . , k. Choose a number r >0. (Typically,
r = 1 or r = n or r = n(b − a)/k.) Draw a two-dimensional graph with the horizonal
axis running from a to b. For each subinterval i = 1, . . . , k draw a rectangular bar of
width (b − a)/k and height equal to ci/r over the midpoint of the ith interval. Such
a graph is called a histogram.

The choice of the number r in the definition of histogram depends on what one
wishes to be displayed on the vertical axis. The shape of the histogram is identical
regardless of what value one chooses for r.With r = 1, the height of each bar is the raw
count for each subinterval, and counts are displayed on the vertical axis.With r = n,
the height of each bar is the proportion of the set of numbers in each subinterval,
and the vertical axis displays proportions. With r = n(b − a)/k, the area of each bar
is the proportion of the set of numbers in each subinterval.

## Example 3.7.20: Rate of Service

The $n = 100$ observed service times in @exm-3-7-19 all lie between 0 and 10. It is convenient, in this example, to draw a histogram with horizontal axis
running from 0 to 10 and divided into 10 subintervals of length 1 each. Other choices
are possible, but this one will do for illustration.

@fig-3-22 contains the histogram of
the 100 observed service times with r = 100. One sees that the numbers of observed
service times in the subintervals decrease as the center of the subinterval increses.
This matches the behavior of the conditional p.d.f. g(x|z) of the service times as a
function of x for fixed z.  

Histograms are useful as more than just graphical displays of large sets of numbers.
After we see the law of large numbers (Theorem 6.2.4), we can show that the


histogram of a large (conditionally) i.i.d. sample of continuous random variables is
an approximation to the (conditional) p.d.f. of the random variables in the sample,
so long as one uses the third choice of r, namely, r = n(b − a)/k.
Note: More General Histograms. Sometimes it is convenient to divide the range of
the numbers to be plotted in a histogram into unequal-length subintervals. In such a
case, one would typically let the height of each bar be ci/ri , where ci is the raw count
and ri is proportional to the length of the ith subinterval. In this way, the area of each
bar is still proportional to the count or proportion in each subinterval.


## Figure 3.22
Histogram
of service times for Example
3.7.20 with a = 0, b = 10,
k = 10, and r = 100.

(sec-3-7-8)=
# 3.7.8 Summary

A finite collection of random variables is called a random vector. We have defined
joint distributions for arbitrary random vectors. Every random vector has a joint c.d.f.
Continuous random vectors have a joint p.d.f. Discrete random vectors have a joint
p.f. Mixed distribution random vectors have a joint p.f./p.d.f. The coordinates of an
n-dimensional random vector X are independent if the joint p.f., p.d.f., or p.f./p.d.f.
f (x) factors into ni=1 fi(xi).
We can compute marginal distributions of subvectors of a random vector, and
we can compute the conditional distribution of one subvector given the rest of the
vector.We can construct a joint distribution for a random vector by piecing together
a marginal distribution for part of the vector and a conditional distribution for the
rest given the first part. There are versions of Bayes’ theorem and the law of total
probability for random vectors.
An n-dimensional random vector X has coordinates that are conditionally independent
given Z if the conditional p.f., p.d.f., or p.f./p.d.f. g(x|z) of X given Z = z
factors into i=1 gi(xi |z). There are versions of Bayes’ theorem, the law of total
probability, and all future theorems about random variables and random vectors
conditional on an arbitrary additional random vector.

(sec-3-7-9)=
# 3.7.9 Exercises

1. Suppose that three random variables X1, X2, and X3
have a continuous joint distribution with the following
joint p.d.f.: f (x1, x2, x3) =
 
c(x1 + 2x2 + 3x3) for 0 ≤ xi
≤ 1 (i = 1, 2, 3),
0 otherwise.
Determine (a) the value of the constant c;
(b) the marginal joint p.d.f. of X1 and X3; and
(c) Pr
 
X3 < 1
2
   
X1 = 1
4, X2 = 3
4
 

2. Suppose that three random variables X1, X2, and X3
have a mixed joint distribution with p.f./p.d.f.:
f (x1, x2, x3)

0 otherwise.
(Notice that X1 has a continuous distribution and X2 and
X3 have discrete distributions.) Determine

* (a) the value of
the constant c;
* (b) the marginal joint p.f. of X2 and X3; and
* (c) the conditional p.d.f. of X1 given X2 = 1 and X3 = 1.

3. Suppose that three random variables X1, X2, and X3
have a continuous joint distribution with the following
joint p.d.f.: f (x1, x2, x3) =
 
ce
−(x1+2x2+3x3) for xi > 0 (i = 1, 2, 3),
0 otherwise.
Determine (a) the value of the constant c; (b) the marginal
joint p.d.f. ofX1 andX3; and (c) Pr(X1<1|X2 =2, X3 =1).

4. Suppose that a point (X1, X2, X3) is chosen at random,
that is, in accordance with the uniform p.d.f., from the
following set S:
S = {(x1, x2, x3): 0 ≤ xi
≤ 1 for i = 1, 2, 3}.

Determine:
a. Pr
  
X1 − 1
2
 2
+
 
X2 − 1
2
 2
+
 
X3 − 1
2
 2
≤ 1
4
 
b. Pr(X2
1
+ X2
2
+ X2
3
≤ 1)

5. Suppose that an electronic system contains n components
that function independently of each other and that
the probability that component i will function properly is
pi (i = 1, . . . , n). It is said that the components are connected
in series if a necessary and sufficient condition for
the system to function properly is that all n components
function properly. It is said that the components are connected
in parallel if a necessary and sufficient condition for
the system to function properly is that at least one of the
n components functions properly. The probability that the
system will function properly is called the reliability of the
system. Determine the reliability of the system,

* (a) assuming that the components are connected in series, and
* (b) assuming that the components are connected in parallel.

6. Suppose that the n random variables X1 . . . , Xn form a
random sample from a discrete distribution for which the
p.f. is f . Determine the value of Pr(X1 = X2 = . . . = Xn).

7. Suppose that the n random variablesX1, . . . , Xn form a
random sample from a continuous distribution for which
the p.d.f. is f . Determine the probability that at least k
of these n random variables will lie in a specified interval
a ≤ x ≤ b.
8. Suppose that the p.d.f. of a random variable X is as
follows:

Suppose also that for any given value X = x (x >0), the n
random variables Y1, . . . , Yn are i.i.d. and the conditional
p.d.f. g of each of them is as follows:

g(y|x) = 1
x for 0 < y < x,
0 otherwise.
Determine

* (a) the marginal joint p.d.f. of Y1, . . . , Yn and
* (b) the conditional p.d.f. of X for any given values of
Y1, . . . , Yn.

9. Let X be a random variable with a continuous distribution.
Let X1 = X2 = X.
a. Prove that both X1 and X2 have a continuous distribution.
b. Prove that X = (X1, X2) does not have a continuous
joint distribution.
10. Return to the situation described in Example 3.7.18.
Let X = (X1, . . . , X5) and compute the conditional p.d.f.
of Z given X = x directly in one step, as if all of X were
observed at the same time.

11. Suppose that X1, . . . , Xn are independent. Let k < n
and let i1, . . . , ik be distinct integers between 1 and n.
Prove that Xi1, . . . , Xik
are independent.

12. Let X be a random vector that is split into three parts,
X = (Y, Z, W). Suppose that X has a continuous joint
distribution with p.d.f. f ( y, z, w). Let g1( y, z|w) be the
conditional p.d.f. of (Y, Z) given W = w, and let g2( y|w)
be the conditional p.d.f. of Y given W = w. Prove that
g2( y|w) = g1( y, z|w) dz.

13. Let X1, X2, X3 be conditionally independent given
Z = z for all z with the conditional p.d.f. g(x|z) in Eq.
(3.7.12). Also, let the marginal p.d.f. of Z be f0 in
Eq. (3.7.11). Prove that the conditional p.d.f. of X3 given
(X1, X2) = (x1, x2) is

g(x3|z)g0(z|x1, x2) dz, where g0 is
defined in Eq. (3.7.13). (You can prove this even if you
cannot compute the integral in closed form.)

14. Consider the situation described in @exm-3-7-14.

Suppose that X1 = 5 and X2 = 7 are observed.

* a. Compute the conditional p.d.f. of X3 given (X1, X2)=(5, 7). (You may use the result stated in @exr-3-7-12.)
* b. Find the conditional probability that X3 > 3 given (X1, X2) = (5, 7) and compare it to the value of Pr(X3 > 3) found in Example 3.7.9. Can you suggest a reason why the conditional probability should be higher than the marginal probability?

15. Let X1, . . . , Xn be independent random variables, and
let W be a random variable such that Pr(W = c) = 1 for
some constant c. Prove that X1, . . . , Xn are conditionally
independent given W = c.
