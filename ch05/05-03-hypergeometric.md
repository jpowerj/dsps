(sec-5-3)=
# 5.3 The Hypergeometric Distributions

(sec-5-3-0)=
# Overview

In this section, we consider dependent Bernoulli random variables. A common
source of dependent Bernoulli random variables is sampling without replacement
from a finite population. Suppose that a finite population consists of a known
number of successes and failures. If we sample a fixed number of units from that
population, the number of successes in our sample will have a distribution that is
a member of the family of hypergeometric distributions.

(sec-5-3-1)=
# 5.3.1 Definition and Examples

## Example 5.3.1: Sampling without Replacement

Suppose that a box contains A red balls and B blue
balls. Suppose also that n ≥ 0 balls are selected at random from the box without
replacement, and let X denote the number of red balls that are obtained. Clearly,
we must have n ≤ A + B or we would run out of balls. Also, if n = 0, then X = 0
because there are no balls, red or blue, drawn. For cases with n ≥ 1, we can let
Xi
= 1 if the ith ball drawn is red and Xi
= 0 if not. Then each Xi has a Bernoulli
distribution, but X1, . . . , Xn are not independent in general. To see this, assume
that both A>0 and B >0 as well as n ≥ 2. We will now show that Pr(X2 = 1|X1 =
0)  = Pr(X2 = 1|X1 = 1). If X1 = 1, then when the second ball is drawn there are
only A − 1 red balls remaining out of a total of A + B − 1 available balls. Hence,
Pr(X2 = 1|X1 = 1) = (A − 1)/(A + B − 1). By the same reasoning,
Pr(X2 = 1|X1 = 0) = A
A + B − 1
>
A − 1
A + B − 1
.
Hence, X2 is not independent of X1, and we should not expect X to have a binomial
distribution.  
The problem described in Example 5.3.1 is a template for all cases of sampling
without replacement from a finite population with only two types of objects. Anything
that we learn about the random variable X in Example 5.3.1 will apply to every
case of sampling without replacement from finite populations with only two types of
objects. First, we derive the distribution of X.

## Theorem 5.3.1: Probability Function

The distribution of X in Example 5.3.1 has the p.f.
f (x|A, B, n) =


A
x
 

B
n − x
 


A + B
n
  , (5.3.1)
for
max{0, n − B} ≤ x ≤ min{n, A}, (5.3.2)
and f (x|A, B, n) = 0 otherwise.

Proof Clearly, the value of X can neither exceed n nor exceed A. Therefore, it must
be true that X ≤ min{n, A}. Similarly, because the number of blue balls n − X that
are drawn cannot exceed B, the value of X must be at least n − B. Because the value
of X cannot be less than 0, it must be true that X ≥ max{0, n − B}. Hence, the value
of X must be an integer in the interval in (5.3.2).
We shall now find the p.f. of X using combinatorial arguments from Sec. 1.8. The
 degenerate cases, those with A, B, and/or n equal to 0, are easy to prove because k0
 
= 1 for all nonnegative k, including k = 0. For the cases in which all of A, B, and n
are strictly positive, there are
 A+B
n
 
ways to choose n balls out of the A + B available
balls, and all of these choices are equally likely. For each integer x in the interval
(5.3.2), there are
 A
x
 
ways to choose x red balls, and for each such choice there are   B
n−x
 
ways to choose n − x blue balls. Hence, the probability of obtaining exactly x
red balls out of n is given by Eq. (5.3.1). Furthermore, f (x|A, B, n) must be 0 for all
other values of x, because all other values are impossible.

## Definition 5.3.1: Hypergeometric Distribution

Let A, B, and n be nonnegative integers with n ≤ A + B.
If a random variable X has a discrete distribution with p.f. as in Eqs. (5.3.1) and
(5.3.2), then it is said that X has the hypergeometric distribution with parameters A,
B, and n.

## Example 5.3.2: Sampling without Replacement from an Observed Data Set

