(sec-3-8)=
# Functions of a Random Variable

*Often we find that after we compute the distribution of a random variable $X$, we really want the distribution of some function of $X$. For example, if $X$ is the rate at which customers are served in a queue, then $1/X$ is the average waiting time. If we have the distribution of $X$, we should be able to determine the distribution of $1/X$ or of any other function of X. How to do that is the subject of this section.*

(sec-3-8-1)=
# Random Variable with a Discrete Distribution

:::: {prf:example} Distance from the Middle (p. 168)
:label: exm-3-8-1
:enumerator: 3.8.1

Let X have the uniform distribution on the integers
1, 2, . . . , 9. Suppose that we are interested in how far X is from the middle of the
distribution, namely, 5.We could define Y = |X − 5| and compute probabilities such
as Pr(Y = 1) = Pr(X ∈ {4, 6}) = 2/9.  

::::

@exm-3-8-1 illustrates the general procedure for finding the distribution of a function of a discrete random variable. The general result is straightforward.

Theorem
3.8.1
Function of a Discrete Random Variable. Let X have a discrete distribution with p.f. f ,
and let Y = r(X) for some function of r defined on the set of possible values of X.
For each possible value y of Y , the p.f. g of Y is
g(y) = Pr(Y = y) = Pr[r(X) = y]=
 
x: r(x)=y
f (x).

:::: {prf:example} Distance from the Middle
:label: exm-3-8-2
:enumerator: 3.8.2

The possible values of Y in Example 3.8.1 are 0, 1, 2, 3,
and 4. We see that Y = 0 if and only if X = 5, so g(0) = f (5) = 1/9. For all other
values of Y , there are two values of X that give that value of Y . For example,
{Y = 4} = {X = 1} ∪ {X = 9}. So, g(y) = 2/9 for y = 1, 2, 3, 4.  

::::

(sec-3-8-2)=
# Random Variable with a Continuous Distribution

If a random variable $X$ has a continuous distribution, then the procedure for deriving
the probability distribution of a function of X differs from that given for a discrete
distribution. One way to proceed is by direct calculation as in Example 3.8.3.

:::: {prf:example} Average Waiting Time (p. 168)
:label: exm-3-8-3
:enumerator: 3.8.3

Let $Z$ be the rate at which customers are served in a queue,
and suppose that Z has a continuous c.d.f. F. The average waiting time is Y = 1/Z.
If we want to find the c.d.f. G of Y , we can write
G(y) = Pr(Y ≤ y) = Pr


where the fourth equality follows from the fact that Z has a continuous distribution
so that Pr(Z = 1/y) = 0.

::::

In general, suppose that the p.d.f. of X is f and that another random variable is
defined as Y = r(X). For each real number y, the c.d.f. G(y) of Y can be derived as
follows:
G(y) = Pr(Y ≤ y) = Pr[r(X) ≤ y]

f (x) dx.

If the random variable Y also has a continuous distribution, its p.d.f. g can be obtained
from the relation
g(y) = dG(y)
dy
.
This relation is satisfied at every point y at which G is differentiable.

Figure 3.23 The p.d.f. of
Y = X2 in Example 3.8.4.
0 1 y
g(y)

:::: {prf:example} Deriving the pdf of $X_2$ when $X$ Has a Uniform Distribution
:label: exm-3-8-4
:enumerator: 3.8.4

Suppose that X has the
uniform distribution on the interval [−1, 1], so

We shall determine the p.d.f. of the random variable Y = X2.

Since Y = X2, then Y must belong to the interval 0 ≤ Y ≤ 1. Thus, for each value
of Y such that 0 ≤ y ≤ 1, the c.d.f. G(y) of Y is
G(y) = Pr(Y ≤ y) = Pr(X2 ≤ y)
= Pr(−y1/2 ≤ X ≤ y1/2)

For 0 < y <1, it follows that the p.d.f. g(y) of Y is

g(y) = dG(y)
dy
= 1
2y1/2

This p.d.f. of Y is sketched in Fig. 3.23. It should be noted that although Y is
simply the square of a random variable with a uniform distribution, the p.d.f. of Y is
unbounded in the neighborhood of y = 0.  

::::

Linear functions are very useful transformations, and the p.d.f. of a linear function
of a continuous random variable is easy to derive. The proof of the following
result is left to the reader in Exercise 5.

:::: {prf:theorem} Linear Function
:label: thm-3-8-2
:enumerator: 3.8.2

Suppose that $X$ is a random variable for which the pdf is f and that

and 0 otherwise.

::::

(sec-3-8-3)=
# The Probability Integral Transformation

::: {.callout-tip title="Example 3.8.5 (DeGroot and Schervish, pp. 169-170)"}

Let X be a continuous random variable with p.d.f. f (x) = exp(−x) for x >0 and 0
otherwise. The c.d.f. of X is F(x) = 1− exp(−x) for x >0 and 0 otherwise. If we let
170 Chapter 3 Random Variables and Distributions
F be the function r in the earlier results of this section, we can find the distribution
of Y = F(X). The c.d.f. or Y is, for 0 < y <1,
G(y) = Pr(Y ≤ y) = Pr(1− exp(−X) ≤ y) = Pr(X ≤−log(1− y))
= F(− log(1− y)) = 1− exp(−[− log(1− y)]) = y,
which is the c.d.f. of the uniform distribution on the interval [0, 1]. It follows that Y
has the uniform distribution on the interval [0, 1].  

:::

The result in Example 3.8.5 is quite general.

:::: {prf:theorem} Probability Integral Transformation
:label: thm-3-8-3
:enumerator: 3.8.3

Let $X$ have a continuous CDF $F$, and let Y = F(X).
(This transformation from X to Y is called the probability integral transformation.)
The distribution of Y is the uniform distribution on the interval [0, 1].

::: {.proof}

First, because F is the c.d.f. of a random variable, then 0 ≤ F(x) ≤ 1 for
−∞ < x <∞. Therefore, Pr(Y < 0) = Pr(Y > 1) = 0. Since F is continuous, the set
of x such that F(x) = y is a nonempty closed and bounded interval [x0, x1] for each y
in the interval (0, 1). Let F
−1(y) denote the lower endpoint x0 of this interval, which
was called the y quantile of F in Definition 3.3.2. In this way, Y ≤ y if and only if
X ≤ x1. Let G denote the c.d.f. of Y . Then
G(y) = Pr(Y ≤ y) = Pr(X ≤ x1) = F(x1) = y.
Hence, G(y) = y for 0 < y <1. Because this function is the c.d.f. of the uniform
distribution on the interval [0, 1], this uniform distribution is the distribution of Y .

:::

::::

Because Pr(X = F
−1(Y )) = 1 in the proof of @thm-3-8-3, we have the following
corollary.

Corollary
3.8.1
Let Y have the uniform distribution on the interval [0, 1], and let F be a continuous
c.d.f. with quantile function F
−1. Then X = F
−1(Y ) has c.d.f. F.
Theorem 3.8.3 and its corollary give us a method for transforming an arbitrary
continuous random variable X into another random variable Z with any desired
continuous distribution. To be specific, let X have a continuous c.d.f. F, and let G
be another continuous c.d.f. Then Y = F(X) has the uniform distribution on the
interval [0, 1] according to Theorem 3.8.3, and Z = G
−1(Y ) has the c.d.f. G according
to Corollary 3.8.1. Combining these, we see that Z = G
−1[F(X)] has c.d.f. G.

(sec-3-8-4)=
# Simulation