Consider the patients in the
clinical trial whose results are tabulated in Table 2.1.We might need to reexamine a
subset of the patients in the placebo group. Suppose that we need to sample 11 distinct
patients from the 34 patients in that group.What is the distribution of the number of
successes (no relapse) that we obtain in the subsample? Let X stand for the number
of successes in the subsample. Table 2.1 indicates that there are 10 successes and
24 failures in the placebo group. According to the definition of the hypergeometric
distribution, X has the hypergeometric distribution with parameters A = 10, B = 24,
and n = 11. In particular, the possible values of X are the integers from 0 to 10. Even
though we sample 11 patients, we cannot observe 11 successes, since only 10 successes
are available.

# The Mean and Variance for a Hypergeometric Distribution

## Theorem 5.3.2: Mean and Variance

Let X have a hypergeometric distribution with strictly positive
parameters A, B, and n. Then

E(X) = nA
A + B
, (5.3.3)
Var(X) = nAB
(A + B)2
. A + B − n
A + B − 1
. (5.3.4)

Proof Assume that X is as defined in Example 5.3.1, the number of red balls drawn
when n balls are selected at random without replacement from a box containing A
red balls and B blue balls. For i = 1, . . . , n, let Xi
= 1 if the ith ball that is selected
is red, and let Xi
= 0 if the ith ball is blue. As explained in Example 4.2.4, we can
imagine that the n balls are selected from the box by first arranging all the balls in the
box in some random order and then selecting the first n balls from this arrangement.
It can be seen from this interpretation that, for i = 1, . . . , n,
Pr(Xi
= 1) = A
A + B
and Pr(Xi
= 0) = B
A + B
.
Therefore, for i = 1, . . . , n,
E(Xi) = A
A + B
and Var(Xi) = AB
(A + B)2
. (5.3.5)
Since X = X1 + . . . + Xn, the mean of X is the sum of the means of the Xi ’s, namely,
Eq. (5.3.3).

Next, use @thm-4-6-7 to write

Var(X) =
 n
i=1
Var(Xi) + 2
  
i<j
Cov(Xi, Xj ). (5.3.6)

Because of the symmetry among the random variables X1, . . . , Xn, every term
Cov(Xi, Xj ) in the final summation in Eq. (5.3.6) will have the same value as
Cov(X1, X2). Since there are

 n2
 
terms in this summation, it follows from @eq-5-3-5 and @eq-5-3-6 that

Var(X) = nAB
(A + B)2
+ n(n − 1) Cov(X1, X2). (5.3.7)
We could compute Cov(X1, X2) directly, but it is simpler to argue as follows. If
n = A + B, then Pr(X = A) = 1because all the balls in the box will be selected without
replacement. Thus, for n = A + B, X is a constant random variable and Var(X) = 0.
Setting Eq. (5.3.7) to 0 and solving for Cov(X1, X2) gives
Cov(X1, X2)=− AB
(A + B)2(A + B − 1)
.

Plugging this value back into Eq. (5.3.7) gives Eq. (5.3.4).

# Comparison of Sampling Methods

If we had sampled with replacement in Example 5.3.1, the number of red balls would
have the binomial distribution with parameters n and A/(A + B). In that case, the
mean number of red balls would still be nA/(A + B), but the variance would be
different. To see how the variances from sampling with and without replacement are
related, let T = A + B denote the total number of balls in the box, and let p = A/T
denote the proportion of red balls in the box. Then Eq. (5.3.4) can be rewritten as
follows:
Var(X) = np(1− p)
T − n
T − 1
. (5.3.8)

The variance np(1− p) of the binomial distribution is the variance of the number
of red balls when sampling with replacement. The factor α = (T − n)/(T − 1) in
Eq. (5.3.8) therefore represents the reduction in Var(X) caused by sampling without
replacement from a finite population. This α is called the finite population correction
in the theory of sampling from finite populations without replacement.

If n = 1, the value of this factor α is 1, because there is no distinction between
sampling with replacement and sampling without replacement when only one ball is
being selected. If n = T , then (as previously mentioned) α = 0 and Var(X) = 0. For
values of n between 1 and T , the value of α will be between 0 and 1.

For each fixed sample size n, it can be seen that α→1 as T →∞. This limit
reflects the fact that when the population size T is very large compared to the sample
size n, there is very little difference between sampling with replacement and sampling
without replacement. Theorem 5.3.4 expresses this idea more formally. The proof
relies on the following result which gets used several times in this text.

## Theorem 5.3.3

Let an and cn be sequences of real numbers such that an converges to 0, and cna2
n
converges to 0. Then
lim
n→∞
(1+ an)cne
−ancn = 1.

In particular, if ancn converges to b, then (1+ an)cn converges to eb.
The proof of Theorem 5.3.3 is left to the reader in Exercise 11.

## Theorem 5.3.4: Closeness of Binomial and Hypergeometric Distributions

Let $0 < p < 1$, and let n be a positive integer.

Let Y have the binomial distribution with parameters n and p.
For each positive integer T , let AT and BT be integers such that limT→∞ AT
=∞,
limT→∞ BT
=∞, and limT→∞ AT /(AT
+ BT ) = p. Let XT have the hypergeometric

distribution with parameters AT , BT , and n.

For each fixed n and each x = 0, . . . , n,
lim
T→∞
Pr(Y = x)
Pr(XT
= x)
= 1. (5.3.9)

Proof Once AT and BT are both larger than n, the formula in (5.3.1) is Pr(XT
= x)
for all x = 0, . . . , n. So, for large T , we have


Apply Stirling’s formula @thm-1-7-5 to each of the six factorials in the second
factor above. A little manipulation gives that

equals 1. Each of the following limits follows from @thm-5-3-3:

Inserting these limits in (5.3.10) yields

Since AT /(AT
+ BT )

converges to p, we have

Together, (5.3.11) and (5.3.12) imply that
lim
T→∞
 n
x
 
px(1− p)n−x
Pr(XT
= x)
= 1.

The numerator of this last expression is Pr(Y = x); hence, (5.3.9) holds.

In words, @thm-5-3-4 says that if the sample size $n$ represents a negligible fraction of the total population A + B, then the hypergeometric distribution with parameters A, B, and n will be very nearly the same as the binomial distribution with parameters
n and p = A/(A + B).

## Example 5.3.3: Population of Unknown Composition

The hypergeometric distribution can arise as a
conditional distribution when sampling is done without replacement from a finite
population of unknown composition. The simplest example would be to modify
Example 5.3.1 so that we still know the value of T = A + B but no longer know
A and B. That is, we know how many balls are in the box, but we don’t know how
many are red or blue. This makes P = A/T , the proportion of red balls, unknown.
Let h(p) be the p.f. of P. Here P is a random variable whose possible values are
0, 1/T, . . . , (T − 1)/T, 1. Conditional on P = p, we can behave as if we know that
A = pT and B = (1− p)T , and then the conditional distribution of X (the number
of red balls in a sample of size n) is the hypergeometric distribution with parameters
pT , (1− p)T , and n.

Suppose now that T is so large that the difference is essentially negligible between
this hypergeometric distribution and the binomial distribution with parameters
n and p. In this case, it is no longer necessary that we assume that T is known.
This is the situation that we had in mind (in Examples 3.4.10 and 3.6.7, as well as
their many variations and other examples) when we referred to P as the proportion
of successes among all patients who might receive a treatment or the proportion of
defectives among all parts produced by a machine. We think of T as essentially infinite
so that conditional on the proportion A/T , which we call P, the individual draws
become independent Bernoulli trials. If either A or T (or both) is unknown, it makes
sense that P = A/T will be unknown. In the augmented experiment described on
page 61, in which P can be computed from the experimental outcome, we have that
P is a random variable.  

## Note: Essentially Infinite Populations

The case in which T is essentially infinite
in Example 5.3.3 is the motivation for using the binomial distributions as models
for numbers of successes in samples from very large finite populations. Look at
Example 5.2.6, for instance. The number of Mexican Americans available to be
sampled for grand jury duty is finite, but it is huge relative to the number (220) of
grand jurors selected during the 2.5-year period. Technically, it is impossible that the
individual grand jurors are selected independently, but the difference is too small for
even the best defense attorney to make anything out of it. In the future, we will often
model Bernoulli random variables as independent when we imagine selecting them
286 Chapter 5 Special Distributions
at random without replacement from a huge finite population. We shall be relying
on Theorem 5.3.4 in these cases without explicitly saying so.
Extending the Definition of Binomial Coefficients
There is an extension of the definition of a binomial coefficient given in Sec. 1.8
that allows a simplification of the expression for the p.f. of the hypergeometric
d  istribution. For all positive integers r and m, where r ≤ m, the binomial coefficient m

 
= m!
r!(m − r)!
. (5.3.13)