**Pseudo-Random Numbers**: Most computer packages that do statistical analyses
also produce what are called pseudo-random numbers. These numbers appear to
have some of the properties that a random sample would have, even though they
are generated by deterministic algorithms. The most fundamental of these programs
are the ones that generate pseudo-random numbers that appear to have the uniform
distribution on the interval [0, 1].We shall refer to such functions as uniform pseudorandom
number generators. The important features that a uniform pseudo-random
number generator must have are the following.
The numbers that it produces need to be spread somewhat uniformly over the
interval [0, 1], and they need to appear to be observed values of independent random variables. This last feature is very complicated to word precisely. An example of a
sequence that does not appear to be observations of independent random variables
would be one that was perfectly evenly spaced. Another example would be one with
the following behavior: Suppose that we look at the sequence X1, X2, . . . one at a
time, and every time we find an Xi > 0.5, we write down the next number Xi+1. If the
subsequence of numbers that we write down is not spread approximately uniformly
over the interval [0, 1], then the original sequence does not look like observations
of independent random variables with the uniform distribution on the interval [0, 1].
The reason is that the conditional distribution of Xi+1 given that Xi > 0.5 is supposed
to be uniform over the interval [0, 1], according to independence.
Generating Pseudo-Random Numbers Having a Specified Distribution Auniform
pseudo-random number generator can be used to generate values of a random
variable Y having any specified continuous c.d.f. G. If a random variable X has the
uniform distribution on the interval [0, 1] and if the quantile function G
−1 is defined
as before, then it follows from Corollary 3.8.1 that the c.d.f. of the random variable
Y = G
−1(X) will be G. Hence, if a value of X is produced by a uniform pseudorandom
number generator, then the corresponding value of Y will have the desired
property. If n independent values X1, . . . , Xn are produced by the generator, then
the corresponding values Y1, . . . , Yn will appear to form a random sample of size n
from the distribution with the c.d.f. G.

:::: {prf:example} Generating Independent Values from a Specified pdf
:label: exm-3-8-6
:enumerator: 3.8.6

Suppose that a uniform pseudorandom
number generator is to be used to generate three independent values from
the distribution for which the p.d.f. g is as follows:

For 0 < y <2, the c.d.f. G of the given distribution is

Also, for 0 < x <1, the inverse function y = G
−1(x) can be found by solving the
equation x = G(y) for y. The result is
y = G
−1(x) = 2[1− (1− x)1/2]. (3.8.2)

The next step is to generate three uniform pseudo-random numbers x1, x2, and x3
using the generator. Suppose that the three generated values are

x1 = 0.4125, x2 = 0.0894, x3 = 0.8302.

When these values of x1, x2, and x3 are substituted successively into Eq. (3.8.2),
the values of y that are obtained are y1 = 0.47, y2 = 0.09, and y3 = 1.18. These are
then treated as the observed values of three independent random variables with the
distribution for which the p.d.f. is g.  

::::

If G is a general CDF, there is a method similar to Corollary 3.8.1 that can be
used to transform a uniform random variable into a random variable with c.d.f. G.
See Exercise 12 in this section. There are other computer methods for generating
values from certain specified distributions that are faster and more accurate than
using the quantile function.

These topics are discussed in the books by Kennedy and Gentle (1980) and Rubinstein (1981). Chapter 12 of this text contains techniques and examples that show how simulation can be used to solve statistical problems.

## General Function

In general, if X has a continuous distribution and if Y = r(X),
then it is not necessarily true that Y will also have a continuous distribution. For example,
suppose that r(x) = c, where c is a constant, for all values of x in some interval
a ≤ x ≤ b, and that Pr(a ≤ X ≤ b) > 0. Then Pr(Y = c) > 0. Since the distribution of Y
assigns positive probability to the value c, this distribution cannot be continuous. In
order to derive the distribution of Y in a case like this, the c.d.f. of Y must be derived
by applying methods like those described above. For certain functions r, however,
the distribution of Y will be continuous; and it will then be possible to derive the
p.d.f. of Y directly without first deriving its c.d.f. We shall develop this case in detail
at the end of this section.

## Direct Derivation of the p.d.f. When r is One-to-One and Differentiable

::: {.callout-tip title="Example 3.8.7: Average Waiting Time (DeGroot and Schervish, p. 172)"}

Consider Example 3.8.3 again. The p.d.f. g of Y can be computed
from G(y) = 1− F(1/y) because F and 1/y both have derivatives at enough
places. We apply the chain rule for differentiation to obtain

except at y = 0 and at those values of y such that F(x) is not differentiable at x = 1/y.

:::

**Differentiable One-To-One Functions**: The method used in Example 3.8.7 generalizes
to very arbitrary differentiable one-to-one functions. Before stating the general
result, we should recall some properties of differentiable one-to-one functions from
calculus. Let r be a differentiable one-to-one function on the open interval (a, b).
Then r is either strictly increasing or strictly decreasing. Because r is also continuous,
it will map the interval (a, b) to another open interval (α, β), called the image of
(a, b) under r. That is, for each x ∈ (a, b), r(x) ∈ (α, β), and for each y ∈ (α, β) there is
x ∈ (a, b) such that y = r(x) and this y is unique because r is one-to-one. So the inverse
s of r will exist on the interval (α, β), meaning that for x ∈ (a, b) and y ∈ (α, β) we
have r(x) = y if and only if s(y) = x. The derivative of s will exist (possibly infinite),
and it is related to the derivative of r by

:::: {prf:theorem}
:label: thm-3-8-4
:enumerator: 3.8.4

Let X be a random variable for which the p.d.f. is f and for which $\Pr(a <X < b) = 1$.

(Here, a and/or b can be either finite or infinite.)

Let Y = r(X), and suppose that r(x)
is differentiable and one-to-one for $a <x <b$.
Let (α, β) be the image of the interval
(a, b) under the function r. Let s(y) be the inverse function of r(x) for α <y <β.
Then the p.d.f. g of Y is

::: {.proof}

If r is increasing, then s is increasing, and for each y ∈ (α, β),

G(y) = Pr(Y ≤ y) = Pr[r(X) ≤ y]= Pr[X ≤ s(y)]= F[s(y)].
It follows that G is differentiable at all y where both s is differentiable and where
F(x) is differentiable at x = s(y). Using the chain rule for differentiation, it follows
that the p.d.f. g(y) for $α <y <β$ will be

Because s is increasing, ds(y)/dy is positive; hence, it equals |ds(y)/dy| and Eq.
(3.8.4) implies Eq. (3.8.3). Similarly, if r is decreasing, then s is decreasing, and for
each y ∈ (α, β),

G(y) = Pr[r(X) ≤ y]= Pr[X ≥ s(y)]= 1− F[s(y)].

Using the chain rule again, we differentiate G to get the p.d.f. of Y

dy
. (3.8.5)
Since s is strictly decreasing, ds(y)/dy is negative so that −ds(y)/dy equals |ds(y)/
dy|. It follows that Eq. (3.8.5) implies Eq. (3.8.3).

::::

::: {.callout-tip title="Example 3.8.8: Microbial Growth (DeGroot and Schervish, p. 173)"}

A popular model for populations of microscopic organisms in
large environments is exponential growth. At time 0, suppose that v organisms are
introduced into a large tank of water, and let X be the rate of growth. After time $t$, we would predict a population size of veXt. Assume that X is unknown but has a
continuous distribution with p.d.f.

0 otherwise.
We are interested in the distribution of Y = veXt for known values of v and t. For
concreteness, let v = 10 and t = 5, so that r(x) = 10e5x.
In this example, $\Pr(0 < X < 1) = 1$ and $r$ is a continuous and strictly increasing function of x for 0 < x <1. As x varies over the interval (0, 1), it is found that
y = r(x) varies over the interval (10, 10e5). Furthermore, for 10 < y <10e5, the
inverse function is s(y) = log(y/10)/5. Hence, for 10 < y <10e5,
ds(y)
dy
= 1
5y
.
It follows from Eq. (3.8.3) that g(y) will be


::::

(sec-3-8-5)=
# Summary

We learned several methods for determining the distribution of a function of a random variable. For a random variable X with a continuous distribution having
p.d.f. f , if r is strictly increasing or strictly decreasing with differentiable inverse (i.e., s(r(x)) = x and s is differentiable), then the p.d.f. of Y = r(X) is g(y) =  f (s(y))|ds(y)/dy|.

A special transformation allows us to transform a random variable
X with the uniform distribution on the interval [0, 1] into a random variable Y with an
arbitrary continuous c.d.f.Gby Y = G−1(X). This method can be used in conjunction
with a uniform pseudo-random number generator to generate random variables with
arbitrary continuous distributions.

(sec-3-8-6)=
# Exercises