It can be seen that the value of
 m
r
 
specified by Eq. (5.3.13) can also be written
in the form

For every real number m that is not necessarily a positive integer and every
positive integer r, the value of the right side of Eq. (5.3.14) is a well-defined number.
Therefore, for every real number m and every positive integer r, we can extend
the definition of the binomial coefficient
 m
r
 
by defining its value as that given by
Eq. (5.3.14).
The value of the binomial coefficient
 m
r
 
can be obtained from this definition
for all positive integers r and m. If r ≤ m, the value of
 m
r
 
is given by Eq.(5.3.13). If
r >m, one of the factors in the numerator of (5.3.14) will be 0 and
 m
r
 
= 0. Finally,
for every real number m, we shall define the value of
 m0
 
to be
 m0
 
= 1.
When this extended definition of a binomial coefficient is used, it can be seen
that the value of
 A
x
   B
n−x
 
is 0 for every integer x such that eitherx >Aor n −x >B.
Therefore, we can write the p.f. of the hypergeometric distribution with parameters
A, B, and n as follows:

0 otherwise.
(5.3.15)

It then follows from @eq-5-3-14 that $f(x \mid A, B, n) > 0$ if and only if $x$ is an integer in the interval @eq-5-3-2.

# Summary

We introduced the family of hypergeometric distributions. Suppose that n units are
drawn at random without replacement from a finite population consisting of T units
of which A are successes and B = T − A are failures. Let X stand for the number of
successes in the sample. Then the distribution ofX is the hypergeometric distribution
with parameters A, B, and n. We saw that the distinction between sampling from
a finite population with and without replacement is negligible when the size of the
population is huge relative to the size of the sample.We also generalized the binomial
coefficient notation so that
 m
r
 
is defined for all real numbers m and all positive
integers r.

# Exercises

1. In Example 5.3.2, compute the probability that all 10
success patients appear in the subsample of size 11 from
the Placebo group.
2. Suppose that a box contains five red balls and ten blue
balls. If seven balls are selected at random without replacement,
what is the probability that at least three red
balls will be obtained?
3. Suppose that seven balls are selected at random without
replacement from a box containing five red balls and
ten blue balls. If X denotes the proportion of red balls in
the sample, what are the mean and the variance of X?
4. If a random variable X has the hypergeometric distribution
with parameters A = 8, B = 20, and n, for what
value of n will Var(X) be a maximum?
5. Suppose that n students are selected at random without
replacement from a class containing T students, of whom
Aare boys and T − Aare girls. LetXdenote the number of
boys that are obtained. For what sample size n will Var(X)
be a maximum?
6. Suppose that X1 and X2 are independent random variables,
that X1 has the binomial distribution with parameters
n1 and p, and that X2 has the binomial distribution
with parameters n2 and p, where p is the same for both X1
and X2. For each fixed value of k (k = 1, 2, . . . , n1 + n2),
prove that the conditional distribution of X1 given that
X1 + X2 = k is hypergeometric with parameters n1, n2,
and k.
7. Suppose that in a large lot containing T manufactured
items, 30 percent of the items are defective and 70 percent
are nondefective. Also, suppose that ten items are
selected at random without replacement from the lot. Determine
(a) an exact expression for the probability that not
more than one defective item will be obtained and (b) an
approximate expression for this probability based on the
binomial distribution.
8. Consider a group of T persons, and let a1, . . . , aT denote
the heights of these T persons. Suppose that n persons
are selected from this group at random without replacement,
and let X denote the sum of the heights of
these n persons. Determine the mean and variance of X.
9. Find the value of
 3/2
4
 
.
10. Show that for all positive integers n and k,


.
11. Prove Theorem 5.3.3. Hint: Prove that
lim
n→∞
cn log(1+ an) − ancn
= 0
by applying Taylor’s theorem with remainder (see Exercise
13 in Sec. 4.2) to the functionf (x)=log(1+x) around
x = 0.