1. Suppose that the p.d.f. of a random variable X is as
follows:
f (x) =
 
3x2 for 0 < x <1,
0 otherwise.
Also, suppose that Y = 1− X2. Determine the p.d.f. of Y .
2. Suppose that a random variable X can have each of the
seven values −3, −2, −1, 0, 1, 2, 3 with equal probability.
Determine the p.f. of Y = X2 − X.
3. Suppose that the p.d.f. of a random variable X is as
follows:
f (x) =
 
1
2 x for 0 < x <2,
0 otherwise.
Also, suppose that Y = X(2 − X). Determine the c.d.f. and
the p.d.f. of Y .
4. Suppose that the p.d.f. of X is as given in Exercise 3.
Determine the p.d.f. of Y = 4 − X3.
5. Prove Theorem 3.8.2. (Hint: Either apply Theorem
3.8.4 or first compute the c.d.f. seperately for a > 0 and
a <0.)
6. Suppose that the p.d.f. of X is as given in Exercise 3.
Determine the p.d.f. of Y = 3X + 2.
7. Suppose that a random variable X has the uniform
distribution on the interval [0, 1]. Determine the p.d.f. of
(a) X2, (b) −X3, and (c) X1/2.
8. Suppose that the p.d.f. of X is as follows:
f (x) =
 
e
−x for x >0,
0 for x ≤ 0.
Determine the p.d.f. of Y = X1/2.
9. Suppose that X has the uniform distribution on the
interval [0, 1]. Construct a random variable Y = r(X) for
which the p.d.f. will be
g(y) =
 
3
8y2 for 0 < y <2,
0 otherwise.
10. Let X be a random variable for which the p.d.f f is as
given in Exercise 3. Construct a random variable Y = r(X)
for which the p.d.f. g is as given in Exercise 9.
11. Explain how to use a uniform pseudo-random number
generator to generate four independent values from a
distribution for which the p.d.f. is
g(y) =
 
1
2 (2y + 1) for 0 < y <1,
0 otherwise.
12. Let F be an arbitrary c.d.f. (not necessarily discrete,
not necessarily continuous, not necessarily either). Let
F
−1 be the quantile function from Definition 3.3.2. Let X
have the uniform distribution on the interval [0, 1]. Define
Y = F
−1(X). Prove that the c.d.f. of Y is F. Hint: Compute
Pr(Y ≤ y) in two cases. First, do the case in which y is the
unique value of x such that F(x) = F(y). Second, do the
case in which there is an entire interval of x values such
that F(x) = F(y).
13. Let Z be the rate at which customers are served in a
queue. Assume that Z has the p.d.f.
f (z) =
 
2e
−2z for z > 0,
0 otherwise.
Find the p.d.f. of the average waiting time T = 1/Z.
14. Let X have the uniform distribution on the interval
[a, b], and let c > 0. Prove that cX + d has the uniform
distribution on the interval [ca + d, cb + d].
15. Most of the calculation in Example 3.8.4 is quite general.
Suppose that X has a continuous distribution with
p.d.f. f . Let Y = X2, and show that the p.d.f. of Y is
g(y) = 1
2y1/2 [f (y1/2) + f (−y1/2)].
16. In Example 3.8.4, the p.d.f. of Y = X2 is much larger
for values of y near 0 than for values of y near 1 despite
the fact that the p.d.f. of X is flat. Give an intuitive reason
why this occurs in this example.
17. An insurance agent sells a policy which has a $100 deductible
and a $5000 cap. This means that when the policy
holder files a claim, the policy holder must pay the first
3.9 Functions of Two or More Random Variables 175
$100. After the first $100, the insurance company pays the
rest of the claim up to a maximum payment of $5000. Any
excess must be paid by the policy holder. Suppose that the
dollar amount X of a claim has a continuous distribution
with p.d.f. f (x) = 1/(1+ x)2 forx >0 and 0 otherwise. Let
Y be the amount that the insurance company has to pay
on the claim.
a. Write Y as a function of X, i.e., Y = r(X).
b. Find the c.d.f. of Y .
c. Explain why Y has neither a continuous nor a discrete
distribution.