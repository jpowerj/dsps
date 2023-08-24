# Sampling Distributions of Estimators

## The Sampling Distribution of a Statistic

A statistic is a function of some observable random variables, and hence is itself a
random variable with a distribution. That distribution is its sampling distribution,
and it tells us what values the statistic is likely to assume and how likely it is to
assume those values prior to observing our data. When the distribution of the
observable data is indexed by a parameter, the sampling distribution is specified
as the distribution of the statistic for a given value of the parameter.
Statistics and Estimators
Example
8.1.1
A Clinical Trial. In the clinical trial first introduced in Example 2.1.4, let θ stand for
the proportion who do not relapse among all possible imipramine patients.We could
use the observed proportion of patients without relapse in the imipramine group to
estimate θ. Prior to observing the data, the proportion of sampled patients with no
relapse is a random variable T that has a distribution and will not exactly equal the
parameter θ. However, we hope that T will be close to θ with high probability. For
example, we could try to compute the probability that |T − θ| < 0.1. Such calculations
require that we know the distribution of the random variable T . In the clinical trial,
we modeled the responses of the 40 patients in the imipramine group as conditionally
(given θ) i.i.d. Bernoulli random variables with parameter θ. It follows that the
conditional distribution of 40T given θ is the binomial distribution with parameters
40 and θ. The distribution of T can be derived easily from this. Indeed T has the
following p.f. given θ:
f (t|θ) =


40
40t
 
θ40t(1− θ)40(1−t), for t = 0, 1
40 , 2
40, . . . , 39
40 , 1,
and f (t|θ) = 0 otherwise.  
The distribution at the end of Example 8.1.1 is called the sampling distribution of
the statistic T , and we can use it to help address questions such as how close we expect
T to be to θ prior to observing the data. We can also use the sampling distribution
of T to help to determine how much we will learn about θ by observing T . If we are
464
8.1 The Sampling Distribution of a Statistic 465
trying to decide which of two different statistics to use as an estimator, their sampling
distributions can be useful for helping us to compare them.
The concept of sampling distribution applies to a larger class of random variables
than statistics.
Definition
8.1.1
Sampling Distribution. Suppose that the random variables X = (X1, . . . , Xn) form a
random sample from a distribution involving a parameter θ whose value is unknown.
Let T be a function of X and possibly θ. That is, T = r(X1, . . . , Xn, θ). The distribution
of T (given θ) is called the sampling distribution of T . We will use the notation
Eθ(T ) to denote the mean of T calculated from its sampling distribution.
The name “sampling distribution” comes from the fact that T depends on a random
sample and so its distribution is derived from the distribution of the sample.
Often, the random variable T in Definition 8.1.1 will not depend on θ, and hence
will be a statistic as defined in Definition 7.1.4. In particular, if T is an estimator
of θ (as defined in Definition 7.4.1), then T is also a statistic because it is a function
of X. Therefore, in principle, it is possible to derive the sampling distribution of each
estimator of θ. In fact, the distributions of many estimators and statistics have already
been found in previous parts of this book.
Example
8.1.2
Sampling Distribution of the M.L.E. of the Mean of a Normal Distribution. Supppose
that X1, . . . , Xn form a random sample from the normal distribution with mean μ
and variance σ2. We found in Examples 7.5.5 and 7.5.6 that the sample mean Xn is
the M.L.E. of μ. Furthermore, it was found in Corollary 5.6.2 that the distribution of
Xn is the normal distribution with mean μ and variance σ2/n.  
In this chapter, we shall derive, for random samples from a normal distribution,
the distribution of the sample variance and the distributions of various functions
of the sample mean and the sample variance. These derivations will lead us to
the definitions of some new distributions that play important roles in problems
of statistical inference. In addition, we shall study certain general properties of
estimators and their sampling distributions.
Purpose of the Sampling Distribution
Example
8.1.3
Lifetimes of Electronic Components. Consider the company in Example 7.1.1 that
sells electronic components. They model the lifetimes of these components as i.i.d.
exponential random variables with parameter θ conditional on θ. They model θ as
having the gamma distribution with parameters 1 and 2. Now, suppose that they are
about to observe n = 3 lifetimes, and they will use the posterior mean of θ as an
estimator. According to Theorem 7.3.4, the posterior distribution of θ will be the
gamma distribution with parameters 1+ 3= 4 and 2 + 3
i=1 Xi . The posterior mean
will then be ˆ θ = 4/(2 + 3
i=1 Xi).
Prior to observing the three lifetimes, the company may want to know how likely
it is that ˆ θ will be close to θ. For example, they may want to compute Pr(| ˆ θ − θ| < 0.1).
In addition, other interested parties such as customers might be interested in how
close the estimator is going to be to θ. But these others might not wish to assign
the same prior distribution to θ. Indeed, some of them may wish to assign no prior
distribution at all. We shall soon see that all of these people will find it useful to determine
the sampling distribution of ˆ θ.What they do with that sampling distribution
will differ, but they will all be able to make use of the sampling distribution.  
466 Chapter 8 Sampling Distributions of Estimators
In Example 8.1.3, after the company observes the three lifetimes, they will be
interested only in the posterior distribution of θ. They could then compute the
posterior probability that | ˆ θ − θ| < 0.1. However, before the sample is taken, both ˆ θ
and θ are random and Pr(| ˆ θ − θ| < 0.1) involves the joint distribution of ˆ θ and θ. The
sampling distribution is merely the conditional distribution of ˆ θ given θ. Hence, the
law of total probability says that
Pr(| ˆ θ − θ| < 0.1) = E
#
Pr(| ˆ θ − θ| < 0.1|θ)
$
.
In this way, the company makes use of the sampling distribution of ˆ θ as an intermediate
calculation on the way to computing Pr(| ˆ θ − θ| < 0.1).
Example
8.1.4
Lifetimes of Electronic Components. In Example 8.1.3, the sampling distribution of ˆ θ
does not have a name, but it is easy to see that ˆ θ is a monotone function of the statistic
T = 3
i=1 Xi that has the gamma distribution with parameters 3 and θ (conditional
on θ). So, we can compute the c.d.f. F(.|θ) for the sampling distribution of ˆ θ from the
c.d.f. G(.|θ) of the distribution of T . Argue as follows. For t > 0,
F(t|θ) = Pr( ˆ θ ≤ t |θ)
= Pr


4
2 + T
≤ t
    
θ
 
= Pr


T ≥ 4
t
− 2
    
θ
 
= 1− G


4
t
− 2
    
θ
 
.
For t ≤ 0, F(t|θ) = 0. Most statistical computer packages include the function G,
which is the c.d.f. of a gamma distribution. The company can now compute, for each
θ,
Pr(| ˆ θ − θ| < 0.1|θ) = F(θ + 0.1|θ) − F(θ − 0.1|θ). (8.1.1)
Figure 8.1 shows a graph of this probability as a function of θ. To complete the calculation
of Pr(| ˆ θ − θ| < 0.1), we must integrate (8.1.1) with respect to the distribution
of θ, that is, the gamma distribution with parameters 1 and 2. This integral cannot
be performed in closed form and requires a numerical approximation. One such approximation
would be a simulation, which will be discussed in Chapter 12. In this
example, the approximation yields Pr(| ˆ θ − θ| < 0.1) ≈ 0.478.
Also included in Fig. 8.1 is the calculation of Pr(| ˆ θ − θ| < 0.1|θ) using ˆ θ = 3/T , the
M.L.E. of θ. The sampling distribution of the M.L.E. can be derived in Exercise 9 at
the end of this section. Notice that the posterior mean has higher probability of being
close to θ than does the M.L.E. when θ is near the mean of the prior distribution.
When θ is far from the prior mean, the M.L.E. has higher probability of being close
to θ.  
Another case in which the sampling distribution of an estimator is needed is
when the statistician must decide which one of two or more available experiments
should be performed in order to obtain the best estimator of θ. For example, if she
must choose which sample size to use for an experiment, then she will typically base
her decision on the sampling distributions of the different estimators that might be
used for each sample size.
8.1 The Sampling Distribution of a Statistic 467
Figure 8.1 Plot of Pr(| ˆ θ −
θ| < 0.1|θ) for both ˆ θ equal
to the posterior mean and
ˆ θ equal to the M.L.E. in
Example 8.1.4.
Posterior mean
M.L.E.
0.5
0.2
0.4
0.6
0.8
1.0
0 1.0 1.5 2.0 u
Pr(⏐u
∧
2 u⏐ , 0.1)
As mentioned at the end of Example 8.1.3, there are statisticians who do not wish
to assign a prior distribution to θ. Those statisticians would not be able to calculate a
posterior distribution for θ. Instead, they would base all of their statistical inferences
on the sampling distribution of whatever estimators they chose. For example, a
statistician who chose to use the M.L.E. of θ in Example 8.1.4 would need to deal
with the entire curve in Fig. 8.1 corresponding to the M.L.E. in order to decide how
likely it is that the M.L.E. will be closer to θ than 0.1. Alternatively, she might choose
a different measure of how close the M.L.E. is to θ.
Example
8.1.5
Lifetimes of Electronic Components. Suppose that a statistician chooses to estimate
θ by the M.L.E., ˆ θ = 3/T instead of the posterior mean in Example 8.1.4. This
statistician may not find the graph in Fig. 8.1 very useful unless she can decide which
θ values are most important to consider. Instead of calculating Pr(| ˆ θ − θ| < 0.1|θ),
she might compute
Pr
      
ˆ θ
θ
− 1
     
< 0.1
     
θ
 
. (8.1.2)
This is the probability that ˆ θ is within 10% of the value of θ. The probability in (8.1.2)
could be computed from the sampling distribution of the M.L.E. Alternatively, one
can notice that ˆ θ/θ = 3/(θT ), and the distribution of θT is the gamma distribution
with parameters 3 and 1. Hence, ˆ θ/θ has a distribution that does not depend on θ.
It follows that Pr(| ˆ θ/θ − 1| < 0.1|θ) is the same number for all θ. In the notation of
Example 8.1.4, the c.d.f. of θT is G(.|1), and hence
Pr
      
ˆ θ
θ
− 1
     
< 0.1
     
θ
 
= Pr

    
3
θT
− 1
    
< 0.1
    
θ
 
= Pr


0.9 <
3
θT
< 1.1
    
θ
 
= Pr(2.73< θT <3.33|θ)
= G(3.33|1) − G(2.73|1) = 0.134.
The statistician can now claim that the probability is 0.134 that the M.L.E. of θ will
be within 10% of the value of θ, no matter what θ is.  
The random variable ˆ θ/θ in Example 8.1.5 is an example of a pivotal quantity,
which will be defined and used extensively in Sec. 8.5.
468 Chapter 8 Sampling Distributions of Estimators
Figure 8.2 Plot of Pr(|T −
θ| < 0.1|θ) in Example 8.1.6.
u
Pr(⏐T 2 u⏐ , 0.1)
0 0.2 0.4 0.6 0.8 1.0
0.75
0.80
0.85
0.90
1.00
0.95
Example
8.1.6
A Clinical Trial. In Example 8.1.1, we found the sampling distribution of T , the proportion
of patients without relapse in the imipramine group. Using that distribution,
we can draw a plot similar to that in Fig. 8.1. That is, for each θ, we can compute
Pr(|T − θ| < 0.1|θ). The plot appears in Fig. 8.2. The jumps and cyclic nature of the
plot are due the discreteness of the distribution of T . The smallest probability is
0.7318 at θ = 0.5. (The isolated points that appear below the main part of the graph
at θ equal to each multiple of 1/40 would appear equally far above the main part of
the graph, if we had plotted Pr(|T − θ| ≤ 0.1|θ) instead of Pr(|T − θ| < 0.1|θ).)  
Summary
The sampling distribution of an estimator ˆ θ is the conditional distribution of the estimator
given the parameter. The sampling distribution can be used as an intermediate
calculation in assessing the properties of a Bayes estimator prior to observing data.
More commonly, the sampling distribution is used by those statisticians who prefer
not to use prior and posterior distributions. For example, before the sample has been
taken, the statistician can use the sampling distribution of ˆ θ to calculate the probability
that ˆ θ will be close to θ. If this probability is high for every possible value of
θ, then the statistician can feel confident that the observed value of ˆ θ will be close
to θ. After the data are observed and a particular estimate is obtained, the statistician
would like to continue feeling confident that the particular estimate is likely to
be close to θ, even though explicit posterior probabilities cannot be given. It is not
always safe to draw such a conclusion, however, as we shall illustrate at the end of
Example 8.5.11.
Exercises
1. Suppose that a random sample X1, . . . , Xn is to be
taken from the uniform distribution on the interval [0, θ]
and that θ is unknown. How large a random sample must
be taken in order that
Pr
 
| max{X1, . . . , Xn
} − θ| ≤ 0.1θ
 
≥ 0.95,
for all possible θ?
2. Suppose that a random sample is to be taken from the
normal distribution with unknown mean θ and standard
deviation 2. How large a random sample must be taken
in order that Eθ (|Xn
− θ|2) ≤ 0.1 for every possible value
of θ?
3. For the conditions of Exercise 2, how large a random
sample must be taken in order that Eθ (|Xn
− θ|) ≤ 0.1 for
every possible value of θ?
8.2 The Chi-Square Distributions 469
4. For the conditions of Exercise 2, how large a random
sample must be taken in order that Pr(|Xn
− θ| ≤ 0.1) ≥
0.95 for every possible value of θ?
5. Suppose that a random sample is to be taken from the
Bernoulli distribution with unknown parameter p. Suppose
also that it is believed that the value of p is in the
neighborhood of 0.2. How large a random sample must
be taken in order that Pr(|Xn
− p| ≤ 0.1) ≥ 0.75 when
p = 0.2?
6. For the conditions of Exercise 5, use the central limit
theorem in Sec. 6.3 to find approximately the size of a
random sample that must be taken in order that Pr(|Xn
−
p| ≤ 0.1) ≥ 0.95 when p = 0.2.
7. For the conditions of Exercise 5, how large a random
sample must be taken in order that Ep(|Xn
− p|2) ≤ 0.01
when p = 0.2?
8. For the conditions of Exercise 5, how large a random
sample must be taken in order that Ep(|Xn
− p|2) ≤ 0.01
for every possible value of p (0 ≤ p ≤ 1)?
9. Let X1, . . . , Xn be a random sample from the exponential
distribution with parameter θ. Find the c.d.f. for
the sampling distribution of the M.L.E. of θ. (The M.L.E.
itself was found in Exercise 7 in Sec. 7.5.)
8.2 The Chi-Square Distributions
The family of chi-square (χ2) distributions is a subcollection of the family of
gamma distributions. These special gamma distributions arise as sampling distributions
of variance estimators based on random samples from a normal distribution.
Definition of the Distributions
Example
8.2.1
M.L.E. of the Variance of a Normal Distribution. Suppose that X1, . . . ,Xn form a
random sample from the normal distribution with known mean μ and unknown
variance σ2. The M.L.E. of σ2 is found in Exercise 6 in Sec. 7.5. It is
2σ2
0
= 1
n
 n
i=1
(Xi
− μ)2.
The distributions of 2σ2
0 and 2σ2
0 /σ 2 are useful in several statistical problems, and we
shall derive them in this section.  
In this section, we shall introduce and discuss a particular class of gamma distributions
known as the chi-square (χ2) distributions. These distributions, which are
closely related to random samples from a normal distribution, are widely applied in
the field of statistics. In the remainder of this book, we shall see how they are applied
in many important problems of statistical inference. In this section, we shall present
the definition of the χ2 distributions and some of their basic mathematical properties.
Definition
8.2.1
χ2 Distributions. For each positive number m, the gamma distribution with parameters
α = m/2 and β = 1/2 is called the χ2 distribution with m degrees of freedom. (See
Definition 5.7.2 for the definition of the gamma distribution with parameters α and
β.)
It is common to restrict the degrees of freedom m in Definition 8.2.1 to be an integer.
However, there are situations in which it will be useful for the degrees of freedom to
not be integers, so we will not make that restriction.
470 Chapter 8 Sampling Distributions of Estimators
If a random variable X has the χ2 distribution with m degrees of freedom, it
follows from Eq. (5.7.13) that the p.d.f. of X for x >0 is
f (x) = 1
2m/2 (m/2)
x(m/2)−1e
−x/2. (8.2.1)
Also, f (x) = 0 for x ≤ 0.
A short table of p quantiles for the χ2 distribution for various values of p and
various degrees of freedom is given at the end of this book. Most statistical software
packages include functions to compute the c.d.f. and the quantile function of an
arbitrary χ2 distribution.
It follows from Definition 8.2.1, and it can be seen from Eq. (8.2.1), that the
χ2 distribution with two degrees of freedom is the exponential distribution with
parameter 1/2 or, equivalently, the exponential distribution for which the mean is
2. Thus, the following three distributions are all the same: the gamma distribution
with parameters α = 1 and β = 1/2, the χ2 distribution with two degrees of freedom,
and the exponential distribution for which the mean is 2.
Properties of the Distributions
The means and variances of χ2 distributions follow immediately from Theorem 5.7.5,
and are given here without proof.
Theorem
8.2.1
Mean and Variance. If a random variable X has the χ2 distribution with m degrees of
freedom, then E(X) = m and Var(X) = 2m.
Furthermore, it follows from the moment generating function given in Eq.
(5.7.15) that the m.g.f. of X is
ψ(t) =


1
1− 2t
 m/2
for t <
1
2
.
The additivity property of the χ2 distribution, which is presented without proof
in the next theorem, follows directly from Theorem 5.7.7.
Theorem
8.2.2
If the random variables X1, . . . , Xk are independent and if Xi has the χ2 distribution
with mi degrees of freedom (i = 1, . . . , k), then the sum X1 + . . . + Xk has the χ2
distribution with m1 + . . . + mk degrees of freedom.
We shall now establish the basic relation between the χ2 distributions and the
standard normal distribution.
Theorem
8.2.3
Let X have the standard normal distribution. Then the random variable Y = X2 has
the χ2 distribution with one degree of freedom.
Proof Let f (y) and F(y) denote, respectively, the p.d.f. and the c.d.f. of Y . Also,
since X has the standard normal distribution, we shall let φ(x) and  (x) denote the
p.d.f. and the c.d.f. of X. Then for y >0,
F(y) = Pr(Y ≤ y) = Pr(X2 ≤ y) = Pr(−y1/2 ≤ X ≤ y1/2)
=  (y1/2) −  (−y1/2).
8.2 The Chi-Square Distributions 471
Since f (y) = F
 
(y) and φ(x) =  
 
(x), it follows from the chain rule for derivatives
that
f (y) = φ(y1/2)


1
2
y
−1/2
 
+ φ(−y1/2)


1
2
y
−1/2
 
.
Furthermore, since φ(y1/2) = φ(−y1/2) = (2π)
−1/2e
−y/2, it now follows that
f (y) = 1
(2π)1/2
y
−1/2e
−y/2 for y >0.
By comparing this equation with Eq. (8.2.1), it is seen that the p.d.f. of Y is indeed
the p.d.f. of the χ2 distribution with one degree of freedom.
We can now combine Theorem 8.2.3 with Theorem 8.2.2 to obtain the following
result, which provides the main reason that the χ2 distribution is important in
statistics.
Corollary
8.2.1
If the random variables X1, . . . , Xm are i.i.d. with the standard normal distribution,
then the sum of squares X2
1
+ . . . + X2
m has the χ2 distribution with m degrees of
freedom.
Example
8.2.2
M.L.E. of the Variance of aNormal Distribution. In Example 8.2.1, the random variables
Zi
= (Xi
− μ)/σ for i = 1, . . . , n form a random sample from the standard normal
distribution. It follows from Corollary 8.2.1 that the distribution of
 n
i=1 Z2
i is the
χ2 distribution with n degrees of freedom. It is easy to see that
 n
i=1 Z2
i is precisely
the same as n2σ2
0 /σ 2, which appears in Example 8.2.1. So the distribution of n2σ2
0 /σ 2
is the χ2 distribution with n degrees of freedom. The reader should also be able to
see that the distribution of 2σ2
0 itself is the gamma distribution with parameters n/2
and n/(2σ2) (Exercise 13).  
Example
8.2.3
Acid Concentration in Cheese. Moore and McCabe (1999, p. D-1) describe an experiment
conducted inAustralia to study the relationship between taste and the chemical
composition of cheese. One chemical whose concentration can affect taste is lactic
acid. Cheese manufacturers who want to establish a loyal customer base would like
the taste to be about the same each time a customer purchases the cheese. The variation
in concentrations of chemicals like lactic acid can lead to variation in the taste
of cheese. Suppose that we model the concentration of lactic acid in several chunks
of cheese as independent normal random variables with mean μ and variance σ2.
We are interested in how much these concentrations differ from the value μ. Let
X1, . . . , Xk be the concentrations in k chunks, and let Zi
= (Xi
− μ)/σ . Then
Y = 1
k
 k
i=1
|Xi
− μ|2 = σ2
k
 k
i=1
Z2
i
is one measure of how much the k concentrations differ from μ. Suppose that a difference
of u or more in lactic acid concentration is enough to cause a noticeable
difference in taste.We might then wish to calculate Pr(Y ≤ u2). According to Corollary
8.2.1, the distribution of W = kY/σ2 is χ2 with k degrees of freedom. Hence,
Pr(Y ≤ u2) = Pr(W ≤ ku2/σ 2).
For example, suppose that σ2 = 0.09, and we are interested in k = 10 cheese
chunks. Furthermore, suppose that u = 0.3 is the critical difference of interest. We
472 Chapter 8 Sampling Distributions of Estimators
can write
Pr(Y ≤ 0.32) = Pr


W ≤ 10 × 0.09
0.09
 
= Pr(W ≤ 10). (8.2.2)
Using the table of quantiles of the χ2 distribution with 10 degrees of freedom, we
see that 10 is between the 0.5 and 0.6 quantiles. In fact, the probability in Eq. (8.2.2)
can be found by computer software to equal 0.56, so there is a 44 percent chance
that the average squared difference between lactic acid concentration and mean
concentration in 10 chunks will be more than the desired amount. If this probability is
too large, the manufacturer might wish to invest some effort in reducing the variance
of lactic acid concentration.  
Summary
The chi-square distribution with n degrees of freedom is the same as the gamma
distribution with parameters m/2 and 1/2. It is the distribution of the sum of squares
of a sample of m independent standard normal random variables. The mean of the
χ2 distribution with m degrees of freedom is m, and the variance is 2m.
Exercises
1. Suppose that we will sample 20 chunks of cheese in
Example 8.2.3. Let T =
 20
i=1(Xi
− μ)2/20, whereXi is the
concentration of lactic acid in the ith chunk. Assume that
σ2 = 0.09. What number c satisfies Pr(T ≤ c) = 0.9?
2. Find the mode of the χ2 distribution with m degrees of
freedom (m = 1, 2, . . .).
3. Sketch the p.d.f. of the χ2 distribution withmdegrees of
freedom for each of the following values of m. Locate the
mean, the median, and the mode on each sketch. (a)m = 1;
(b) m = 2; (c) m = 3; (d) m = 4.
4. Suppose that a point (X, Y ) is to be chosen at random
in the xy-plane, where X and Y are independent random
variables and each has the standard normal distribution.
If a circle is drawn in the xy-plane with its center at the
origin, what is the radius of the smallest circle that can be
chosen in order for there to be probability 0.99 that the
point (X, Y ) will lie inside the circle?
5. Suppose that a point (X, Y, Z) is to be chosen at random
in three-dimensional space, where X, Y , and Z are
independent random variables and each has the standard
normal distribution. What is the probability that the distance
from the origin to the point will be less than 1 unit?
6. When the motion of a microscopic particle in a liquid
or a gas is observed, it is seen that the motion is irregular
because the particle collides frequently with other particles.
The probability model for this motion, which is called
Brownian motion, is as follows: A coordinate system is
chosen in the liquid or gas. Suppose that the particle is
at the origin of this coordinate system at time t = 0, and
let (X, Y, Z) denote the coordinates of the particle at any
time t > 0. The random variables X, Y , and Z are i.i.d.,
and each of them has the normal distribution with mean
0 and variance σ2t . Find the probability that at time t = 2
the particle will lie within a sphere whose center is at the
origin and whose radius is 4σ.
7. Suppose that the random variables X1, . . . , Xn are independent,
and each random variableXi has a continuous
c.d.f. Fi . Also, let the random variable Y be defined by the
relation Y =−2
 n
i=1 log Fi(Xi). Show that Y has the χ2
distribution with 2n degrees of freedom.
8. Suppose that X1, . . . , Xn form a random sample from
the uniform distribution on the interval [0, 1], and let
W denote the range of the sample, as defined in Example
3.9.7. Also, let gn(x) denote the p.d.f. of the random
variable 2n(1− W), and let g(x) denote the p.d.f. of the
χ2 distribution with four degrees of freedom. Show that
lim
n→∞
gn(x) = g(x) for x >0.
9. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with meanμand variance σ2. Find
the distribution of
n(Xn
− μ)2
σ2
.
10. Suppose that six random variables X1, . . . ,X6 form
a random sample from the standard normal distribution,
and let
Y = (X1 + X2 + X3)2 + (X4 + X5 + X6)2.
8.3 Joint Distribution of the Sample Mean and Sample Variance 473
Determine a value of c such that the random variable cY
will have a χ2 distribution.
11. If a random variable X has the χ2 distribution with m
degrees of freedom, then the distribution ofX1/2 is called a
chi (χ) distribution with m degrees of freedom. Determine
the mean of this distribution.
12. Consider again the situation described in Example
8.2.3. How small would σ2 need to be in order for Pr(Y ≤
0.09) ≥ 0.9?
13. Prove that the distribution of 5σ2
0 in Examples 8.2.1
and 8.2.2 is the gamma distribution with parameters n/2
and n/(2σ2).
8.3 Joint Distribution of the Sample Mean
and Sample Variance
Suppose that our data form a random sample from a normal distribution. The
sample mean ˆμ and sample variance 2σ2 are important statistics that are computed
in order to estimate the parameters of the normal distribution. Their marginal
distributions help us to understand how good each of them is as an estimator of
the corresponding parameter. However, the marginal distribution of ˆμ depends
on σ. The joint distribution of ˆμ and 2σ2 will allow us to make inferences about μ
without reference to σ.
Independence of the Sample Mean and Sample Variance
Example
8.3.1
Rain from Seeded Clouds. Simpson, Olsen, and Eden (1975) describe an experiment
in which a random sample of 26 clouds were seeded with silver nitrate to see if they
produced more rain than unseeded clouds. Suppose that, on a log scale, unseeded
clouds typically produced a mean rainfall of 4. In comparing the mean of the seeded
clouds to the unseeded mean, one might naturally see how far the average log-rainfall
of the seeded clouds ˆμ is from 4. But the variation in rainfall within the sample is also
important. For example, if one compared two different samples of seeded clouds,
one would expect the average rainfalls in the two samples to be different just due
to variation between clouds. In order to be confident that seeding the clouds really
produced more rain, we would want the average log-rainfall to exceed 4 by a large
amount compared to the variation between samples, which is closely related to the
variation within samples. Since we do not know the variance for seeded clouds, we
compute the sample variance 2σ2. Comparing ˆμ − 4 to 2σ2 requires us to consider the
joint distribution of the sample mean and the sample variance.  
Suppose that X1, . . . , Xn form a random sample from the normal distribution
with unknown mean μ and unknown variance σ2. Then, as was shown in Example
7.5.6, the M.L.E.’s of μ and σ2 are the sample mean Xn and the sample variance
(1/n)
 n
i=1(Xi
− Xn)2. In this section, we shall derive the joint distribution of these
two estimators.
We already know from Corollary 5.6.2 that the sample mean itself has the normal
distribution with mean μ and variance σ2/n. We shall establish the noteworthy
property that the sample mean and the sample variance are independent random
variables, even though both are functions of the same random variables X1, . . . , Xn.
Furthermore, we shall show that, except for a scale factor, the sample variance has
the χ2 distribution with n − 1 degrees of freedom. More precisely, we shall show that
the random variable
 n
i=1(Xi
− Xn)2/σ 2 has the χ2 distribution with n − 1 degrees
474 Chapter 8 Sampling Distributions of Estimators
of freedom. This result is also a rather striking property of random samples from a
normal distribution, as the following discussion indicates.
Because the random variables X1, . . . , Xn are independent, and because each
has the normal distribution with mean μ and variance σ2, the random variables
(X1 − μ)/σ, . . . , (Xn
− μ)/σ are also independent, and each of these variables has
the standard normal distribution. It follows from Corollary 8.2.1 that the sum of their
squares
 n
i=1(Xi
− μ)2/σ 2 has the χ2 distribution with n degrees of freedom. Hence,
the striking property mentioned in the previous paragraph is that if the population
mean μ is replaced by the sample mean Xn in this sum of squares, the effect is simply
to reduce the degrees of freedom in the χ2 distribution from n to n − 1. In summary,
we shall establish the following theorem.
Theorem
8.3.1
Suppose that X1, . . . , Xn form a random sample from the normal distribution
with mean μ and variance σ2. Then the sample mean Xn and the sample variance
(1/n)
 n
i=1(Xi
− Xn)2 are independent random variables,Xn has the normal distribution
with mean μ and variance σ2/n, and
 n
i=1(Xi
− Xn)2/σ 2 has the χ2 distribution
with n − 1 degrees of freedom.
Furthermore, it can be shown that the sample mean and the sample variance are
independent only when the random sample is drawn from a normal distribution.We
shall not consider this result further in this book. However, it does emphasize the
fact that the independence of the sample mean and the sample variance is indeed a
noteworthy property of samples from a normal distribution.
The proof of Theorem 8.3.1 makes use of transformations of several variables as
described in Sec. 3.9 and of the properties of orthogonal matrices. The proof appears
at the end of this section.
Example
8.3.2
Rain from Seeded Clouds. Figure 8.3 is a histogram of the logarithms of the rainfalls
from the seeded clouds in Example 8.3.1. Suppose that these logarithms X1, . . . , X26
are modeled as i.i.d. normal random variables with mean μ and variance σ2. If we
are interested in how much variation there is in rainfall among the seeded clouds,
we can compute the sample variance 2σ2 = 26
i=1(Xi
− Xn)2/26. The distribution of
U = 262σ2/σ 2 is the χ2 distribution with 25 degrees of freedom. We can use this
distribution to tell us how likely it is that 2σ2 will overestimate or underestimate σ2
by various amounts. For example, the χ2 table in this book says that the 0.25 quantile
of the χ2 distribution with 25 degrees of freedom is 19.94, so Pr(U ≤ 19.94) = 0.25.
Figure 8.3 Histogram of
log-rainfalls from seeded
clouds.
2 4 6 8
8
6
4
2
0
log(rainfall)
Count
8.3 Joint Distribution of the Sample Mean and Sample Variance 475
It follows that
0.25 = Pr
 
2σ2
σ2
≤ 19.94
26
 
= Pr(2σ2 ≤ 0.77σ2). (8.3.1)
That is, there is probability 0.25 that 2σ2 will underestimate σ2 by 23 percent or more.
The observed value of 2σ2 is 2.460 in this example. The probability calculated in
Eq. (8.3.1) has nothing to do with how far 2.460 is from σ2. Eq. (8.3.1) tells us the
probability (prior to observing the data) that 2σ2 would be at least 23% below σ2.  
Estimation of the Mean and Standard Deviation
We shall assume thatX1, . . . , Xn form a random sample from the normal distribution
with unknown mean μ and unknown standard deviation σ. Also, as usual, we shall
denote the M.L.E.’s of μ and σ by ˆμ and ˆσ . Thus,
ˆμ
= Xn and ˆσ =
 
1
n
 n
i=1
(Xi
− Xn)2
 1/2
.
Notice that ˆσ 2 = 2σ2, the M.L.E. of σ2. For the remainder of this book, when referring
to the M.L.E. of σ2, we shall use whichever symbol ˆσ 2 or 2σ2 is more convenient. As an
illustration of the application of Theorem 8.3.1, we shall now determine the smallest
possible sample size n such that the following relation will be satisfied:
Pr


| ˆ μ − μ| ≤ 1
5
σ and | ˆ σ − σ| ≤ 1
5
σ
 
≥ 1
2
. (8.3.2)
In other words, we shall determine the minimum sample size n for which the probability
will be at least 1/2 that neither ˆμ nor ˆσ will differ from the unknown value it is
estimating by more than (1/5)σ .
Because of the independence of ˆμ and ˆσ , the relation (8.3.2) can be rewritten as
follows:
Pr


| ˆ μ − μ| <
1
5
σ
 
Pr


| ˆ σ − σ| <
1
5
σ
 
≥ 1
2
. (8.3.3)
If we let p1 denote the first probability on the left side of the relation (8.3.3), and let
U be a random variable that has the standard normal distribution, this probability
can be written in the following form:
p1 = Pr

√
n| ˆ μ − μ|
σ
<
1
5
√
n
 
= Pr


|U| <
1
5
√
n
 
.
Similarly, ifwe let p2 denote the second probability on the left side of the relation
(8.3.3), and let V = nˆσ 2/σ 2, this probability can be written in the following form:
p2 = Pr


0.8 <
ˆσ
σ
< 1.2
 
= Pr
 
0.64n <
nˆσ 2
σ2
< 1.44n
 
= Pr(0.64n < V <1.44n).
By Theorem 8.3.1, the random variable V has the χ2 distribution with n − 1 degrees
of freedom.
For each specific value of n, the values of p1 and p2 can be found, at least
approximately, from the table of the standard normal distribution and the table of
the χ2 distribution given at the end of this book. In particular, after various values
476 Chapter 8 Sampling Distributions of Estimators
of n have been tried, it will be found that for n = 21 the values of p1 and p2 are
p1 = 0.64 and p2 = 0.78. Hence, p1p2 = 0.50, and it follows that the relation (8.3.2)
will be satisfied for n = 21.
Proof of Theorem 8.3.1
We already knew from Corollary 5.6.2 that the distribution of the sample mean was
as stated in Theorem 8.3.1. What remains to prove is the stated distribution of the
sample variance and the independence of the sample mean and sample variance.
Orthogonal Matrices
We begin with some properties of orthogonal matrices that are essential for the proof.
Definition
8.3.1
Orthogonal Matrix. It is said that an n × n matrix A is orthogonal if A−1 = A , where
A  is the transpose of A.
In other words, a matrix Ais orthogonal if and only if AA  = A A = I, where I is the
n × n identity matrix. It follows from this latter property that a matrix is orthogonal
if and only if the sum of the squares of the elements in each row is 1 and the sum
of the products of the corresponding elements in every pair of different rows is 0.
Alternatively, a matrix is orthogonal if and only if the sum of the squares of the
elements in each column is 1 and the sum of the products of the corresponding
elements in every pair of different columns is 0.
Properties of Orthogonal Matrices We shall now derive two important properties
of orthogonal matrices.
Theorem
8.3.2
Determinant is 1. If A is orthogonal, then |det A| = 1.
Proof To prove this result, it should be recalled that det A= det A  for every square
matrix A. Also recall that det AB = (det A)(det B) for square matrices A and B.
Therefore,
det(AA 
) = (det A)(det A 
) = (det A)2.
Also, if A is orthogonal, then AA  = I, and it follows that
det(AA 
) = det I = 1.
Hence (det A)2 = 1 or, equivalently, |det A| = 1.
Theorem
8.3.3
Squared Length Is Preserved. Consider two n-dimensional random vectors
X =
⎡
⎢⎣
X1
...
Xn
⎤
⎥⎦
and Y =
⎡
⎢⎣
Y1
...
Yn
⎤
⎥⎦
, (8.3.4)
and suppose that Y = AX, where A is an orthogonal matrix. Then
 n
i=1
Y 2
i
=
 n
i=1
X2
i . (8.3.5)
8.3 Joint Distribution of the Sample Mean and Sample Variance 477
Proof This result follows from the fact that A A= I, because
 N
i=1
Y 2
i
= Y Y = X A AX = X X =
 n
i=1
X2
i .
Multiplication of a vector X by an orthogonal matrixAcorresponds to a rotation
of X in n-dimensional space possibly followed by changing the signs of some coordinates.
Neither of these operations can change the length of the original vector X,
and that length equals (
 n
i=1 X2
i )1/2.
Together, these two properties of orthogonal matrices imply that if a random
vector Y is obtained from a random vector X by an orthogonal linear transformation
Y = AX, then the absolute value of the Jacobian of the transformation is 1 and n
i=1 Y 2
i
= n
i=1 X2
i .
We combine Theorems 8.3.2 and 8.3.3 to obtain a useful fact about orthogonal
transformations of a random sample of standard normal random variables.
Theorem
8.3.4
Suppose that the random variables, X1, . . . , Xn are i.i.d. and each has the standard
normal distribution. Suppose also that Ais an orthogonal n × n matrix, and Y = AX.
Then the random variables Y1, . . . , Yn are also i.i.d., each also has the standard normal
distribution, and
 n
i=1 X2
i
= n
i=1 Y 2
i .
Proof The joint p.d.f. of X1, . . . , Xn is as follows, for −∞< xi <∞(i = 1, . . . , n):
fn(x) = 1
(2π)n/2 exp
 
−1
2
 n
i=1
x2
i
 
. (8.3.6)
IfAis an orthogonal n × n matrix, and the random variables Y1, . . . , Yn are defined by
the relation Y = AX, where the vectors X and Y are as specified in Eq. (8.3.4). This is
a linear transformation, so the joint p.d.f. of Y1, . . . , Yn is obtained from Eq. (3.9.20)
and equals
gn( y) = 1
|det A|
fn(A−1y).
Let x = A−1y. Since A is orthogonal, |det A| = 1 and
 n
i=1 y2
i
= n
i=1 x2
i , as we just
proved. So,
gn( y) = 1
(2π)n/2 exp
 
−1
2
 n
i=1
y2
i
 
. (8.3.7)
It can be seen from Eq. (8.3.7) that the joint p.d.f. of Y1, . . . , Yn is exactly the
same as the joint p.d.f. of X1, . . . , Xn.
Proof of Theorem 8.3.1
Random Samples from the Standard Normal Distribution We shall begin by
proving Theorem 8.3.1 under the assumption that X1, . . . ,Xn form a random sample
from the standard normal distribution. Consider the n-dimensional row vector u, in
which each of the n components has the value 1/
√
n:
u =
 
1 √
n
. . .
1 √
n
 
. (8.3.8)
Since the sum of the squares of the n components of the vector u is 1, it is possible
to construct an orthogonal matrix A such that the components of the vector u form
478 Chapter 8 Sampling Distributions of Estimators
the first row of A. This construction, called the Gram-Schmidt method, is described
in textbooks on linear algebra such as Cullen (1972) and will not be discussed here.
We shall assume that such a matrix Ahas been constructed, and we shall again define
the random variables Y1, . . . , Yn by the transformation Y = AX.
Since the components of u form the first row of A, it follows that
Y1 = uX =
 n
i=1
1 √
n
Xi
=
√
n Xn. (8.3.9)
Furthermore, by Theorem 8.3.4,
 n
i=1 X2
i
= n
i=1 Y 2
i . Therefore,
 n
i=2
Y 2
i
=
 n
i=1
Y 2
i
− Y 2
1
=
 n
i=1
X2
i
− nX
2
n
=
 n
i=1
(Xi
− Xn)2.
We have thus obtained the relation
 n
i=2
Y 2
i
=
 n
i=1
(Xi
− Xn)2. (8.3.10)
It is known from Theorem 8.3.4 that the random variables Y1, . . . , Yn are independent.
Therefore, the two random variables Y1 and
 n
i=2 Y 2
i are independent,
and it follows from Eqs. (8.3.9) and (8.3.10) that Xn and
 n
i=1(Xi
− Xn)2 are independent.
Furthermore, it is known from Theorem 8.3.4 that the n − 1 random
variables Y2, . . . , Yn are i.i.d., and that each of these random variables has the standard
normal distribution. Hence, by Corollary 8.2.1 the random variable
 n
i=2 Y 2
i
has the χ2 distribution with n − 1 degrees of freedom. It follows from Eq. (8.3.10)
that
 n
i=1(Xi
− Xn)2 also has the χ2 distribution with n − 1 degrees of freedom.
Random Samples from an Arbitrary Normal Distribution Thus far, in proving
Theorem 8.3.1, we have considered only random samples from the standard normal
distribution. Suppose now that the random variables X1, . . . , Xn form a random
sample from an arbitrary normal distribution with mean μ and variance σ2.
If we let Zi
= (Xi
− μ)/σ for i = 1, . . . , n, then the random variables Z1, . . . , Zn
are independent, and each has the standard normal distribution. In other words, the
joint distribution of Z1, . . . , Zn is the same as the joint distribution of a random
sample from the standard normal distribution. It follows from the results that have
just been obtained that Zn and
 n
i=1(Zi
− Zn)2 are independent, and
 n
i=1(Zi
− Zn)2
has the χ2 distribution with n − 1 degrees of freedom. However, Zn
= (Xn
− μ)/σ
and
 n
i=1
(Zi
− Zn)2 = 1
σ2
 n
i=1
(Xi
− Xn)2. (8.3.11)
We now conclude that the sample meanXn and the sample variance (1/n)
 n
i=1(Xi
−
Xn)2 are independent, and that the random variable on the right side of Eq. (8.3.11)
has the χ2 distribution with n − 1 degrees of freedom. All the results stated in
Theorem 8.3.1 have now been established.
8.3 Joint Distribution of the Sample Mean and Sample Variance 479
Summary
Let X1, . . . , Xn be a random sample from the normal distribution with mean μ
and variance σ2. Then the sample mean ˆμ = Xn
= 1
n
 n
i=1 Xi and sample variance
2σ2 = 1
n
 n
i=1(Xi
− Xn)2 are independent random variables. Furthermore, ˆμ has the
normal distribution with mean μ and variance σ2/n, and n2σ2/σ 2 has a chi-square
distribution with n − 1 degrees of freedom.
Exercises
1. Assume that X1, . . . , Xn form a random sample from
the normal distribution with mean μ and variance σ2.
Show that5σ2 has the gamma distribution with parameters
(n − 1)/2 and n/(2σ2).
2. Determine whether or not each of the five following
matrices is orthogonal:
a.
 0 1 0
0 0 1
1 0 0
 
b.
  0.8 0 0.6
−0.6 0 0.8
0 −1 0
 
c.
  0.8 0 0.6
−0.6 0 0.8
0 0.5 0
 
d.
⎡
⎢⎢⎢⎢⎣
− 1 √
3
√1
3
√1
3
√1
3
−√1
3
√1
3
√1
3
√1
3
−√1
3
⎤
⎥⎥⎥⎥⎦
e.
⎡
⎢⎢⎢⎢⎢⎢⎣
1
2
1
2
1
2
1
2
−1
2
−1
2
1
2
1
2
−1
2
1
2
−1
2
1
2
−1
2
1
2
1
2
−1
2
⎤
⎥⎥⎥⎥⎥⎥⎦
3.a. Construct a 2 × 2 orthogonal matrix for which the
first row is as follows:
[ √1
2
√1
2
] .
b. Construct a 3 × 3 orthogonal matrix for which the
first row is as follows:
[ √1
3
√1
3
√1
3
] .
4. Suppose that the random variables X1, X2, and X3 are
i.i.d., and that each has the standard normal distribution.
Also, suppose that
Y1 = 0.8X1 + 0.6X2,
Y2 =
√
2(0.3X1 − 0.4X2 − 0.5X3),
Y3 =
√
2(0.3X1 − 0.4X2 + 0.5X3).
Find the joint distribution of Y1, Y2, and Y3.
5. Suppose that the random variables X1 and X2 are independent,
and that each has the normal distribution with
mean μ and variance σ2. Prove that the random variables
X1 + X2 and X1 − X2 are independent.
6. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with mean μ and variance σ2. Assuming
that the sample size n is 16, determine the values
of the following probabilities:
a. Pr
#
1
2σ2 ≤ 1
n
 n
i=1(Xi
− μ)2 ≤ 2σ2
$
b. Pr
#
1
2σ2 ≤ 1
n
 n
i=1(Xi
− Xn)2 ≤ 2σ2
$
7. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with mean μ and variance σ2, and
let5σ2 denote the sample variance. Determine the smallest
values of n for which the following relations are satisfied:
a. Pr


2σ2
σ2
≤ 1.5
 
≥ 0.95
b. Pr
 
|5σ2 − σ2| ≤ 1
2σ2
 
≥ 0.8
8. Suppose thatX has the χ2 distribution with 200 degrees
of freedom. Explain why the central limit theorem can be
used to determine the approximate value of Pr(160<X<
240) and find this approximate value.
9. Suppose that each of two statisticians, A and B, independently
takes a random sample of 20 observations from
the normal distribution with unknown mean μ and known
variance 4. Suppose also that statistician A finds the sample
variance in his random sample to be 3.8, and statistician
B finds the sample variance in her random sample
to be 9.4. For which random sample is the sample mean
likely to be closer to the unknown value of μ?
480 Chapter 8 Sampling Distributions of Estimators
8.4 The t Distributions
When our data are a sample from the normal distribution with mean μ and variance
σ2, the distribution of Z = n1/2(ˆμ − μ)/σ is the standard normal distribution,
where ˆμ is the sample mean. If σ2 is unknown, we can replace σ by an estimator
(similar to the M.L.E.) in the formula for Z. The resulting random variable has
the t distribution with n − 1 degrees of freedom and is useful for making inferences
about μ alone even when both μ and σ2 are unknown.
Definition of the Distributions
Example
8.4.1
Rain from Seeded Clouds. Consider the same sample of log-rainfall measurements
from 26 seeded clouds from Example 8.3.2. Suppose now that we are interested in
how far the sample average Xn of those measurements is from the mean μ.We know
that n1/2(Xn
− μ)/σ has the standard normal distribution, but we do not know σ. If
we replace σ by an estimator ˆσ such as the M.L.E., or something similar, what is the
distribution of n1/2(Xn
− μ)/ˆσ , and how can we make use of this random variable to
make inferences about μ?  
In this section, we shall introduce and discuss another family of distributions,
called the t distributions, which are closely related to random samples from a normal
distribution. The t distributions, like the χ2 distributions, have been widely applied in
important problems of statistical inference. The t distributions are also known as Student’s
distributions (see Student, 1908), in honor ofW. S. Gosset, who published his
studies of this distribution in 1908 under the pen name “Student.” The distributions
are defined as follows.
Definition
8.4.1
t Distributions. Consider two independent random variables Y and Z, such that Y
has the χ2 distribution with m degrees of freedom and Z has the standard normal
distribution. Suppose that a random variable X is defined by the equation
X = Z


Y
m
 1/2 . (8.4.1)
Then the distribution of X is called the t distribution with m degrees of freedom.
The derivation of the p.d.f. of the t distribution withmdegrees of freedom makes
use of the methods of Sec. 3.9 and will be given at the end of this section. But we state
the result here.
Theorem
8.4.1
Probability Density Function. The p.d.f. of the t distribution withmdegrees of freedom
is
 
 
m+1
2
 
(mπ)1/2 
 m2
 
 
1+ x2
m
 −(m+1)/2
for −∞< x <∞. (8.4.2)
Moments of the t Distributions Although the mean of the t distribution does not
exist when m ≤ 1, the mean does exist for every value ofm>1. Of course, whenever
the mean does exist, its value is 0 because of the symmetry of the t distribution.
8.4 The t Distributions 481
In general, if a random variable X has the t distribution with m degrees of
freedom (m>1), then it can be shown that E(|X|k) <∞fork <mand that E(|X|k) =
∞ for k ≥ m. If m is an integer, the first m − 1 moments of X exist, but no moments
of higher order exist. It follows, therefore, that the m.g.f. of X does not exist.
It can be shown (see Exercise 1 at the end of this section) that if X has the t
distribution with m degrees of freedom (m > 2), then Var(X) = m/(m − 2).
Relation to Random Samples from a Normal Distribution
Example
8.4.2
Rain from Seeded Clouds. Return to Example 8.4.1. We have already seen that Z =
n1/2(Xn
− μ)/σ has the standard normal distribution. Furthermore, Theorem 8.3.1
says that Xn (and hence Z) is independent of Y = n2σ2/σ 2, which has the χ2 distribution
with n − 1 degrees of freedom. It follows that Z/(Y/[n − 1])1/2 has the t
distribution with n − 1 degrees of freedom. We shall show how to use this fact after
stating the general version of this result.  
Theorem
8.4.2
Suppose that X1, . . . , Xn form a random sample from the normal distribution with
mean μ and variance σ2. Let Xn denote the sample mean, and define
σ
  =
  n
i=1(Xi
− Xn)2
n − 1
 1/2
. (8.4.3)
Then n1/2(Xn
− μ)/σ
  has the t distribution with n − 1 degrees of freedom.
Proof Define S2
n
= n
i=1(Xi
−Xn)2. Next, defineZ =n1/2(Xn
−μ)/σ and Y =S2
n/σ 2.
It follows from Theorem 8.3.1 that Y andZ are independent, Y has the χ2 distribution
with n − 1 degrees of freedom, and Z has the standard normal distribution. Finally,
define U by
U = Z


Y
n − 1
 1/2 .
It follows from the definition of the t distribution that U has the t distribution with
n − 1 degrees of freedom. It is easily seen that U can be rewritten as
U = n1/2(Xn
− μ)
 
S2
n
n − 1
 1/2 . (8.4.4)
The denominator of the expression on the right side of Eq. (8.4.4) is easily recognized
as σ
  defined in Eq. (8.4.3).
The first rigorous proof of Theorem 8.4.2 was given by R. A. Fisher in 1923.
One important aspect of Eq. (8.4.4) is that neither the value of U nor the
distribution of U depends on the value of the variance σ2. In Example 8.4.1, we tried
replacing σ in the random variable Z = n1/2(Xn
− μ)/σ by ˆσ . Instead, Theorem 8.4.2
suggests that we should replace σ by σ
  defined in Eq. (8.4.3). If we replace σ by σ
 ,
we produce the random variable U in Eq. (8.4.4) that does not involve σ and also
has a distribution that does not depend on σ.
482 Chapter 8 Sampling Distributions of Estimators
The reader should notice that σ
  differs from the M.L.E. ˆσ of σ by a constant
factor,
σ
  =
 
S2
n
n − 1
 1/2
=


n
n − 1
 1/2
ˆ σ. (8.4.5)
It can be seen from Eq. (8.4.5) that for large values of n the estimators σ
  and ˆσ will
be very close to each other. The estimator σ
  will be discussed further in Sec. 8.7.
If the sample size n is large, the probability that the estimator σ
  will be close to σ
is high. Hence, replacing σ by σ
  in the random variable Z will not greatly change the
standard normal distribution ofZ. For this reason, it is plausible that the t distribution
with n − 1 degrees of freedom should be close to the standard normal distribution if
n is large. We shall return to this point more formally later in this section.
Example
8.4.3
Rain from Seeded Clouds. Return to Example 8.4.2. Under the assumption that the
observationsX1, . . . , Xn (log-rainfalls) are independent with common normal distribution,
the distribution ofU = n1/2(Xn
− μ)/σ
  is the t distribution with n − 1degrees
of freedom. With n = 26, the table of the t distribution tells us that the 0.9 quantile
of the t distribution with 25 degrees of freedom is 1.316, so Pr(U ≤ 1.316) = 0.9. It
follows that
Pr
 
Xn
≤ μ + 0.2581σ
 
 
= 0.9,
because 1.316/(26)1/2 = 0.2581. That is, the probability is 0.9 that Xn will be no more
than 0.2581 times σ
  above μ. Of course, σ
  is a random variable as well as Xn, so this
result is not as informative as we might have hoped. In Sections 8.5 and 8.6, we will
show how to make use of the t distribution to make some standard inferences about
the unknown mean μ.  
Relation to the Cauchy Distribution and to the Standard
Normal Distribution
It can be seen from Eq. (8.4.2) (and Fig. 8.4) that the p.d.f. g(x) is a symmetric, bellshaped
function with its maximum value at x = 0. Thus, its general shape is similar
to that of the p.d.f. of a normal distribution with mean 0. However, as x→∞ or
x→−∞, the tails of the p.d.f. g(x) approach 0 much more slowly than do the tails
of the p.d.f. of a normal distribution. In fact, it can be seen from Eq. (8.4.2) that the t
distribution with one degree of freedom is the Cauchy distribution, which was defined
in Example 4.1.8. The p.d.f. of the Cauchy distribution was sketched in Fig. 4.3. It
was shown in Example 4.1.8 that the mean of the Cauchy distribution does not exist,
because the integral that specifies the value of the mean is not absolutely convergent.
It follows that, although the p.d.f. of the t distribution with one degree of freedom
is symmetric with respect to the point x = 0, the mean of this distribution does not
exist.
It can also be shown from Eq. (8.4.2) that, as n→∞, the p.d.f. g(x) converges to
the p.d.f. φ(x) of the standard normal distribution for every value ofx (−∞<x <∞).
This follows from Theorem 5.3.3 and the following result:
lim
m→∞
 
 
m + 1
2
 
 (m)m1/2
= 1. (8.4.6)
8.4 The t Distributions 483
Figure 8.4 p.d.f.’s of standard
normal and t distributions.
 4  2 0 2 4
0.1
0.2
0.3
0.4
Density
x
Normal
Cauchy
5 Degrees
of Freedom
20 Degrees
of Freedom
(See Exercise 7 for a way to prove the above result.) Hence, when n is large, the t
distribution with n degrees of freedom can be approximated by the standard normal
distribution. Figure 8.4 shows the p.d.f. of the standard normal distribution together
with the p.d.f.’s of the t distributions with 1, 5, and 20 degrees of freedom so that the
reader can see how the t distributions get closer to normal as the degrees of freedom
increase.
A short table of p quantiles for the t distribution with m degrees of freedom for
various values of p and m is given at the end of this book. The probabilities in the
first line of the table, corresponding to m = 1, are those for the Cauchy distribution.
The probabilities in the bottom line of the table corresponding to m=∞are those
for the standard normal distribution. Most statistical packages include a function to
compute the c.d.f. and the quantile function of an arbitrary t distribution.
Derivation of the p.d.f.
Suppose that the joint distribution of Y and Z is as specified in Definition 8.4.1. Then,
because Y and Z are independent, their joint p.d.f. is equal to the product f1(y)f2(z),
where f1(y) is the p.d.f. of the χ2 distribution with m degrees of freedom and f2(z) is
the p.d.f. of the standard normal distribution. Let X be defined by Eq. (8.4.1) and, as
a convenient device, let W = Y . We shall determine first the joint p.d.f. of X and W.
From the definitions of X and W,
Z = X


W
m
 1/2
and Y = W. (8.4.7)
The Jacobian of the transformation (8.4.7) from X and W to Y and Z is (W/m)1/2.
The joint p.d.f. f (x,w) of X andW can be obtained from the joint p.d.f. f1(y)f2(z) by
replacing y and z by the expressions given in (8.4.7) and then multiplying the result
by (w/m)1/2. It is then found that the value of f (x,w) is as follows, for−∞< x <∞
andw >0:
f (x,w) = f1(w)f2
 
x
 
w
m
 1/2
  

w
m
 1/2
= cw(m+1)/2−1 exp
 
−1
2
 
1+ x2
m
 
w
 
, (8.4.8)
where
484 Chapter 8 Sampling Distributions of Estimators
c =
 
2(m+1)/2(mπ)1/2 


m
2
  −1
.
The marginal p.d.f. g(x) of X can be obtained from Eq. (8.4.8) by using the
relation
g(x) =
 
f (x,w) dw
= c
  ∞
0
w(m+1)/2−1 exp[−wh(x)]dw,
where h(x) = [1+ x2/m]/2. It follows from Eq. (5.7.10) that
g(x) = c
 ((m + 1)/2)
h(x)(m+1)/2
.
Substituting the formula for c into this yields the function in (8.4.2).
Summary
Let X1, . . . , Xn be a random sample from the normal distribution with mean μ
and variance σ2. Let Xn
= 1
n
 n
i=1 Xi and σ
  =
 
1
n−1
 n
i=1(Xi
− Xn)2
 1/2
. Then the
distribution of n1/2(Xn
− μ)/σ
  is the t distribution with n − 1 degrees of freedom.
Exercises
1. Suppose that X has the t distribution with m degrees
of freedom (m > 2). Show that Var(X) = m/(m − 2). Hint:
To evaluate E(X2), restrict the integral to the positive half
of the real line and change the variable from x to
y =
x2
m
1+ x2
m
.
Compare the integral with the p.d.f. of a beta distribution.
Alternatively, use Exercise 21 in Sec. 5.7.
2. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with unknown mean μ and unknown
standard deviation σ, and let ˆμ and ˆσ denote the
M.L.E.’s of μ and σ. For the sample size n = 17, find a
value of k such that
Pr(μˆ > μ + kσˆ ) = 0.95.
3. Suppose that the five random variables X1, . . . , X5 are
i.i.d. and that each has the standard normal distribution.
Determine a constant c such that the random variable
c(X1 + X2)
(X2
3
+ X2
4
+ X2
5)1/2
will have a t distribution.
4. By using the table of the t distribution given in the back
of this book, determine the value of the integral
  2.5
−∞
dx
(12 + x2)2
.
5. Suppose that the random variables X1 and X2 are independent
and that each has the normal distribution with
mean 0 and variance σ2. Determine the value of
Pr
 
(X1 + X2)2
(X1 − X2)2
< 4
 
.
Hint:
(X1 − X2)2 = 2
 

X1 − X1 + X2
2
 2
+


X2 − X1 + X2
2
 2
 
.
8.5 Confidence Intervals 485
6. In Example 8.2.3, suppose that we will observe n = 20
cheese chunks with lactic acid concentrations
X1, . . . , X20. Find a number c so that
Pr(X20 ≤ μ + cσ
 
) = 0.95.
7. Prove the limit formula Eq. (8.4.6). Hint: Use Theorem
5.7.4.
8. Let X have the standard normal distribution, and let
Y have the t distribution with five degrees of freedom.
Explain why c = 1.63 provides the largest value of the
difference Pr(−c <X <c) − Pr(−c < Y <c). Hint: Start
by looking at Fig. 8.4.
8.5 Confidence Intervals
Confidence intervals provide a method of adding more information to an estimator
ˆ θ when we wish to estimate an unknown parameter θ. We can find an interval
(A, B) that we think has high probability of containing θ. The length of such an
interval gives us an idea of how closely we can estimate θ.
Confidence Intervals for the Mean of a Normal Distribution
Example
8.5.1
Rain from Seeded Clouds. In Example 8.3.2, the average of the n = 26 log-rainfalls
from the seeded clouds is Xn. This may be a sensible estimator of the μ, the mean
log-rainfall from a seeded cloud, but it doesn’t give any idea how much stock we
should place in the estimator. The standard deviation ofXn is σ/(26)1/2, and we could
estimate σ by an estimator like σ
  from Eq. (8.4.3). Is there a sensible way to combine
these two estimators into an inference that tells us both what we should estimate for
μ and how much confidence we should place in the estimator?  
Assume that X1, . . . , Xn, form a random sample from the normal distribution
with mean μ and variance σ2. Construct the estimators Xn of μ and σ
  of σ .We shall
now show how to make use of the random variable
U = n1/2(Xn
− μ)
σ  (8.5.1)
from Eq. (8.4.4) to address the question at the end of Example 8.5.1.We know that U
has the t distribution with n − 1 degrees of freedom. Hence, we can calculate the c.d.f.
of U and/or quantiles of U using either statistical software or tables such as those
in the back of this book. In particular, we can compute Pr(−c <U <c) for every
c > 0. The inequalities −c <U <c can be translated into inequalities involving μ by
making use of the formula for U in Eq. (8.5.1). Simple algebra shows that−c <U <c
is equivalent to
Xn
− cσ
 
n1/2
<μ<Xn
+ cσ
 
n1/2
. (8.5.2)
Whatever probability we can assign to the event {−c <U <c} we can also assign to
the event that Eq. (8.5.2) holds. For example, if Pr(−c <U <c) = γ , then
Pr


Xn
− cσ
 
n1/2
<μ<Xn
+ cσ
 
n1/2
 
= γ. (8.5.3)
One must be careful to understand the probability statement in Eq. (8.5.3) as being
a statement about the joint distribution of the random variables Xn and σ
  for fixed
values of μ and σ. That is, it is a statement about the sampling distribution of Xn and
486 Chapter 8 Sampling Distributions of Estimators
σ
 , and is conditional on μ and σ. In particular, it is not a statement about μ even if
we treat μ as a random variable.
The most popular version of the calculation above is to choose γ and then figure
out what c must be in order to make (8.5.3) true. That is, what value of c makes
Pr(−c <U <c) = γ ? Let Tn−1 denote the c.d.f. of the t distribution with n − 1 degrees
of freedom. Then
γ = Pr(−c <U <c) = Tn−1(c) − Tn−1(−c).
Since the t distributions are symmetric around 0, Tn−1(−c) = 1− Tn−1(c), so γ =
2Tn−1(c) − 1 or, equivalently, c = T
−1
n−1([1+ γ ]/2). That is, c must be the (1+ γ )/2
quantile of the t distribution with n − 1 degrees of freedom.
Example
8.5.2
Rain from Seeded Clouds. In Example 8.3.2, we have n = 26. If we want γ = 0.95 in
Eq. (8.5.3), then we need c to be the 1.95/2 = 0.975 quantile of the t distribution with
25 degrees of freedom. This can be found in the table of t distribution quantiles in the
back of the book to be c = 2.060.We can plug this value into Eq. (8.5.3) and combine
the constants c/n1/2 = 2.060/261/2 = 0.404. Then Eq. (8.5.3) states that regardless of
the unknown values of μ and σ, the probability is 0.95 that the two random variables
A = Xn
− 0.404σ
  and B = Xn
+ 0.404σ
  will lie on opposite sides of μ.  
The interval (A, B), whose endpoints were computed at the end of Example 8.5.2,
is called a confidence interval.
Definition
8.5.1
Confidence Interval. Let X = (X1, . . . , Xn) be a random sample from a distribution
that depends on a parameter (or parameter vector) θ. Let g(θ) be a real-valued
function of θ. Let A ≤ B be two statistics that have the property that for all values
of θ,
Pr(A<g(θ) < B) ≥ γ. (8.5.4)
Then the random interval (A, B) is called a coefficient γ confidence interval for g(θ)
or a 100γ percent confidence interval for g(θ). If the inequality “≥ γ ” in Eq. (8.5.4)
is an equality for all θ, the confidence interval is called exact. After the values of the
random variables X1, . . . , Xn in the random sample have been observed, the values
of A = a and B = b are computed, and the interval (a, b) is called the observed value
of the confidence interval.
In Example 8.5.2, θ = (μ, σ2), and the interval (A, B) found in that example is an
exact 95% confidence interval for g(θ) = μ.
Based on the discussion preceding Definition 8.5.1, we have established the
following.
Theorem
8.5.1
Confidence Interval for the Mean of a Normal Distribution. LetX1, . . . , Xn be a random
sample from the normal distribution with meanμand variance σ2. For each 0<γ <1,
the interval (A, B) with the following endpoints is an exact coefficient γ confidence
interval for μ:
A = Xn
− T
−1
n−1


1+ γ
2
 
σ
 
n1/2
,
B = Xn
+ T
−1
n−1


1+ γ
2
 
σ
 
n1/2
.
8.5 Confidence Intervals 487
Figure 8.5 A sample of
one hundred observed 95%
confidence intervals based
on samples of size 26 from
the normal distribution with
mean μ = 5.1 and standard
deviation σ = 1.6. In this
figure, 94% of the intervals
contain the value of μ. 20
0 4 5
Confidence interval
6
40
60
80
100
Sample
Example
8.5.3
Rain from Seeded Clouds. In Example 8.5.2, the average of the 26 log-rainfalls from
the seeded clouds is Xn
= 5.134. The observed value of σ
  is 1.600. The observed
values ofAandB are, respectively, a = 5.134 − 0.404 × 1.600 = 4.488 and b = 5.134 +
0.404 × 1.600 = 5.780. The observed value of the 95% confidence interval is then
(4.488, 5.780). For comparison, the mean unseeded level of 4 is a bit below the lower
endpoint of this interval.  
Interpretaton of Confidence Intervals The interpretation of the confidence interval
(A, B) defined in Definition 8.5.1 is straightforward, so long as one remembers
that Pr(A<g(θ) < B) = γ is a probability statement about the joint distribution of
the two random variablesAand B given a particular value of θ. Once we compute the
observed values a and b, the observed interval (a, b) is not so easy to interpret. For
example, some people would like to interpret the interval in Example 8.5.3 as meaning
that we are 95% confident that μ is between 4.488 and 5.780. Later in this section,
we shall show why such an interpretation is not safe in general. Before observing the
data, we can be 95% confident that the random interval (A, B) will contain μ, but
after observing the data, the safest interpretation is that (a, b) is simply the observed
value of the random interval (A, B). One way to think of the random interval (A, B)
is to imagine that the sample that we observed is one of many possible samples that
we could have observed (or may yet observe in the future). Each such sample would
allow us to compute an observed interval. Prior to observing the samples, we would
expect 95% of the intervals to contain μ. Even if we observed many such intervals,
we won’t know which ones contain μ and which ones don’t. Figure 8.5 contains a
plot of 100 observed values of confidence intervals, each computed from a sample of
size n = 26 from the normal distribution with mean μ = 5.1 and standard deviation
σ = 1.6. In this example, 94 of the 100 intervals contain the value of μ.
Example
8.5.4
Acid Concentration in Cheese. In Example 8.2.3, we discussed a random sample of
10 lactic acid measurements from cheese. Suppose that we desire to compute a 90%
confidence interval for μ, the unknown mean lactic acid concentration. The number c
that we need in Eq. (8.5.3) when n = 10 and γ = 0.9 is the (1+ 0.9)/2 = 0.95 quantile
of the t distribution with nine degrees of freedom, c = 1.833. According to Eq. (8.5.3),
the endpoints will be Xn plus and minus 1.833σ
 
/(10)1/2. Suppose that we observe
the following 10 lactic acid concentrations as reported by Moore and McCabe (1999,
p. D-1):
0.86, 1.53, 1.57, 1.81, 0.99, 1.09, 1.29, 1.78, 1.29, 1.58.
488 Chapter 8 Sampling Distributions of Estimators
The average of these 10 values is xn
= 1.379, and the value of σ
  = 0.3277. The
endpoints of the observed value of our 90% confidence interval are then 1.379 −
1.833 × 0.3277/(10)1/2 = 1.189 and 1.379 + 1.833 × 0.3277/(10)1/2 = 1.569.  
Note: Alternative Definitions of Confidence Interval. Many authors define confidence
intervals precisely as we have done here. Some others define the confidence
interval to be what we called the observed value of the confidence interval, namely,
(a, b), and they need another name for the random interval (A, B). Throughout this
book, we shall stay with the definition we have given, but the reader who studies
statistics further might encounter the other definition at a later date. Also, some
authors define confidence intervals to be closed intervals rather than open intervals.
One-Sided Confidence Intervals
Example
8.5.5
Rain from Seeded Clouds. Suppose that we are interested only in obtaining a lower
bound on μ, the mean log-rainfall of seeded clouds. In the spirit of confidence
intervals, we could then seek a random variable A such that Pr(A < μ) = γ. If we
let B =∞ in Definition 8.5.1, we see that (A,∞) is then a coefficient γ confidence
interval for μ.  
For a given confidence coefficient γ , it is possible to construct many different
confidence intervals for μ. For example, let γ2 > γ1 be two numbers such that γ2 −
γ1 = γ , and let U be as in Eq. (8.5.1). Then
Pr
 
T
−1
n−1(γ1) < U < T
−1
n−1(γ2)
 
= γ,
and the following statistics are the endpoints of a coefficient γ confidence interval
for μ:
A = Xn
+ T
−1
n−1(γ1)
σ
 
n1/2 and B = Xn
+ T
−1
n−1(γ2)
σ
 
n1/2
.
Among all such coefficient γ confidence intervals, the symmetric interval with γ1 =
1− γ2 is the shortest one.
Nevertheless, there are cases, such as Example 8.5.5, in which an asymmetric
confidence interval is useful. In general, it is a simple matter to extend Definition 8.5.1
to allow either A=−∞or B =∞so that the confidence interval either has the form
(−∞, B) or (A,∞).
Definition
8.5.2
One-Sided Confidence Intervals/Limits. Let X = (X1, . . . , Xn) be a random sample
from a distribution that depends on a parameter (or parameter vector) θ. Let g(θ)
be a real-valued function of θ. Let A be a statistic that has the property that for all
values of θ,
Pr(A < g(θ)) ≥ γ. (8.5.5)
Then the random interval (A,∞) is called a one-sided coefficient γ confidence interval
for g(θ) or a one-sided 100γ percent confidence interval for g(θ). Also, A is called a
coefficient γ lower confidence limit for g(θ) or a 100γ percent lower confidence limit
for g(θ). Similarly, if B is a statistic such that
Pr(g(θ) < B) ≥ γ, (8.5.6)
then (−∞, B) is a one-sided coefficient γ confidence interval for g(θ) or a one-sided
100γ percent confidence interval for g(θ) andB is a coefficient γ upper confidence limit
8.5 Confidence Intervals 489
for g(θ) or a 100γ percent upper confidence limit for g(θ). If the inequality “≥ γ” in
either Eq. (8.5.5) or Eq. (8.5.6) is equality for all θ, the corresponding confidence
interval and confidence limit are called exact.
The following result follows in much the same way as Theorem 8.5.1.
Theorem
8.5.2
One-Sided Confidence Intervals for the Mean of a Normal Distribution. Let X1, . . . , Xn
be a random sample from the normal distribution with mean μ and variance σ2.
For each 0 < γ <1, the following statistics are, respectively, exact lower and upper
coefficient γ confidence limits for μ:
A = Xn
− T
−1
n−1 (γ )
σ
 
n1/2
,
B = Xn
+ T
−1
n−1 (γ )
σ
 
n1/2
.
Example
8.5.6
Rain from Seeded Clouds. In Example 8.5.5, suppose that we want a 90% lower
confidence limit for μ. We find T
−1
25 (0.9) = 1.316. Using the observed data from
Example 8.5.3, we compute the observed lower confidence limit as
a = 5.134 − 1.316
1.600
261/2
= 4.727.  
Confidence Intervals for Other Parameters
Example
8.5.7
Lifetimes of Electronic Components. Recall the company in Example 8.1.3 that is estimating
the failure rate θ of electronic components based on a sample of n = 3
observed lifetimes X1, X2, X3. The statistic T = 3
i=1 Xi was used in Examples 8.1.4
and 8.1.5 to make some inferences.We can use the distribution of T to construct confidence
intervals for θ. Recall from Example 8.1.5 that θT has the gamma distribution
with parameters 3 and 1 for all θ. LetGstand for the c.d.f. of this gamma distribution.
Then Pr(θT < G
−1(γ )) = γ for all θ. It follows that Pr(θ < G
−1(γ )/T ) = γ for all θ,
and G
−1(γ )/T is an exact coefficient γ upper confidence limit for θ. For example, if
the company would like to have a random variable B so that they can be 98% confident
that the failure rate θ is bounded above by B, they can find G
−1(0.98) = 7.516.
Then B = 7.516/T is the desired upper confidence limit.  
In Example 8.5.7, the random variable θT has the property that its distribution
is the same for all θ. The random variable U in Eq. (8.5.1) has the property that its
distribution is the same for all μ and σ. Such random variables greatly facilitate the
construction of confidence intervals.
Definition
8.5.3
Pivotal. Let X = (X1, . . . , Xn) be a random sample from a distribution that depends
on a parameter (or vector of parameters) θ. Let V (X, θ) be a random variable whose
distribution is the same for all θ. Then V is called a pivotal quantity (or simply a
pivotal).
In order to be able to use a pivotal to construct a confidence interval for g(θ), one
needs to be able to “invert” the pivotal. That is, one needs a function r(v, x) such
that
r (V (X, θ), X) = g(θ). (8.5.7)
If such a function exists, then one can use it to construct confidence intervals.
490 Chapter 8 Sampling Distributions of Estimators
Theorem
8.5.3
Confidence Interval from a Pivotal. Let X = (X1, . . . ,Xn) be a random sample from a
distribution that depends on a parameter (or vector of parameters) θ. Suppose that
a pivotal V exists. Let G be the c.d.f. of V , and assume that G is continuous. Assume
that a function r exists as in Eq. (8.5.7), and assume that r(v, x) is strictly increasing in
v for each x. Let 0<γ <1 and let γ2 >γ1 be such that γ2 − γ1= γ . Then the following
statistics are the endpoints of an exact coefficient γ confidence interval for g(θ):
A = r
 
G
−1(γ1), X
 
,
B = r
 
G
−1(γ2), X
 
.
If r(v, x) is strictly decreasing in v for each x, then switch the definitions of A and B.
Proof If r(v, x) is strictly increasing in v for each x, we have
V (X, θ) < c if and only if g(θ) < r(c, X). (8.5.8)
Let c = G
−1(γi) in Eq. (8.5.8) for each of i = 1, 2 to obtain
Pr(g(θ) < A) = γ1,
Pr(g(θ) < B) = γ2. (8.5.9)
Because V has a continuous distribution and r is strictly increasing,
Pr(A = g(θ)) = Pr(V (X, θ) = G
−1(γ1)) = 0.
Similarly, Pr(B = g(θ)) = 0. The two equations in (8.5.9) combine to give Pr(A <
g(θ) < B) = γ . The proof when r is strictly decreasing is similar and is left to the
reader.
Example
8.5.8
Pivotal for Estimating the Variance of a Normal Distribution. Let X1, . . . , Xn be a random
sample from the normal distribution with mean μ and variance σ2 In Theorem
8.3.1, we found that the random variable V (X, θ) = n
i=1(Xi
− Xn)2/σ 2 has the
χ2 distribution with n − 1 degrees of freedom for all θ = (μ, σ2). This makes V a pivotal.
The reader can use this pivotal in Exercise 5 in this section to find a confidence
interval of g(θ) = σ2.  
Sometimes pivotals do not exist. This is common when the data have a discrete
distribution.
Example
8.5.9
A Clinical Trial. Consider the imipramine treatment group in the clinical trial in
Example 2.1.4. Let θ stand for the proportion of successes among a very large
population of imipramine patients. Suppose that the clinicians desire a random
variable A such that, for all θ, Pr(A<θ) ≥ 0.9. That is, they want to be 90% confident
that the success proportion is at least A. The observable data consist of the number X
of successes in a random sample of n = 40 patients. No pivotal exists in this example,
and confidence intervals are more difficult to construct. In Example 9.1.16, we shall
see a method that applies to this case.  
Even with discrete data, if the sample size is large enough to apply the central
limit theorem, one can find approximate confidence intervals.
Example
8.5.10
Approximate Confidence Interval for Poisson Mean. Suppose that X1, . . . ,Xn have the
Poisson distribution with unknown mean θ. Suppose that n is large enough so that
8.5 Confidence Intervals 491
Xn has approximately a normal distribution. In Example 6.3.8 on page 365, we found
that
Pr
 
|2X
1/2
n
− 2θ1/2| < c
 
≈ 2 (cn1/2) − 1. (8.5.10)
After we observe Xn
= x, Eq. (8.5.10) says that
 
−c + 2x1/2, c + 2x1/2
 
(8.5.11)
is the observed value of an approximate confidence interval for 2θ1/2 with coefficient
2 (cn1/2) − 1. For example, if c = 0.196 and n = 100, then 2 (cn1/2) − 1= 0.95. The
inverse of g(θ) = 2θ1/2 is g
−1(y) = y2/4, which is an increasing function of y for
y ≥ 0. If both endpoints of (8.5.11) are nonnegative, then we know that 2θ1/2 is in
the interval (8.5.11) if and only if θ is in the interval


1
4
[−c + 2x1/2]2,
1
4
[c + 2x1/2]2
 
. (8.5.12)
If−c + 2x1/2 < 0, the left endpoints of (8.5.11) and (8.5.12) should be replaced by
0.With this modification, (8.5.12) is the observed value of an approximate coefficient
2 (cn1/2) − 1 confidence interval for θ.  
Shortcoming of Confidence Intervals
Interpretation of Confidence Intervals Let (A, B) be a coefficient γ confidence
interval for a parameter θ, and let (a, b) be the observed value of the interval. It
is important to understand that it is not correct to say that θ lies in the interval
(a, b) with probability γ . We shall explain this point further here. Before the values
of the statistics A(X1, . . . , Xn) and B(X1, . . . , Xn) are observed, these statistics are
random variables. It follows, therefore, from Definition 8.5.1 that θ will lie in the
random interval having endpointsA(X1, . . . , Xn) and B(X1, . . . , Xn) with probability
γ . After the specific values A(X1, . . . , Xn) = a and B(X1, . . . , Xn) = b have been
observed, it is not possible to assign a probability to the event that θ lies in the
specific interval (a, b) without regarding θ as a random variable, which itself has a
probability distribution. In order to calculate the probability that θ lies in the interval
(a, b), it is necessary first to assign a prior distribution to θ and then use the resulting
posterior distribution. Instead of assigning a prior distribution to the parameter θ,
many statisticians prefer to state that there is confidence γ , rather than probability
γ , that θ lies in the interval (a, b). Because of this distinction between confidence
and probability, the meaning and the relevance of confidence intervals in statistical
practice is a somewhat controversial topic.
Information Can Be Ignored In accordance with the preceding explanation, the
interpretation of a confidence coefficient γ for a confidence interval is as follows: Before
a sample is taken, there is probability γ that the interval that will be constructed
from the sample will include the unknown value of θ. After the sample values are
observed, however, there might be additional information about whether or not the
interval formed from these particular values actually does include θ. How to adjust
the confidence coefficient γ in the light of this information is another controversial
topic.
492 Chapter 8 Sampling Distributions of Estimators
Density of X
_
2
x
0.5
1.0
1.5
2.0
Density
u   0.5 u u  0.5
Figure 8.6 p.d.f. of X2 in Example 8.5.11.
Example
8.5.11
Uniforms on an Interval of Length One. Suppose that two observations X1 and X2
are taken at random from the uniform distribution on the interval
#
θ − 1
2, θ + 1
2
$
,
where the value of θ is unknown (−∞ < θ <∞). If we let Y1 = min{X1, X2} and
Y2 = max{X1, X2}, then
Pr(Y1 < θ <Y2) = Pr(X1 < θ <X2) + Pr(X2 < θ <X1)
= Pr(X1 < θ) Pr(X2 > θ) + Pr(X2 < θ) Pr(X1 > θ)
= (1/2)(1/2) + (1/2)(1/2) = 1/2. (8.5.13)
It follows from Eq. (8.5.13) that (Y1, Y2) is a confidence interval for θ with confidence
coefficient 1/2. However, the analysis can be carried further.
Since both observations X1 and X2 must be at least θ − (1/2), and both must be
at most θ + (1/2), we know with certainty that Y1 ≥ θ − (1/2) and Y2 ≤ θ + (1/2). In
other words, we know with certainty that
Y2 − (1/2) ≤ θ ≤ Y1 + (1/2). (8.5.14)
Suppose now that Y1 = y1 and Y2 = y2 are observed such that (y2 − y1) > 1/2. Then
y1 < y2 − (1/2), and it follows from Eq. (8.5.14) that y1 < θ. Moreover, because
y1 + (1/2) < y2, it also follows from Eq. (8.5.14) that θ <y2. Thus, if (y2 − y1) > 1/2,
then y1< θ < y2. In other words, if (y2 − y1) > 1/2, then we know with certainty that
the observed value (y1, y2) of the confidence interval includes the unknown value of
θ, even though the confidence coefficient of this interval is only 1/2.
Indeed, even when (y2 − y1) ≤ 1/2, the closer the value of (y2 − y1) is to 1/2, the
more certain we feel that the interval (y1, y2) includes θ. Also, the closer the value
of (y2 − y1) is to 0, the more certain we feel that the interval (y1, y2) does not include
θ. However, the confidence coefficient necessarily remains 1/2 and does not depend
on the observed values y1 and y2.
This example also helps to illustrate the statement of caution made at the end of
Sec. 8.1. In this problem, it might seem natural to estimate θ by X2 = 0.5(X1 + X2).
Using the methods of Sec. 3.9, we can find the p.d.f. of X2:
g(x) =
⎧⎪⎨
⎪⎩
4x − 4θ +2 ifθ − 1
2 < x ≤ θ,
4θ − 4x +2 ifθ <x <θ + 1
2 ,
0 otherwise.
8.5 Confidence Intervals 493
Figure 8.6 shows the p.d.f. g, which is triangular.This makes it fairly simple to compute
the probability that X2 is close to θ:
Pr(|X2 − θ| < c) = 4c(1− c),
for 0 < c<1/2, and the probability is 1 for c ≥ 1/2. For example, if c = 0.3, Pr(|X2 −
θ| < 0.3) = 0.84. However, the random variable Z = Y2 − Y1 contains useful information
that is not accounted for in this calculation. Indeed, the conditional distribution
of X2 given Z = z is uniform on the interval
#
θ − 1
2 (1− z), θ + 1
2 (1− z)
$
.We see that
the larger the observed value of z, the shorter the range of possible values of X2. In
particular, the conditional probability that X2 is close to θ given Z = z is
Pr(|X2 − θ| < c|Z = z) =
 
2c
1−z if c ≤ (1− z)/2,
1 ifc > (1− z)/2.
(8.5.15)
For example, if z = 0.1, then Pr(|X2 − θ| < 0.3|Z = 0.1) = 0.6667, which is quite a bit
smaller than the marginal probability of 0.84. This illustrates why it is not always safe
to assume that our estimate is close to the parameter just because the sampling distribution
of the estimator had high probability of being close. There may be other
information available that suggests to us that the estimate is not as close as the sampling
distribution suggests, or that it is closer than the sampling distribution suggests.
(The reader should calculate Pr(|X2 − θ| < 0.3|Z = 0.9) for the other extreme.)  
In the next section, we shall discuss Bayesian methods for analyzing a random
sample from a normal distribution for which both the mean μ and the variance σ2
are unknown. We shall assign a joint prior distribution to μ and σ2, and shall then
calculate the posterior probability that μ belongs to any given interval (a, b). It can
be shown [see, e.g., DeGroot (1970)] that if the joint prior p.d.f. of μ and σ2 is fairly
smooth and does not assign high probability to any particular small set of values of
μ and σ2, and if the sample size n is large, then the confidence coefficient assigned to
a particular confidence interval (A, B) for the mean μ will be approximately equal
to the posterior probability that μ lies in the observed interval (a, b). An example
of this approximate equality is included in the next section. Therefore, under these
conditions, the differences between the results obtained by the practical application
of methods based on confidence intervals and methods based on prior probabilities
will be small. Nevertheless interpretations of these methods will differ. As an aside,
a Bayesian analysis of Example 8.5.11 will necessarily take into account the extra
information contained in the random variable Z. See Exercise 10 for an example.
Summary
Let X1, . . . ,Xn be a random sample of independent random variables from the normal
distribution with mean μ and variance σ2. Let the observed values be x1, . . . , xn.
Let Xn
= 1
n
 n
i=1 Xi and σ
 2 = 1
n−1
 n
i=1(Xi
− Xn)2. The interval (Xn
− cσ
 
/n1/2,
X + cσ
 
/n1/2) is a coefficient γ confidence interval for μ, where c is the (1+ γ )/2
quantile of the t distribution with n − 1 degrees of freedom.
494 Chapter 8 Sampling Distributions of Estimators
Exercises
1. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with unknown mean μ and known
variance σ2. Let   stand for the c.d.f. of the standard
normal distribution, and let  
−1 be its inverse. Show that
the following interval is a coefficient γ confidence interval
for μ if Xn is the observed average of the data values:


Xn
−  
−1


1+ γ
2
 
σ
n1/2
, Xn
+  
−1


1+ γ
2
 
σ
n1/2
 
.
2. Suppose that a random sample of eight observations is
taken from the normal distribution with unknown mean
μ and unknown variance σ2, and that the observed values
are 3.1, 3.5, 2.6, 3.4, 3.8, 3.0, 2.9, and 2.2. Find the shortest
confidence interval for μ with each of the following three
confidence coefficients: (a) 0.90, (b) 0.95, and (c) 0.99.
3. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with unknown mean μ and unknown
variance σ2, and let the random variable L denote
the length of the shortest confidence interval for μ that
can be constructed from the observed values in the sample.
Find the value of E(L2) for the following values of the
sample size n and the confidence coefficient γ :
a. n = 5, γ = 0.95 d. n = 8, γ = 0.90
b. n = 10, γ = 0.95 e. n = 8, γ = 0.95
c. n = 30, γ = 0.95 f. n = 8, γ = 0.99
4. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with unknown mean μ and known
variance σ2. How large a random sample must be taken
in order that there will be a confidence interval for μ with
confidence coefficient 0.95 and length less than 0.01σ?
5. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with unknown mean μ and unknown
variance σ2. Describe a method for constructing a
confidence interval for σ2 with a specified confidence coefficient
γ (0 < γ <1). Hint: Determine constants c1 and
c2 such that
Pr
 
c1 <
 n
i=1(Xi
− Xn)2
σ2
< c2
 
= γ.
6. Suppose that X1, . . . , Xn form a random sample from
the exponential distribution with unknown mean μ. Describe
a method for constructing a confidence interval for
μ with a specified confidence coefficient γ (0 < γ <1).
Hint: Determine constants c1 and c2 such that Pr[c1 <
(1/μ)
 n
i=1 Xi < c2]= γ .
7. In the June 1986 issue of Consumer Reports, some data
on the calorie content of beef hot dogs is given. Here are
the numbers of calories in 20 different hot dog brands:
186, 181, 176, 149, 184, 190, 158, 139, 175, 148,
152, 111, 141, 153, 190, 157, 131, 149, 135, 132.
Assume that these numbers are the observed values from
a random sample of twenty independent normal random
variables with mean μ and variance σ2, both unknown.
Find a 90% confidence interval for the mean number of
calories μ.
8. At the end of Example 8.5.11, compute the probability
that |X2 − θ| < 0.3 given Z = 0.9. Why is it so large?
9. In the situation of Example 8.5.11, suppose that we
observe X1 = 4.7 and X2 = 5.3.
a. Find the 50% confidence interval described in Example
8.5.11.
b. Find the interval of possible θ values that are consistent
with the observed data.
c. Is the 50% confidence interval larger or smaller than
the set of possible θ values?
d. Calculate the value of the random variable Z = Y2 −
Y1 as described in Example 8.5.11.
e. Use Eq. (8.5.15) to compute the conditional probability
that |X2 − θ| < 0.1 given Z equal to the value
computed in part (d).
10. In the situation of Exercise 9, suppose that a prior distribution
is used for θ with p.d.f. ξ(θ) = 0.1 exp(−0.1θ) for
θ >0. (This is the exponential distribution with parameter
0.1.)
a. Prove that the posterior p.d.f. of θ given the data
observed in Exercise 9 is
ξ(θ|x) =
 
4.122 exp(−0.1θ) if 4.8 < θ <5.2,
0 otherwise.
b. Calculate the posterior probability that |θ − x2| <
0.1, where x2 is the observed average of the data
values.
c. Calculate the posterior probability that θ is in the
confidence interval found in part (a) of Exercise 9.
d. Can you explain why the answer to part (b) is so close
to the answer to part (e) of Exercise 9? Hint: Compare
the posterior p.d.f. in part (a) to the function in
Eq. (8.5.15).
11. Suppose that X1, . . . , Xn form a random sample from
the Bernoulli distribution with parameter p. Let Xn be
the sample average. Use the variance stabilizing transformation
found in Exercise 5 of Section 6.5 to construct an
approximate coefficient γ confidence interval for p.
12. Complete the proof of Theorem 8.5.3 by dealing with
the case in which r(v, x) is strictly decreasing in v for each
x.
8.6 Bayesian Analysis of Samples from a Normal Distribution 495
  8.6 Bayesian Analysis of Samples from a
Normal Distribution
When we are interested in constructing a prior distribution for the parameters μ
and σ2 of a normal distribution, it is more convenient to work with τ = 1/σ 2, called
the precision. A conjugate family of prior distributions is introduced for μ and τ ,
and the posterior distribution is derived. Interval estimates of μ can be constructed
from the posterior and these are similar to confidence intervals in form, but they
are interpreted differently.
The Precision of a Normal Distribution
Example
8.6.1
Rain from Seeded Clouds. In Example 8.3.1, we mentioned that it was of interest
whether the mean log-rainfall μ from seeded clouds exceeded the mean log-rainfall
of unseeded clouds, namely, 4. Althoughwewere able to find an estimator ofμandwe
were able to construct a confidence interval for μ, we have not yet directly addressed
the question of whether or not μ>4 or how likely it is that μ>4. If we construct a
joint prior distribution for both μ and σ2, we can then find the posterior distribution
of μ and finally provide direct answers to these questions.  
Suppose that X1, . . . , Xn form a random sample from the normal distribution
with unknown mean μ and unknown variance σ2. In this section, we shall consider
the assignment of a joint prior distribution to the parameters μ and σ2 and study
the posterior distribution that is then derived from the observed values in the sample.
Manipulating prior and posterior distributions for the parameters of a normal
distribution turns out to be simpler if we reparameterize from μ and σ2 to μ and
τ = 1/σ 2.
Definition
8.6.1
Precision of a Normal Distribution. Theprecision τ of a normal distribution is defined
as the reciprocal of the variance; that is, τ = 1/σ 2.
If a random variable has the normal distribution with mean μ and precision τ ,
then its p.d.f. f (x|μ, τ ) is specified as follows, for −∞< x <∞:
f (x|μ, τ ) =


τ
2π
 1/2
exp
 
−1
2
τ(x − μ)2
 
.
Similarly, if X1, . . . , Xn form a random sample from the normal distribution
with mean μ and precision τ , then their joint p.d.f. fn(x|μ, τ ) is as follows, for
−∞< xi <∞(i = 1, . . . , n):
fn(x|μ, τ ) =


τ
2π
 n/2
exp
 
−1
2
τ
 n
i=1
(xi
− μ)2
 
.
A Conjugate Family of Prior Distributions
We shall now describe a conjugate family of joint prior distributions for μ and τ .
We shall specify the joint distribution of μ and τ by specifying both the conditional
distribution of μ given τ and the marginal distribution of τ . In particular, we shall
assume that the conditional distribution of μ for each given value of τ is a normal
distribution for which the precision is proportional to the given value of τ , and also
496 Chapter 8 Sampling Distributions of Estimators
that the marginal distribution of τ is a gamma distribution. The family of all joint
distributions of this type is a conjugate family of joint prior distributions. If the joint
prior distribution of μ and τ belongs to this family, then for every possible set of
observed values in the random sample, the joint posterior distribution of μ and τ
will also belong to the family. This result is established in Theorem 8.6.1. We shall
use the following notation in the theorem and the remainder of this section:
xn
= 1
n
 n
i=1
xi, s2
n
=
 n
i=1
(xi
− xn)2.
Theorem
8.6.1
Suppose that X1, . . . , Xn form a random sample from the normal distribution with
unknown mean μ and unknown precision τ (−∞<μ<∞andτ >0). Suppose also
that the joint prior distribution of μ and τ is as follows: The conditional distribution
of μ given τ is the normal distribution with mean μ0 and precision λ0τ (−∞<μ0 <
∞ and λ0 > 0), and the marginal distribution of τ is the gamma distribution with
parameters α0 and β0 (α0 > 0 and β0 > 0). Then the joint posterior distribution of μ
and τ , given that Xi
= xi for i = 1, . . . , n, is as follows: The conditional distribution
of μ given τ is the normal distribution with mean μ1 and precision λ1τ , where
μ1 = λ0μ0 + nxn
λ0 + n
and λ1 = λ0 + n, (8.6.1)
and the marginal distribution of τ is the gamma distribution with parameters α1 and
β1, where
α1 = α0 + n
2
and β1 = β0 + 1
2
s2
n
+ nλ0(xn
− μ0)2
2(λ0 + n)
. (8.6.2)
Proof The joint prior p.d.f. ξ(μ, τ) of μ and τ can be found by multiplying the
conditional p.d.f. ξ1(μ|τ) of μ given τ by the marginal p.d.f. ξ2(τ ) of τ. By the
conditions of the theorem, we have, for −∞<μ<∞and τ >0,
ξ1(μ|τ) ∝ τ 1/2 exp
 
−1
2
λ0τ(μ − μ0)2
 
and
ξ2(τ ) ∝ τ α0−1e
−β0τ .
A constant factor involving neither μ nor τ has been dropped from the right side of
each of these relations.
The joint posterior p.d.f. ξ(μ, τ|x) for μ and τ satisfies the relation
ξ(μ, τ|x) ∝ fn(x|μ, τ )ξ1(μ|τ)ξ2(τ ) (8.6.3)
∝ τ α0+(n+1)/2−1 exp
 
−τ
2
 
λ0[μ − μ0]2 +
 n
i=1
(xi
− μ)2
 
− β0τ
 
.
By adding and subtracting xn inside the (xi
− μ)2 terms, we can prove that
 n
i=1
(xi
− μ)2 = s2
n
+ n(xn
− μ)2. (8.6.4)
Next, combine the last term in Eq. (8.6.4) with the term λ0(μ − μ0)2 in (8.6.3) by
completing the square (see Exercise 24 in Sec. 5.6) to get
n(xn
− μ)2 + λ0(μ − μ0)2 = (λ0 + n)(μ − μ1)2 + nλ0(xn
− μ0)2
λ0 + n
, (8.6.5)
8.6 Bayesian Analysis of Samples from a Normal Distribution 497
where μ1 is defined in Eq. (8.6.1). Combining (8.6.4) with (8.6.5) yields
 n
i=1
(xi
− μ)2 + λ0(μ − μ0)2 = (λ0 + n)(μ − μ1)2 + s2
n
+ nλ0(xn
− μ0)2
λ0 + n
. (8.6.6)
Using (8.6.2) and λ1 = λ0 + n together with (8.6.6) allows us to write Eq. (8.6.3) in
the form
ξ(μ, τ|x) ∝
 
τ 1/2 exp
 
−1
2
λ1τ(μ − μ1)2
 1
(τ α1−1e
−β1τ ), (8.6.7)
where λ1, α1, and β1 are defined by Eqs. (8.6.1) and (8.6.2).
When the expression inside the braces on the right side of Eq. (8.6.7) is regarded
as a function of μ for a fixed value of τ , this expression can be recognized as
being (except for a factor that depends on neither μ nor τ ) the p.d.f. of the normal
distribution with mean μ1 and precision λ1τ . Since the variable μ does not appear
elsewhere on the right side of Eq. (8.6.7), it follows that this p.d.f. must be the
conditional posterior p.d.f. of μ given τ . It now follows in turn that the expression
outside the braces on the right side of Eq. (8.6.7) must be proportional to the marginal
posterior p.d.f. of τ . This expression can be recognized as being (except for a constant
factor) the p.d.f. of the gamma distribution with parameters α1 and β1. Hence, the
joint posterior distribution of μ and τ is as specified in the theorem.
We shall give a name to the family of joint distributions described in Theorem
8.6.1.
Definition
8.6.2
Normal-Gamma Family of Distributions. Let μ and τ be random variables. Suppose
that the conditional distribution of μ given τ is the normal distribution with mean
μ0 and precision λ0τ . Suppose also that the marginal distribution of τ is the gamma
distribution with parameters α0 and β0. Then we say that the joint distribution of μ
and τ is the normal-gamma distribution with hyperparameters μ0, λ0, α0, and β0.
The prior distribution in Theorem 8.6.1 is the normal-gamma distribution with hyperparameters
μ0, λ0, α0, and β0. The posterior distribution derived in that theorem
is the normal-gamma distribution with hyperparameters μ1, λ1, α1, and β1. As in
Sec. 7.3, we shall refer to the hyperparameters of the prior distribution as prior hyperparameters,
and we shall refer to the hyperparameters of the posterior distribution
as posterior hyperparameters.
By choosing appropriate values of the prior hyperparameters, it is usually possible
in a particular problem to find a normal-gamma distribution that approximates
an experimenter’s actual prior distribution of μ and τ sufficiently well. It should be
emphasized, however, that if the joint distribution of μ and τ is a normal-gamma
distribution, thenμand τ are not independent.Thus, it is not possible to use a normalgamma
distribution as a joint prior distribution of μ and τ in a problem in which the
experimenter wishes μ and τ to be independent in the prior. Although this characteristic
of the family of normal-gamma distributions is a deficiency, it is not an important
deficiency, because of the following fact: Even if a joint prior distribution under which
μ and τ are independent is chosen from outside the conjugate family, it will be found
that after just a single value of X has been observed, μ and τ will have a posterior
distribution under which they are dependent. In other words, it is not possible for μ
498 Chapter 8 Sampling Distributions of Estimators
and τ to remain independent in the light of even one observation from the underlying
normal distribution.
Example
8.6.2
Acid Concentration in Cheese. Consider again the example of lactic acid concentration
in cheese as discussed in Example 8.5.4. Suppose that the concentrations are
independent normal random variables with mean μ and precision τ . Suppose that
the prior opinion of the experimenters could be expressed as a normal-gamma distribution
with hyperparameters μ0 = 1, λ0 = 1, α0 = 0.5, and β0 = 0.5.We can use the
data on page 487 to find the posterior distribution of μ and τ . In this case, n = 10,
xn
= 1.379, and s2
n
= 0.9663. Applying the formulas in Theorem 8.6.1, we get
μ1 = 1× 1+ 10 × 1.379
1+ 10
= 1.345, λ1 = 1+ 10 = 11, α1 = 0.5 + 10
2
= 5.5,
β1 = 0.5 + 1
2
0.9663 + 10 × 1× (1.379 − 1)2
2(1+ 10)
= 1.0484.
So, the posterior distribution of μ and τ is the normal-gamma distribution with these
four hyperparameters. In particular, we can now address the issue of variation in
lactic acid concentration more directly. For example, we can compute the posterior
probability that σ = τ
−1/2 is larger than some value such as 0.3:
Pr(σ > 0.3|x) = Pr(τ < 11.11|x) = 0.984.
This can be found using any computer program that calculates the c.d.f. of a gamma
distribution. Alternatively, we can use the relationship between the gamma and χ2
distributions that allows us to say that the posterior distribution ofU = 2 × 1.0484 × τ
is the χ2 distribution with 2 ×5.5=11degrees of freedom. (See Exercise 1 in Sec. 5.7.)
Then Pr(τ < 11.11|x) = Pr(U ≤ 23.30|x) ≈ 0.982 by interpolating in the table of the
χ2 distributions in the back of the book. If σ >0.3 is considered a large standard
deviation, the cheese manufacturer might wish to look into better quality-control
measures.  
The Marginal Distribution of the Mean
When the joint distribution of μ and τ is a normal-gamma distribution of the type
described in Theorem 8.6.1, then the conditional distribution of μ for a given value of
τ is a normal distribution and the marginal distribution of τ is a gamma distribution.
It is not clear from this specification, however, what the marginal distribution of μ
will be. We shall now derive this marginal distribution.
Theorem
8.6.2
Marginal Distribution of the Mean. Suppose that the prior distribution of μ and τ is
the normal-gamma distribution with hyperparameters μ0, λ0, α0, and β0. Then the
marginal distribution of μ is related to a t distribution in the following way:


λ0α0
β0
 1/2
(μ − μ0)
has the t distribution with 2α0 degrees of freedom.
Proof Since the conditional distribution of μ given τ is the normal distribution
with mean μ0 and variance (λ0τ)
−1, we can use Theorem 5.6.4 to conclude that
the conditional distribution of Z = (λ0τ)1/2(μ − μ0) given τ is the standard normal
distribution.We shall continue to let ξ2(τ ) be the marginal p.d.f. of τ , and let ξ1(μ|τ)
8.6 Bayesian Analysis of Samples from a Normal Distribution 499
be the conditional p.d.f. of μ given τ . Then the joint p.d.f. of Z and τ is
f (z, τ) = (λ0τ)
−1/2ξ1((λ0τ)
−1/2z + μ0|τ)ξ2(τ ) = φ(z)ξ2(τ ), (8.6.8)
where φ is the standard normal p.d.f. of Eq. (5.6.6). We see from Eq. (8.6.8) that
Z and τ are independent with Z having the standard normal distribution. Next, let
Y = 2β0τ . Using the result of Exercise 1 in Sec. 5.7, we find that the distribution of
Y is the gamma distribution with parameters α0 and 1/2, which is also known as the
χ2 distribution with 2α0 degrees of freedom. In summary, Y and Z are independent
with Z having the standard normal distribution and Y having the χ2 distribution with
2α0 degrees of freedom. It follows from the definition of the t distributions in Sec. 8.4
that
U = Z


Y
2α0
 1/2
= (λ0τ)1/2(μ − μ0)


2β0τ
2α0
 1/2
=


λ0α0
β0
 1/2
(μ − μ0) (8.6.9)
has the t distribution with 2α0 degrees of freedom.
Theorem 8.6.2 can also be used to find the posterior distribution of μ after data
are observed. To do that, just replace μ0 by μ1, λ0 by λ1, α0 by α1, and β0 by β1
in the statement of the theorem. The reason for this is that the prior and posterior
distributions both have the same form, and the theorem depends only on that form.
This same reasoning applies to the discussion that follows, including Theorem 8.6.3.
An alternative way to describe the marginal distribution of μ starts by rewriting
(8.6.9) as
μ =


β0
λ0α0
 1/2
U + μ0. (8.6.10)
Now we see that the distribution of μ can be obtained from a t distribution by
translating the t distribution so that it is centered at μ0 rather than at 0, and also
changing the scale factor. This makes it straightforward to find the moments (if they
exist) of the distribution of μ.
Theorem
8.6.3
Suppose that μ and τ have the joint normal-gamma distribution with hyperparameters
μ0, λ0, α0, and β0. If α0 > 1/2, then E(μ) = μ0. If α0 > 1, then
Var(μ) = β0
λ0(α0 − 1)
. (8.6.11)
Proof The mean and the variance of the marginal distribution of μ can easily be
obtained from the mean and the variance of the t distributions that are given in
Sec. 8.4. Since U in Eq. (8.6.9) has the t distribution with 2α0 degrees of freedom, it
follows from Section 8.4 that E(U) = 0 if α0 > 1/2 and that Var(U) = α0/(α0 − 1) if
α0 > 1. Now use Eq. (8.6.10) to see that if α0 > 1/2, then E(μ) = μ0. Also, if α0 > 1,
then
Var(μ) =


β0
λ0α0
 
Var(U).
Eq. (8.6.11) now follows directly.
Furthermore, the probability that μ lies in any specified interval can, in principle,
be obtained from a table of the t distribution or appropriate software. Most statistical
packages include functions that can compute the c.d.f. and the quantile function of
500 Chapter 8 Sampling Distributions of Estimators
a t distribution with arbitrary degrees of freedom, not just integers. Tables typically
deal solely with integer degrees of freedom. If necessary, one can interpolate between
adjacent degrees of freedom.
As we pointed out already, we can change the prior hyperparameters to posterior
hyperparameters in Theorems 8.6.2 and 8.6.3 and translate them into results
concerning the posterior marginal distribution of μ. In particular, the posterior distribution
of the following random variable is the t distribution with 2α1 degrees of
freedom:


λ1α1
β1
 1/2
(μ − μ1). (8.6.12)
A Numerical Example
Example
8.6.3
Nursing Homes in New Mexico. In 1988, the New Mexico Department of Health
and Social Services recorded information from many of its licensed nursing homes.
The data were analyzed by Smith, Piland, and Fisher (1992). In this example, we
shall consider the annual medical in-patient days X (measured in hundreds) for a
sample of 18 nonrural nursing homes. Prior to observing the data, we shall model
the value of X for each nursing home as a normal random variable with mean μ and
precision τ . To choose a prior mean and variance for μ and τ , we could speak with
experts in the field, but for simplicity, we shall just base these on some additional
information we have about the numbers of beds in these nursing homes. There are,
on average, 111 beds with a sample standard deviation of 43.5 beds. Suppose that
our prior opinion is that there is a 50 percent occupancy rate. Then we can na¨ıvely
scale up the mean and standard deviation by a factor of 0.5 × 365 to obtain a prior
mean and standard deviation for the number of in-patient days in a year. In units of
hundreds of in-patient days per year, this gives us a mean of 0.5 × 365 × 1.11≈ 200
and a standard deviation of 0.5 × 365 × 0.435 ≈ 63001/2. To map these values into
prior hyperparameters, we shall split the variance of 6300 so that half of it is due to
variance between the nursing homes and half is the variance of μ. That is, we shall set
Var(μ) = 3150 and E(τ) = 1/3150.We choose α0 = 2 to reflect only a small amount of
prior information. Then, since E(τ) = α0/β0, we find that β0 = 6300. UsingE(μ) = μ0
and (8.6.11), we get μ0 = 200 and λ0 = 2.
Next, we shall determine an interval for μ centered at the point μ0 = 200 such
that the probability that μ lies in this interval is 0.95. Since the random variable U
defined by Eq. (8.6.9) has the t distribution with 2α0 degrees of freedom, it follows
that, for the numerical values just obtained, the random variable 0.025(μ − 200) has
the t distribution with four degrees of freedom. The table of the t distribution gives
the 0.975 quantile of the t distribution with four degrees of freedom as 2.776. So,
Pr[−2.776 < 0.025(μ − 200) < 2.776]= 0.95. (8.6.13)
An equivalent statement is that
Pr(89<μ<311) = 0.95. (8.6.14)
Thus, under the prior distribution assigned to μ and τ , there is probability 0.95 that
μ lies in the interval (89, 311).
Suppose now that the following is our sample of 18 observed numbers of medical
in-patient days (in hundreds):
128 281 291 238 155 148 154 232 316 96 146 151 100 213 208 157 48 217.
8.6 Bayesian Analysis of Samples from a Normal Distribution 501
For these observations, which we denote x, xn
= 182.17 and s2
n
= 88678.5. Then, it
follows from Theorem 8.6.1 that the joint posterior distribution of μ and τ is the
normal-gamma distribution with hyperparameters
μ1 = 183.95, λ1 = 20, α1 = 11, β1 = 50925.37. (8.6.15)
Hence, the values of the means and the variances of μ and τ , as found from this joint
posterior distribution, are
E(μ|x) = μ1 = 183.95, Var(μ|x) = β1
λ1(α1 − 1)
= 254.63,
E(τ|x) = α1
β1
= 2.16 × 10−4, Var(τ |x) = α1
β2
1
= 4.24 × 10−9.
(8.6.16)
It follows from Eq. (8.6.1) that the mean μ1 of the posterior distribution of μ is a
weighted average of μ0 and xn. In this numerical example, it is seen that μ1 is quite
close to xn.
Next, we shall determine the marginal posterior distribution of μ. Let U be
the random variable in Eq. (8.6.12), and use the values computed in (8.6.15). Then
U = (0.0657)(μ − 183.95), and the posterior distribution of U is the t distribution
with 2α1 = 22 degrees of freedom. The 0.975 quantile of this t distribution is 2.074,
so
Pr(−2.074<U <2.074|x) = 0.95. (8.6.17)
An equivalent statement is that
Pr(152.38<μ<215.52|x) = 0.95. (8.6.18)
In other words, under the posterior distribution of μ and τ , the probability that μ
lies in the interval (152.38, 215.52) is 0.95.
It should be noted that the interval in Eq. (8.6.18) determined from the posterior
distribution of μ is much shorter than the interval in Eq. (8.6.14) determined from
the prior distribution. This result reflects the fact that the posterior distribution of
μ is much more concentrated around its mean than was the prior distribution. The
variance of the prior distribution of μ was 3150, and the variance of the posterior
distribution is 254.63. Graphs of the prior and posterior p.d.f.’s of μ are in Fig. 8.7
together with the posterior interval (8.6.18).  
Figure 8.7 Plots of prior
and posterior p.d.f.’s of μ in
Example 8.6.3. The posterior
probability interval (8.6.18)
is indicated at the bottom of
the graph. The corresponding
prior probability interval
(8.6.14) would extend far
beyond both sides of the plot.
( )
140 160 180 200 220 240
0.005
0.010
0.015
0.020
0.025
m
p.d.f.
Prior
Posterior
Interval
502 Chapter 8 Sampling Distributions of Estimators
Comparison with Confidence Intervals Continue using the nursing home data
from Example 8.6.3. We shall now construct a confidence interval for μ with confidence
coefficient 0.95 and compare this interval with the interval in Eq. (8.6.18) for
which the posterior probability is 0.95. Since the sample size n in Example 8.6.3 is
18, the random variable U defined by Eq. (8.4.4) on page 481 has the t distribution
with 17 degrees of freedom. The 0.975 quantile of this t distribution is 2.110. It now
follows from Theorem 8.5.1 that the endpoints of a confidence interval for μ with
confidence coefficient 0.95 will be
A = Xn
− 2.110 σ
 
n1/2
,
B = Xn
+ 2.110 σ
 
n1/2
.
When the observed values of xn
= 182.17 and s2
n
= 88678.5 are used here, we
get σ
  = (88678.5/17)1/2 = 72.22. The observed confidence interval for μ is then
(146.25, 218.09).
This interval is close to the interval (152.38, 215.52) in Eq. (8.6.18), for which
the posterior probability is 0.95. The similarity of the two intervals illustrates the
statement made at the end of Sec. 8.5. That is, in many problems involving the normal
distribution, the method of confidence intervals and the method of using posterior
probabilities yield similar results, even though the interpretations of the two methods
are quite different.
Improper Prior Distributions
As we discussed at the end of Sec. 7.3 on page 402, it is often convenient to use
improper priors that are not real distributions, but do lead to posteriors that are
real distributions. These improper priors are chosen more for convenience than to
represent anyone’s beliefs. When there is a sizeable amount of data, the posterior
distribution that results from use of an improper prior is often very close to one
that would result from a proper prior distribution. For the case that we have been
considering in this section, we can combine the improper prior that we introduced for
a location parameter like μ together with the improper prior for a scale parameter
like σ = τ
−1/2 into the usual improper prior for μ and τ . The typical improper prior
“p.d.f.” for a location parameter was found (in Example 7.3.15) to be the constant
function ξ1(μ) = 1. The typical improper prior “p.d.f.” for a scale parameter σ is
g(σ) = 1/σ . Since σ = τ
−1/2, we can apply the techniques of Sec. 3.8 to find the
improper “p.d.f.” of τ = σ
−2. The derivative of the inverse function is −1
2 τ
−3/2, so
the improper “p.d.f.” of τ would be
    
1
2
τ
−3/2
    
g(1/τ
−1/2) = 1
2
τ
−1,
forτ >0. Since this function has infinite integral, we shall drop the factor 1/2 and set
ξ2(τ ) = τ
−1. If we act as if μ and τ were independent, then the joint improper prior
“p.d.f.” for μ and τ is
ξ(μ, τ) = 1
τ
, for −∞<μ<∞, τ >0.
If we were to pretend as if this function were a p.d.f., the posterior p.d.f. ξ(μ, τ|x)
would be proportional to
8.6 Bayesian Analysis of Samples from a Normal Distribution 503
ξ(μ, τ)fn(x|μ, τ ) ∝ τ
−1τ n/2 exp


−τ
2
s2
n
− nτ
2
(μ − xn)2
 
(8.6.19)
=
 
τ 1/2 exp
 
−nτ
2
(μ − xn)2
 1
τ (n−1)/2−1 exp
 
−τ
s2
n
2
 
.
When the expression inside the braces on the far right side of (8.6.19) is regarded as a
function of μ for fixed value of τ , this expression can be recognized as being (except
for a factor that depends on neither μ nor τ ) the p.d.f. of the normal distribution with
mean xn and precision nτ. Since the variable μ does not appear elsewhere, it follows
that this p.d.f. must be the conditional posterior p.d.f. of μ given τ . It now follows in
turn that the expression outside the braces on the far right side of (8.6.19) must be
proportional to the marginal posterior p.d.f. of τ . This expression can be recognized
as being (except for a constant factor) the p.d.f. of the gamma distribution with
parameters (n − 1)/2 and s2
n/2. This joint distribution would be in precisely the same
form as the distribution in Theorem 8.6.1 if our prior distribution had been of the
normal-gamma form with hyperparameters μ0 = β0 = λ0 = 0 and α0=−1/2. That is,
if we pretend as if μ0 = β0 = λ0 = 0 and α0=−1/2, and then we apply Theorem 8.6.1,
we get the posterior hyperparameters μ1 = xn, λ1 = n, α1 = (n − 1)/2, and β1 = s2
n/2.
There is no probability distribution in the normal-gamma family with μ0 = β0 =
λ0 = 0 and α0 =−1/2; however, if we pretend as if this were our prior, then we
are said to be using the usual improper prior distribution. Notice that the posterior
distribution of μ and τ is a real member of the normal-gamma family so long as n ≥ 2.
Example
8.6.4
An Improper Prior for Seeded Cloud Rainfall. Suppose that we use the usual improper
prior for the parameters in Examples 8.3.2 and 8.5.3 with prior hyperparameters
μ0 = β0 = λ0 = 0 and α0 =−1/2. The data summaries are ¯xn
= 5.134 and s2
n
= 63.96.
The posterior distribution will then be the normal-gamma distribution with hyperparameters
μ1 = xn
= 5.134, λ1 = n = 26, α1 = (n − 1)/2 = 12.5, and β1 = s2
n/2 = 31.98.
Also, the marginal posterior distribution of μ is given by (7.6.12). In particular,
U =


26 × 12.5
31.98
 1/2
(μ − 5.134) = 3.188(μ − 5.134) (8.6.20)
has the t distribution with 25 degrees of freedom. Suppose that we want an interval
(a, b) such that the posterior probability of a <μ<b is 0.95. The 0.975 quantile of
the t distribution with 25 degrees of freedom is 2.060. So, we have that Pr(−2.060 <
U <2.060) = 0.95. Combining this with (8.6.20), we get
Pr(5.134 − 2.060/3.188<μ<5.134 + 2.060/3.188|x) = 0.95.
The interval we need runs from a = 5.134 − 2.060/3.188 = 4.488 to b = 5.134 +
2.060/3.188 = 5.780. Notice that the interval (4.488, 5.780) is precisely the same as
the 95% confidence interval for μ that was computed in Example 8.5.3.
Another calculation that we can do with this posterior distribution is to see how
likely it is that μ>4, where 4 is the mean of log-rainfall for unseeded clouds:
Pr(μ > 4|x) = Pr(U > 3.188(4 − 5.134)|x) = 1− T25(−3.615) = 0.9993,
where the final value is calculated using statistical software that includes the c.d.f.’s
of all t distributions. It appears quite likely, after observing the data, that the mean
log-rainfall of seeded clouds is more than 4.  
Note: Improper Priors Lead to Confidence Intervals. Example 8.6.4 illustrates one
of the more interesting properties of the usual improper prior. If one uses the usual
504 Chapter 8 Sampling Distributions of Estimators
improper prior with normal data, then the posterior probability is γ that μ is in the
observed value of a coefficient γ confidence interval. In general, if we apply (8.6.9)
after using an improper prior, we find that the posterior distribution of
U =
 
n(n − 1)
s2
n
 1/2
(μ − xn) (8.6.21)
is the t distribution with n − 1 degrees of freedom. It follows that if Pr(−c <U <c) =
γ , then
Pr


xn
− c
σ
 
n1/2
<μ<xn
+ c
σ
 
n1/2
    
x
 
= γ. (8.6.22)
The reader will notice the striking similarity between (8.6.22) and (8.5.3). The difference
between the two is that (8.6.22) is a statement about the posterior distribution
of μ after observing the data, while (8.5.3) is a statement about the conditional distribution
of the random variables Xn and σ
  given μ and σ before observing the data.
That these two probabilities are the same for all possible data and all possible values
of γ follows from the fact that they are both equal to Pr(−c <U <c) where U is
defined either in Eq. (8.4.4) or Eq. (8.6.21). The sampling distribution (conditional
on μ and τ) of U is the t distribution with n − 1 degrees of freedom, as we found in
Eq. (8.4.4). The posterior distribution from the improper prior (conditional on the
data) of U is also the t distribution with n − 1 degrees of freedom.
The same kind of thing happens when we try to estimate σ2 = 1/τ . The sampling
distribution (conditional on μ and τ) of V = (n − 1)σ
 2
τ = (n − 1)σ
 2
/σ 2 is the χ2
distribution with n − 1 degrees of freedom, as we saw in Eq. (8.3.11). The posterior
distribution from the improper prior (conditional on the data) of V is also the χ2
distribution with n − 1 degrees of freedom (see Exercise 4). Therefore, a coefficient
γ confidence interval (a, b) for σ2 based on the sampling distribution of V will satisfy
Pr(a < σ2 < b|x) = γ as a posterior probability statement given the data if we used
an improper prior.
There are many situations in which the sampling distribution of a pivotal quantity
like U above is the same as its posterior distribution when an improper prior is used.
A very mathematical treatment of these situations can be found in Schervish (1995,
chapter 6).The mostcommonsituations are those involving location parameters (like
μ) and/or scale parameters (like σ).
Summary
We introduced a family of conjugate prior distributions for the parameters μ and
τ = 1/σ 2 of a normal distribution. The conditional distribution of μ given τ is normal
with mean μ0 and precision λ0τ , and the marginal distribution of τ is the gamma
distribution with parameters α0 and β0. IfX1= x1, . . . ,Xn
= xn is an observed sample
of size n from the normal distribution with mean μ and precision τ , then the posterior
distribution of μ given τ is the normal distribution with mean μ1 and precision λ1τ ,
and the posterior distribution of τ is the gamma distribution with parameters α1 and
β1 where the values of μ1, λ1, α1, and β1 are given in Eq. (8.6.1) and (8.6.2). The
marginal posterior distribution of μ is given by saying that (λ1α1/β1)1/2(μ − μ1) has
the t distribution with 2α1 degrees of freedom. An interval containing probability
1− α of the posterior distribution of μ is
 
μ1 − T
−1
2α1
(1− α/2)
 
β1
α1λ1
 1/2
, μ1 + T
−1
2α1
(1− α/2)
 
β1
α1λ1
 1/2
 
.
8.6 Bayesian Analysis of Samples from a Normal Distribution 505
If we use the improper prior with prior hyperparameters α0 =−1/2 and μ0 =
λ0 = β0 = 0, then the random variable n1/2(Xn
− μ)/σ
  has the t distribution with
n − 1 degrees of freedom both as its posterior distribution given the data and as
its sampling distribution given μ and σ. Also, (n − 1)σ
 2
/σ 2 has the χ2 distribution
with n − 1 degrees of freedom both as its posterior distribution given the data and
as its sampling distribution given μ and σ. Hence, if we use the improper prior,
interval estimates of μ or σ based on the posterior distribution will also be confidence
intervals, and vice versa.
Exercises
1. Suppose that a random variable X has the normal distribution
with mean μ and precision τ . Show that the
random variable Y = aX + b (a  = 0) has the normal distribution
with mean aμ + b and precision τ/a2.
2. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with unknown mean μ (−∞ <
μ<∞) and known precision τ . Suppose also that the prior
distribution of μ is the normal distribution with mean μ0
and precision λ0. Show that the posterior distribution ofμ,
given that Xi
= xi (i = 1, . . . , n) is the normal distribution
with mean
λ0μ0 + nτxn
λ0 + nτ
and precision λ0 + nτ.
3. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with known mean μ and unknown
precision τ (τ >0). Suppose also that the prior distribution
of τ is the gamma distribution with parameters α0 and
β0 (α0 > 0 and β0 > 0). Show that the posterior distribution
of τ given that Xi
= xi (i = 1, . . . , n) is the gamma
distribution with parameters α0 + (n/2) and
β0 + 1
2
 N
i=1
(xi
− μ)2.
4. Suppose that X1, . . . , Xn are i.i.d. having the normal
distribution with mean μ and precision τ given (μ, τ ). Let
(μ, τ ) have the usual improper prior. Let σ
 2 = s2
n/(n − 1).
Prove that the posterior distribution of V = (n − 1)σ
 2
τ is
the χ2 distribution with n − 1 degrees of freedom.
5. Suppose that two random variables μ and τ have
the joint normal-gamma distribution such that E(μ) =
−5. Var(μ) = 1, E(τ ) = 1/2, and Var(τ ) = 1/8. Find the
prior hyperparameters μ0, λ0, α0, and β0 that specify the
normal-gamma distribution.
6. Show that two random variables μ and τ cannot have
a joint normal-gamma distribution such that E(μ) = 0,
Var(μ) = 1, E(τ) = 1/2, and Var(τ ) = 1/4.
7. Show that two random variables μ and τ cannot have
the joint normal-gamma distribution such that E(μ) =
0, E(τ ) = 1, and Var(τ ) = 4.
8. Suppose that two random variables μ and τ have the
joint normal-gamma distribution with hyperparameters
μ0 = 4, λ0 = 0.5, α0 = 1, and β0 = 8. Find the values of (a)
Pr(μ > 0) and (b) Pr(0.736<μ<15.680).
9. Using the prior and data in the numerical example
on nursing homes in New Mexico in this section, find
(a) the shortest possible interval such that the posterior
probability that μ lies in the interval is 0.90, and (b) the
shortest possible confidence interval for μ for which the
confidence coefficient is 0.90.
10. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with unknown mean μ and unknown
precision τ , and also that the joint prior distribution
ofμand τ is the normal-gamma distribution satisfying
the following conditions: E(μ) = 0, E(τ ) = 2, E(τ2) = 5,
and Pr(|μ| < 1.412) = 0.5. Determine the prior hyperparameters
μ0, λ0, α0, and β0.
11. Consider again the conditions of Exercise 10. Suppose
also that in a random sample of size n = 10, it is found that
xn
= 1 and s2
n
= 8. Find the shortest possible interval such
that the posterior probability that μ lies in the interval
is 0.95.
12. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with unknown mean μ and unknown
precision τ , and also that the joint prior distribution
ofμand τ is the normal-gamma distribution satisfying
the following conditions: E(τ) = 1, Var(τ ) = 1/3, Pr(μ >
3) = 0.5, and Pr(μ > 0.12) = 0.9. Determine the prior hyperparameters
μ0, λ0, α0, and β0.
13. Consider again the conditions of Exercise 12. Suppose
 also that in a random sample of size n = 8, it is found that n
i=1 xi
= 16 and
 n
i=1 x2
1
= 48. Find the shortest possible
interval such that the posterior probability that μ lies in
the interval is 0.99.
506 Chapter 8 Sampling Distributions of Estimators
14. Continue the analysis in Example 8.6.2 on page 498.
Compute an interval (a, b) such that the posterior probability
is 0.9 that a <μ<b. Compare this interval with the
90% confidence interval from Example 8.5.4 on page 487.
15. We will draw a sample of size n = 11 from the normal
distribution with mean μ and precision τ . We will use a
natural conjugate prior for the parameters (μ, τ ) from
the normal-gamma family with hyperparameters α0 = 2,
β0 = 1, μ0 = 3.5, and λ0 = 2. The sample yields an average
of xn
= 7.2 and s2
n
= 20.3.
a. Find the posterior hyperparameters.
b. Find an interval that contains 95% of the posterior
distribution of μ.
16. The study on acid concentration in cheese included
a total of 30 lactic acid measurements, the 10 given in
Example 8.5.4 on page 487 and the following additional
20:
1.68, 1.9, 1.06, 1.3, 1.52, 1.74, 1.16, 1.49, 1.63, 1.99,
1.15, 1.33, 1.44, 2.01, 1.31, 1.46, 1.72, 1.25, 1.08, 1.25.
a. Using the same prior as in Example 8.6.2 on page 498,
compute the posterior distribution of μ and τ based
on all 30 observations.
b. Use the posterior distribution found in Example 8.6.2
on page 498 as if it were the prior distribution before
observing the 20 observations listed in this problem.
Use these 20 new observations to find the posterior
distribution of μ and τ and compare the result to the
answer to part (a).
17. Consider the analysis performed in Example 8.6.2.
This time, use the usual improper prior to compute the
posterior distribution of the parameters.
18. Treat the posterior distribution conditional on the first
10 observations found in Exercise 17 as a prior and then
observe the 20 additional observations in Exercise 16.
Find the posterior distribution of the parameters after observing
all of the data and compare it to the distribution
found in part (b) of Exercise 16.
19. Consider the situation described in Exercise 7 of
Sec. 8.5. Use a prior distribution from the normal-gamma
family with values α0 = 1, β0 = 4, μ0 = 150, and λ0 = 0.5.
a. Find the posterior distribution of μ and τ = 1/σ 2.
b. Find an interval (a, b) such that the posterior probability
is 0.90 that a <μ<b.
20. Consider the calorie count data described in Example
7.3.10 on page 400. Now assume that each observation
has the normal distribution with unknown mean μ and
unknown precision τ given the parameter (μ, τ ). Use the
normal-gamma conjugate prior distribution with prior hyperparameters
μ0 = 0, λ0 = 1, α0 = 1, and β0 = 60. The
value of s2
n is 2102.9.
a. Find the posterior distribution of (μ, τ ).
b. Compute Pr(μ > 1|x).
8.7 Unbiased Estimators
Let δ be an estimator of a function g of a parameter θ. We say that δ is unbiased
if Eθ [δ(X)]= g(θ) for all values of θ. This section provides several examples of
unbiased estimators.
Definition of an Unbiased Estimator
Example
8.7.1
Lifetimes of Electronic Components. Consider the company in Example 8.1.3 that
wants to estimate the failure rate θ of electronic components. Based on a sample
X1, X2, X3 of lifetimes, the M.L.E. of θ is ˆ θ = 3/T , where T = X1 + X2 + X3. The
company hopes that ˆ θ will be close to θ. The mean of a random variable, such as ˆ θ,
is one measure of where we expect the random variable to be. The mean of 3/T is
(according to Exercise 21 in Sec. 5.7) 3θ/2. If the mean tells us where we expect the
estimator to be, we expect this estimator to be 50% larger than θ.  
Let X = (X1, . . . , Xn) be a random sample from a distribution that involves a
parameter (or parameter vector) θ whose value is unknown. Suppose that we wish
to estimate a function g(θ) of the parameter. In a problem of this type, it is desirable to
use an estimator δ(X) that, with high probability, will be close to g(θ). In other words,
8.7 Unbiased Estimators 507
it is desirable to use an estimator δ whose distribution changes with the value of θ in
such a way that no matter what the true value of θ is, the probability distribution of
δ is concentrated around g(θ).
For example, suppose that X = (X1, . . . ,Xn) form a random sample from a
normal distribution for which the mean θ is unknown and the variance is 1. In this
case, the M.L.E. of θ is the sample mean Xn. The estimator Xn is a reasonably good
estimator of θ because its distribution is the normal distribution with mean θ and
variance 1/n. This distribution is concentrated around the unknown value of θ, no
matter how large or how small θ is.
These considerations lead to the following definition.
Definition
8.7.1
Unbiased Estimator/Bias. An estimator δ(X) is an unbiased estimator of a function g(θ)
of the parameter θ if Eθ [δ(X)]= g(θ) for every possible value of θ.An estimator that
is not unbiased is called a biased estimator. The difference between the expectation
of an estimator and g(θ) is called the bias of the estimator. That is, the bias of δ as an
estimator of g(θ) is Eθ [δ(X)]− g(θ), and δ is unbiased if and only if the bias is 0 for
all θ.
In the case of a sample from a normal distribution with unknown mean θ, Xn is
an unbiased estimator of θ because Eθ (Xn) = θ for −∞< θ <∞.
Example
8.7.2
Lifetimes of Electronic Components. In Example 8.7.1, the bias of ˆ θ = 3/T as an
estimator of θ is 3θ/2 − θ = θ/2. It is easy to see that an unbiased estimator of θ
is δ(X) = 2/T .  
If an estimator δ of some nonconstant function g(θ) of the parameter is unbiased,
then the distribution of δ must indeed change with the value of θ, since the mean
of this distribution is g(θ). It should be emphasized, however, that this distribution
might be either closely concentrated around g(θ) or widely spread out. For example,
an estimator that is equally likely to underestimate g(θ) by 1,000,000 units or to
overestimate g(θ) by 1,000,000 units would be an unbiased estimator, but it would
never yield an estimate close to g(θ). Therefore, the mere fact that an estimator is
unbiased does not necessarily imply that the estimator is good or even reasonable.
However, if an unbiased estimator also has a small variance, it follows that the
distribution of the estimator will necessarily be concentrated around its mean g(θ),
and there will be high probability that the estimator will be close to g(θ).
For the reasons just mentioned, the study of unbiased estimators is largely
devoted to the search for an unbiased estimator that has a small variance. However,
if an estimator δ is unbiased, then its M.S.E. Eθ [(δ − g(θ))2] is equal to its variance
Varθ(δ). Therefore, the search for an unbiased estimator with a small variance is
equivalent to the search for an unbiased estimator with a small M.S.E. The following
result is a simple corollary to Exercise 4 in Sec. 4.3.
Corollary
8.7.1
Let δ be an estimator with finite variance. Then the M.S.E. of δ as an estimator of
g(θ) equals its variance plus the square of its bias.
Example
8.7.3
Lifetimes of Electronic Components. We can compare the two estimators ˆ θ and δ(X)
in Example 8.7.2 using M.S.E. According to Exercise 21 in Sec. 5.7, the variance of
1/T is θ2/4. So, the M.S.E. of δ(X) is θ2. For ˆ θ, the variance is 9θ2/4 and the square
of the bias is θ2/4, so the M.S.E. is 5θ2/2, which is 2.5 times as large as the M.S.E.
of δ(X). If M.S.E. were the sole concern, the estimator δ
∗
(X) = 1/T has variance
508 Chapter 8 Sampling Distributions of Estimators
Figure 8.8 M.S.E. for each
of the four estimators in
Example 8.7.3.
0 0.5 1.0 1.5 2.0
2
4
6
8
10
u
M.S.E.
Bayes
MLE
Unbiased
1/T
and squared bias both equal to θ2/4, so the M.S.E. is θ2/2, half the M.S.E. of the
unbiased estimator. Figure 8.8 plots the M.S.E. for each of these estimators together
with the M.S.E. of the Bayes estimator 4/(2 + T ) found in Example 8.1.3. Calculation
of the M.S.E. of the Bayes estimator required simulation. Eventually (above θ = 3.1),
the M.S.E. of the Bayes estimator crosses above the M.S.E. of 1/T , but it stays below
the other two for all θ.  
Example
8.7.4
Unbiased Estimation of the Mean. Let X = (X1, . . . , Xn) be a random sample from a
distribution that depends on a parameter (or parameter vector) θ. Assume that the
mean and variance of the distribution are finite. Define g(θ) = Eθ(X1). The sample
mean Xn is obviously an unbiased estimator of g(θ). Its M.S.E. is Varθ(X1)/n. In
Example 8.7.1, g(θ) = 1/θ and Xn
= 1/ ˆ θ is an unbiased estimator the mean.  
Unbiased Estimation of the Variance
Theorem
8.7.1
Sampling from a General Distribution. Let X = (X1, . . . ,Xn) be a random sample from
a distribution that depends on a parameter (or parameter vector) θ. Assume that the
variance of the distribution is finite. Define g(θ) = Varθ(X1). The following statistic
is an unbiased estimator of the variance g(θ):
ˆσ
2
1
= 1
n − 1
 n
i=1
(Xi
− Xn)2.
Proof Let μ = Eθ(X1), and let σ2 stand for g(θ) = Varθ(X1). Since the sample mean
is an unbiased estimator of μ, it is more or less natural to consider first the sample
variance ˆσ 2
0
= (1/n)
 n
i=1(Xi
− Xn)2 and to attempt to determine if it is an unbiased
estimator of the variance σ2. We shall use the identity
 n
i=1
(Xi
− μ)2 =
 n
i=1
(Xi
− Xn)2 + n(Xn
− μ)2.
Then it follows that
8.7 Unbiased Estimators 509
E(ˆσ 2
0) = E
 
1
n
 n
i=1
(Xi
− Xn)2
 
= E
 
1
n
 n
i=1
(Xi
− μ)2
 
− E[(Xn
− μ)2].
(8.7.1)
Since each observation Xi has mean μ and variance σ2, then E[(Xi
− μ)2]= σ2 for
i = 1, . . . , n. Therefore,
E
 
1
n
 n
i=1
(Xi
− μ)2
 
= 1
n
 n
i=1
E[(Xi
− μ)2]= 1
n
nσ2 = σ2. (8.7.2)
Furthermore, the sample mean Xn has mean μ and variance σ2/n. Therefore,
E[(Xn
− μ)2]= Var(Xn) = σ2
n
. (8.7.3)
It now follows from Eqs. (8.7.1), (8.7.2), and (8.7.3) that
E(ˆσ 2
0) = σ2 − 1
n
σ2 = n − 1
n
σ2. (8.7.4)
It can be seen from Eq. (8.7.4) that the sample variance ˆσ 2
0 is not an unbiased
estimator of σ2, because its expectation is [(n − 1)/n]σ2, rather than σ2. However, if
ˆσ
2
0 is multiplied by the factor n/(n − 1) to obtain the statistic ˆσ 2
1, then the expectation
of ˆσ 2
1 will indeed be σ2. Therefore, ˆσ 2
1 is an unbiased estimator of σ2.
In light of Theorem 8.7.1, many textbooks define the sample variance as ˆσ 2
1,
rather than as ˆσ 2
0.
Note: Special Case of Normal Random Sample. The estimator ˆσ 2
0 is the same as
the maximum likelihood estimator 2σ2 of σ2 when X1, . . . , Xn have the normal
distribution with mean μ and variance σ2. Also, ˆσ 2
1 is the same as the random variable
σ
 2 that appears in confidence intervals for μ.We have chosen to use different names
for these estimators in this section because we are discussing general distributions
for which σ2 might be some function g(θ) whose M.L.E. is completely different from
ˆσ
2
0. (See Exercise 1 for one such example.)
Sampling from a Specific Family of Distributions When it can be assumed that
X1, . . . , Xn form a random sample from a specific family of distributions, such as the
family of Poisson distributions, it will generally be desirable to consider not only ˆσ 2
1
but also other unbiased estimators of the variance.
Example
8.7.5
Sample from a Poisson Distribution. Suppose that we observe a random sample from
the Poisson distribution for which the mean θ is unknown.We have already seen that
Xn will be an unbiased estimator of the mean θ. Moreover, since the variance of a
Poisson distribution is also equal to θ, it follows that Xn is also an unbiased estimator
of the variance. In this example, therefore, both Xn and ˆσ 2
1 are unbiased estimators
of the unknown variance θ. Furthermore, any combination of Xn and ˆσ 2
1 having the
form αXn
+ (1− α)ˆσ 2
1, where α is a given constant (−∞ < α <∞), will also be an
unbiased estimator of θ because its expectation will be
E[αXn
+ (1− α)ˆσ 2
1]= αE(Xn) + (1− α)E(ˆσ 2
1) = αθ + (1− α)θ = θ. (8.7.5)
Other unbiased estimators of θ can also be constructed.  
510 Chapter 8 Sampling Distributions of Estimators
If an unbiased estimator is to be used, the problem is to determine which one of
the possible unbiased estimators has the smallest variance or, equivalently, has the
smallest M.S.E.We shall not derive the solution to this problem right now. However,
it will be shown in Sec. 8.8 that in Example 8.7.5, for every possible value of θ, the
estimatorXn has the smallest variance among all unbiased estimators of θ. This result
is not surprising. We know from Example 7.7.2 that Xn is a sufficient statistic for θ,
and it was argued in Sec. 7.9 that we can restrict our attention to estimators that
are functions of the sufficient statistic alone. (See also Exercise 13 at the end of this
section.)
Example
8.7.6
Sampling from a Normal Distribution. Assume that X = (X1, . . . , Xn) form a random
sample from the normal distribution with unknown mean μ and unknown variance
σ2. We shall consider the problem of estimating σ2. We know from Theorem 8.7.1
that the estimator ˆσ 2
1 is an unbiased estimator of σ2. Moreover, we know from
Example 7.5.6 that the sample variance ˆσ 2
0 is the M.L.E. of σ2.We want to determine
whether the M.S.E. E[(ˆσ 2
i
− σ2)2] is smaller for the estimator ˆσ 2
0 or for the estimator
ˆσ
2
1, and also whether or not there is some other estimator of σ2 that has a smaller
M.S.E. than both ˆσ 2
0 and ˆσ 2
1.
Both the estimator ˆσ 2
0 and the estimator ˆσ 2
1 have the following form:
Tc
= c
 n
i=1
(Xi
− Xn)2, (8.7.6)
where c = 1/n for ˆσ 2
0 and c = 1/(n − 1) for ˆσ 2
1. We shall now determine the M.S.E.
for an arbitrary estimator having the form in Eq. (8.7.6) and shall then determine
the value of c for which this M.S.E. is minimum. We shall demonstrate the striking
property that the same value of c minimizes the M.S.E. for all possible values of the
parameters μ and σ2. Therefore, among all estimators having the form in Eq. (8.7.6),
there is a single one that has the smallest M.S.E. for all possible values of μ and σ2.
It was shown in Sec. 8.3 that when X1, . . . , Xn form a random sample from a
normal distribution, the random variable
 n
i=1(Xi
− Xn)2/σ 2 has the χ2 distribution
with n − 1 degrees of freedom. By Theorem 8.2.1, the mean of this variable is n − 1,
and the variance is 2(n − 1). Therefore, if Tc is defined by Eq. (8.7.6), then
E(Tc) = (n − 1)cσ2 and Var(Tc) = 2(n − 1)c2σ4. (8.7.7)
Thus, by Corollary 8.7.1, the M.S.E. of Tc can be found as follows:
E[(Tc
− σ2)2]= [E(Tc) − σ2]2 + Var(T 2)
= [(n − 1)c − 1]2σ4 + 2(n − 1)c2σ4 (8.7.8)
= [(n2 − 1)c2 − 2(n − 1)c + 1]σ4.
The coefficient of σ4 in Eq. (8.7.8) is simply a quadratic function of c. Hence, no matter
what σ2 equals, the minimizing value of c is found by elementary differentiation
to be c = 1/(n + 1).
In summary, we have established the following fact: Among all estimators of
σ2 having the form in Eq. (8.7.6), the estimator that has the smallest M.S.E. for all
possible values of μ and σ2 is T1/(n+1)
= [1/(n + 1)]
 n
i=1(Xi
− Xn)2. In particular,
T1/(n+1) has a smaller M.S.E. than both the M.L.E. ˆσ 2
0 and the unbiased estimator
ˆσ
2
1. Therefore, the estimators ˆσ 2
0 and ˆσ 2
1, as well as all other estimators having the
form in Eq. (8.7.6) with c  = 1/(n + 1), are inadmissible. Furthermore, it was shown
8.7 Unbiased Estimators 511
by C. Stein in 1964 that even the estimator T1/(n+1) is dominated by other estimators
and that T1/(n+1) itself is therefore inadmissible.
The estimators ˆσ 2
0 and ˆσ 2
1 are compared in Exercise 6 at the end of this section.
Of course, when the sample size n is large, it makes little difference whether n, n − 1,
or n + 1 is used as the divisor in the estimate of σ2; all three estimators ˆσ 2
0, ˆσ 2
1, and
T1/(n+1) will be approximately equal.  
Limitations of Unbiased Estimation
The concept of unbiased estimation has played an important part in the historical
development of statistics, and the feeling that an unbiased estimator should be preferred
to a biased estimator is prevalent in current statistical practice. Indeed, what
scientist wishes to be biased or to be accused of being biased? The very terminology
of the theory of unbiased estimation seems to make the use of unbiased estimators
highly desirable.
However, as explained in this section, the quality of an unbiased estimator must
be evaluated in terms of its variance or its M.S.E. Examples 8.7.3 and 8.7.6 illustrate
the following fact: In many problems, there exist biased estimators that have smaller
M.S.E. than every unbiased estimator for every possible value of the parameter.
Furthermore, it can be shown that a Bayes estimator, which makes use of all relevant
prior information about the parameter and which minimizes the overall M.S.E., is
unbiased only in trivial problems in which the parameter can be estimated perfectly.
Some other limitations of the theory of unbiased estimation will now be described.
Nonexistence of an Unbiased Estimator In many problems, there does not exist
any unbiased estimator of the function of the parameter that must be estimated. For
example, suppose that X1, . . . ,Xn form n Bernoulli trials for which the parameter p
is unknown (0 ≤ p ≤ 1). Then the sample meanXn will be an unbiased estimator of p,
but it can be shown that there will be no unbiased estimator of p1/2. (See Exercise 7.)
Furthermore, if it is known in this example that p must lie in the interval 1
3
≤ p ≤ 2
3 ,
then there is no unbiased estimator of p whose possible values are confined to that
same interval.
Inappropriate Unbiased Estimators Consider an infinite sequence of Bernoulli
trials for which the parameter p is unknown (0<p<1), and letX denote the number
of failures that occur before the first success is obtained. Then X has the geometric
distribution with parameter p whose p.f. is given by Eq. (5.5.3). If it is desired to
estimate the value of p from the observation X, then it can be shown (see Exercise 8)
that the only unbiased estimator of p yields the estimate 1 if X = 0 and yields the
estimate 0 if X >0. This estimator seems inappropriate. For example, if the first
success is obtained on the second trial, that is, if X = 1, then it is silly to estimate
that the probability of success p is 0. Similarly, if X = 0 (the first trial is success), it
seems silly to estimate p to be as large as 1.
As another example of an inappropriate unbiased estimator, suppose that the
random variable X has the Poisson distribution with unknown mean λ (λ > 0), and
suppose also that it is desired to estimate the value of e
−2λ. It can be shown (see
Exercise 9) that the only unbiased estimator of e
−2λ yields the estimate 1 if X is an
even integer and the estimate−1ifXis an odd integer.This estimator is inappropriate
for two reasons. First, it yields the estimate 1 or −1 for a parameter e
−2λ, which must
512 Chapter 8 Sampling Distributions of Estimators
lie between 0 and 1. Second, the value of the estimate depends only on whether X is
odd or even, rather than on whether X is large or small.
Ignoring Information One more criticism of the concept of unbiased estimation
is that the principle of always using an unbiased estimator for a parameter θ (when
such exists) sometimes ignores valuable information that is available.As an example,
suppose that the average voltage θ in a certain electric circuit is unknown; this voltage
is to be measured by a voltmeter for which the reading X has the normal distribution
with mean θ and known variance σ2. Suppose also that the observed reading on the
voltmeter is 2.5 volts. Since X is an unbiased estimator of θ in this example, a scientist
who wished to use an unbiased estimator would estimate the value of θ to be 2.5 volts.
However, suppose also that after the scientist reported the value 2.5 as his
estimate of θ, he discovered that the voltmeter actually truncates all readings at
3 volts, just as in Example 3.2.7 on page 106. That is, the reading of the voltmeter is
accurate for any voltage less than 3 volts, but a voltage greater than 3 volts would be
reported as 3 volts. Since the actual reading was 2.5 volts, this reading was unaffected
by the truncation. Nevertheless, the observed reading would no longer be an unbiased
estimator of θ because the distribution of the truncated reading X is not a normal
distribution with mean θ. Therefore, if the scientist still wished to use an unbiased
estimator, he would have to change his estimate of θ from 2.5 volts to a different
value.
Ignoring the fact that the observed reading was accurate seems unacceptable.
Since the actual observed reading was only 2.5 volts, it is the same as what would
have been observed if there had been no truncation. Since the observed reading
is untruncated, it would seem that the fact that there might have been a truncated
reading is irrelevant to the estimation of θ. However, since this possibility does
change the sample space of X and its probability distribution, it will also change
the form of the unbiased estimator of θ.
Summary
An estimator δ(X) of g(θ) is unbiased if Eθ [δ(X)]= g(θ) for all possible values of θ.
The bias of an estimator of g(θ) is Eθ [δ(X)]− g(θ). The M.S.E. of an estimator equals
its variance plus the square of its bias. The M.S.E. of an unbiased estimator equals
its variance.
Exercises
1. Let X1, . . . , Xn be a random sample from the Poisson
distribution with mean θ.
a. Express the Varθ(Xi) as a function σ2 = g(θ).
b. Find the M.L.E. of g(θ) and show that it is
unbiased.
2. Suppose that X is a random variable whose distribution
is completely unknown, but it is known that all the
moments E(Xk), for k = 1, 2, . . . , are finite. Suppose also
that X1, . . . , Xn form a random sample from this distribution.
Show that for k = 1, 2, . . . , the kth sample moment
(1/n)
 n
i=1 Xk
i is an unbiased estimator of E(Xk).
3. For the conditions of Exercise 2, find an unbiased estimator
of [E(X)]2. Hint: [E(X)]2 = E(X2) − Var(X).
4. Suppose that a random variable X has the geometric
distribution with unknown parameter p. (See Sec. 5.5.)
Find a statistic δ(X) that will be an unbiased estimator of
1/p.
8.7 Unbiased Estimators 513
5. Suppose that a random variable X has the Poisson distribution
with unknown mean λ (λ>0). Find a statistic
δ(X) that will be an unbiased estimator of eλ. Hint: If
E[δ(X)]= eλ, then
∞ 
x=0
δ(x)e
−λλx
x!
= eλ.
Multiply both sides of this equation by eλ, expand the right
side in a power series in λ, and then equate the coefficients
of λx on both sides of the equation for x = 0, 1, 2, . . . .
6. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with unknown mean μ and unknown
variance σ2. Let ˆσ 2
0 and ˆσ 2
1 be the two estimators
of σ2, which are defined as follows:
ˆσ
2
0
= 1
n
 n
i=1
(Xi
− Xn)2 and ˆσ 2
1
= 1
n − 1
 n
i−1
(Xi
− Xn)2.
Show that the M.S.E. of ˆσ 2
0 is smaller than the M.S.E. of
ˆσ
2
1 for all possible values of μ and σ2.
7. Suppose that X1, . . . , Xn form n Bernoulli trials for
which the parameter p is unknown (0 ≤ p ≤ 1). Show that
the expectation of every function δ(X1, . . . , Xn) is a polynomial
in p whose degree does not exceed n.
8. Suppose that a random variable X has the geometric
distribution with unknown parameter p (0<p<1). Show
that the only unbiased estimator of p is the estimator δ(X)
such that δ(0) = 1 and δ(X) = 0 forX>0.
9. Suppose that a random variable X has the Poisson distribution
with unknown mean λ (λ > 0). Show that the
only unbiased estimator of e
−2λ is the estimator δ(X) such
that δ(X) = 1 if X is an even integer and δ(X)=−1 if X is
an odd integer.
10. Consider an infinite sequence of Bernoulli trials for
which the parameter p is unknown (0 <p <1), and suppose
that sampling is continued until exactly k successes
have been obtained, where k is a fixed integer (k ≥ 2). Let
N denote the total number of trials that are needed to obtain
the k successes. Show that the estimator (k − 1)/(N −
1) is an unbiased estimator of p.
11. Suppose that a certain drug is to be administered to
two different types of animals A and B. It is known that
the mean response of animals of type A is the same as
the mean response of animals of type B, but the common
value θ of this mean is unknown and must be estimated. It
is also known that the variance of the response of animals
of type A is four times as large as the variance of the
response of animals of type B. Let X1, . . . , Xm denote
the responses of a random sample of m animals of type A,
and let Y1, . . . , Yn denote the responses of an independent
random sample of n animals of type B. Finally, consider
the estimator ˆ θ = αXm
+ (1− α)Y n.
a. For what values of α, m, and n is ˆ θ an unbiased estimator
of θ?
b. For fixed values of m and n, what value of α yields an
unbiased estimator with minimum variance?
12. Suppose that a certain population of individuals is
composed of k different strata (k ≥ 2), and that for i =
1, . . . , k, the proportion of individuals in the total population
who belong to stratum i is pi   , where pi > 0 and k
i=1 pi
= 1. We are interested in estimating the mean
value μ of a certain characteristic among the total population.
Among the individuals in stratum i, this characteristic
has mean μi and variance σ2
i , where the value of
μi is unknown and the value of σ2
i is known. Suppose that
a stratified sample is taken from the population as follows:
From each stratum i, a random sample of ni individuals is
taken, and the characteristic is measured for each of these
individuals. The samples from the k strata are taken independently
of each other. Let Xi denote the average of the
ni measurements in the sample from stratum i.
a. Show that μ =
 k
i=1 piμi , and show also that ˆμ =
 k
i=1 piXi is an unbiased estimator of μ.
b. Let n =
 k
i=1 ni denote the total number of observations
in the k samples. For a fixed value of n, find the
values of n1, . . . , nk for which the variance of ˆμ will
be a minimum.
13. Suppose that X1, . . . , Xn form a random sample from
a distribution for which the p.d.f. or the p.f. is f (x|θ),
where the value of the parameter θ is unknown. Let X =
(X1, . . . , Xn), and let T be a statistic. Assume that δ(X)
is an unbiased estimator of θ such that Eθ [δ(X)|T ] does
not depend on θ. (If T is a sufficient statistic, as defined in
Sec. 7.7, then this will be true for every estimator δ. The
condition also holds in other examples.) Let δ0(T ) denote
the conditional mean of δ(X) given T .
a. Show that δ0(T ) is also an unbiased estimator of θ.
b. Show that Varθ (δ0) ≤ Varθ (δ) for every possible
value of θ. Hint: Use the result of Exercise 11 in
Sec. 4.7.
14. Suppose that X1, . . . , Xn form a random sample from
the uniform distribution on the interval [0, θ], where
the value of the parameter θ is unknown; and let Yn
=
max(X1, . . . , Xn). Show that [(n + 1)/n]Yn is an unbiased
estimator of θ.
15. Suppose that a random variable X can take only the
five values x = 1, 2, 3, 4, 5 with the following probabilities:
f (1|θ) = θ3, f(2|θ) = θ2(1− θ),
f (3|θ) = 2θ(1− θ), f (4|θ) = θ(1− θ)2,
f (5|θ) = (1− θ)3.
514 Chapter 8 Sampling Distributions of Estimators
Here, the value of the parameter θ is unknown (0 ≤ θ ≤ 1).
a. Verify that the sum of the five given probabilities is
1 for every value of θ.
b. Consider an estimator δc(X) that has the following
form:
δc(1) = 1, δc(2) = 2 − 2c, δc(3) = c,
δc(4) = 1− 2c, δc(5) = 0.
Show that for each constant c, δc(X) is an unbiased
estimator of θ.
c. Let θ0 be a number such that 0 < θ0 < 1. Determine
a constant c0 such that when θ = θ0, the variance of
δc0(X) is smaller than the variance of δc(X) for every
other value of c.
16. Reconsider the conditions of Exercise 3. Suppose that
n = 2, and we observe X1 = 2 and X2 =−1. Compute the
value of the unbiased estimator of [E(X)]2 found in Exercise
3. Describe a flaw that you have discovered in the
estimator.
  8.8 Fisher Information
This section introduces a method for measuring the amount of information that
a sample of data contains about an unknown parameter. This measure has the
intuitive properties that more data provide more information, and more precise
data provide more information. The information measure can be used to find
bounds on the variances of estimators, and it can be used to approximate the
variances of estimators obtained from large samples.
Definition and Properties of Fisher Information
Example
8.8.1
Studying Customer Arrivals. A store owner is interested in learning about customer
arrivals. She models arrivals during the day as a Poisson process (see Definition 5.4.2)
with unknown rate θ. She thinks of two different possible sampling plans to obtain
information about customer arrivals. One plan is to choose a fixed number, n, of
customers and to see how long, X, it takes until n customers arrive. The other plan
is to observe for a fixed length of time, t , and count how many customers, Y , arrive
during time t . That is, the store owner can either observe a Poisson random variable,
Y , with mean tθ or observe a gamma random variable, X, with parameters n and θ.
Is there any way to address the question of which sampling plan is likely to be more
informative?  
The Fisher information is one property of a distribution that can be used to
measure how much information one is likely to obtain from a random variable or
a random sample.
The Fisher Information in a Single Random Variable In this section, we shall
introduce a concept, called the Fisher information, that enters various aspects of
the theory of statistical inference, and we shall describe a few uses of this concept.
Consider a random variable X for which the p.f. or the p.d.f. is f (x|θ). It is
assumed that f (x|θ) involves a parameter θ whose value is unknown but must lie in a
given open interval   of the real line. Furthermore, it is assumed that X takes values
in a specified sample space S, and f (x|θ) > 0 for each value of x ∈ S and each value
of θ ∈  . This assumption eliminates from consideration the uniform distribution on
the interval [0, θ], where the value of θ is unknown, because, for that distribution,
f (x|θ) > 0 only when x <θ and f (x|θ) = 0 when x >θ. The assumption does not
eliminate any distribution where the set of values of x for which f (x|θ)>0 is a fixed
set that does not depend on θ.
8.8 Fisher Information 515
Next, we define λ(x|θ) as follows:
λ(x|θ) = log f (x|θ).
It is assumed that for each value of x ∈ S, the p.f. or p.d.f. f (x|θ) is a twice
differentiable function of θ, and we let
λ
 
(x|θ) = ∂
∂θ
λ(x|θ) and λ
  
(x|θ) = ∂2
∂θ2
λ(x|θ).
Definition
8.8.1
Fisher Information in a Random Variable. Let X be a random variable whose distribution
depends on a parameter θ that takes values in an open interval   of the real line.
Let the p.f. or p.d.f. of X be f (x|θ). Assume that the set of x such that f (x|θ) > 0 is
the same for all θ and that λ(x|θ) = log f (x|θ) is twice differentiable as a function of
θ. The Fisher information I (θ) in the random variable X is defined as
I (θ) = Eθ
{[λ
 
(X|θ)]2}. (8.8.1)
Thus, if f (x|θ) is a p.d.f., then
I (θ) =
 
S
[λ
 
(x|θ)]2f (x|θ) dx. (8.8.2)
If f (x|θ) is a p.f., the integral in Eq. (8.8.2) is replaced by a sum over the points in S.
In the discussion that follows, we shall assume for convenience that f (x|θ) is a p.d.f.
However, all the results hold also when f (x|θ) is a p.f.
An alternative method for calculating the Fisher information sometimes proves
more useful.
Theorem
8.8.1
 Assume the conditions of Definition 8.8.1. Also, assume that two derivatives of
S f (x|θ)dx with respect to θ can be calculated by reversing the order of integration
and differentiation. Then the Fisher information also equals
I (θ)=−Eθ [λ
  
(X|θ)]. (8.8.3)
Another expression for the Fisher information is
I (θ) = Varθ [λ
 
(X|θ)]. (8.8.4)
Proof We know that
 
S f (x|θ) dx = 1 for every value of θ ∈  . Therefore, if the
integral on the left side of this equation is differentiated with respect to θ, the result
will be 0. We have assumed that we can reverse the order in which we perform the
integration with respect to x, and the differentiation with respect to θ, and will still
obtain the value 0. In other words, we shall assume that we can take the derivative
inside the integral sign and obtain
 
S
f
 
(x|θ) dx = 0 for θ ∈  . (8.8.5)
Furthermore, we have assumed that we can take a second derivative with respect to
θ “inside the integral sign” and obtain
 
S
f
  
(x|θ) dx = 0 for θ ∈  . (8.8.6)
Since λ
 
(x|θ) = f
 
(x|θ)/f (x|θ), then
Eθ [λ
 
(X|θ)]=
 
S
λ
 
(x|θ)f (x|θ) dx =
 
S
f
 
(x|θ) dx.
516 Chapter 8 Sampling Distributions of Estimators
Hence, it follows from Eq. (8.8.5) that
Eθ [λ
 
(X|θ)]= 0. (8.8.7)
Since the mean of λ
 
(X|θ) is 0, it follows from Eq. (8.8.1) that Eq. (8.8.4) holds.
Next, note that
λ
  
(x|θ) = f (x|θ)f
  
(x|θ) − [f
 
(x|θ)]2
[f (x|θ)]2
= f
  
(x|θ)
f (x|θ)
− [λ
 
(x|θ)]2.
Therefore,
Eθ [λ
  
(X|θ)]=
 
S
f
  
(x|θ) dx − I (θ). (8.8.8)
It follows from Eqs. (8.8.8) and (8.8.6) that Eq. (8.8.3) holds.
In many problems, it is easier to determine the value of I (θ) from Eq. (8.8.3) than
from Eqs. (8.8.1) or (8.8.4).
Example
8.8.2
The Bernoulli Distributions. Suppose that X has the Bernoulli distribution with parameter
p. We shall determine the Fisher information I (p) in X.
In this example, the possible values of X are the two values 0 and 1. For x = 0
or 1,
λ(x|p) = log f (x|p) = x log p + (1− x) log(1− p).
Hence,
λ
 
(x|p) = x
p
− 1− x
1− p
and
λ
  
(x|p)=−
 
x
p2
+ 1− x
(1− p)2
 
.
Since E(X) = p, the Fisher information is
I (p)=−E[λ
  
(X|p)]= 1
p
+ 1
1− p
= 1
p(1− p)
.
Recall from Eq. (4.3.3) that Var(X) = p(1− p), so the more precise (smaller variance)
X is the more information it provides.
In this example, it can be readily verified that the assumptions made in the proof
of Theorem 8.8.1 are satisfied. Indeed, because X can take only the two values 0
and 1, the integrals in Eqs. (8.8.5) and (8.8.6) reduce to summations over the two
values x = 0 and x = 1. Since it is always possible to take a derivative “inside a finite
summation” and to differentiate the sum term by term, Eqs. (8.8.5) and (8.8.6) must
be satisfied.  
Example
8.8.3
The Normal Distributions. Suppose that X has the normal distribution with unknown
meanμand known variance σ2.We shall determine the Fisher information I (μ) inX.
For −∞< x <∞,
λ(x|μ)=−1
2
log(2πσ2) − (x − μ)2
2σ2
.
8.8 Fisher Information 517
Hence,
λ
 
(x|μ) = x − μ
σ2 and λ
  
(x|μ)=− 1
σ2
.
It now follows from Eq. (8.8.3) that the Fisher information is
I (μ) = 1
σ2
.
Since Var(X) = σ2, we see again that the more precise (smaller variance) X is, the
more information it provides.
In this example, it can be verified directly (see Exercise 1 at the end of this
section) that Eqs. (8.8.5) and (8.8.6) are satisfied.  
It should be emphasized that the concept of Fisher information cannot be applied
to a distribution, such as the uniform distribution on the interval [0, θ], for which the
necessary assumptions are not satisfied.
The Fisher Information in a Random Sample When we have a random sample
from a distribution, the Fisher information is defined in an analogous manner. Indeed,
Definition 8.8.2 subsumes Definition 8.8.1 as the special case in which n = 1.
Definition
8.8.2
Fisher Information in a Random Sample. Suppose that X = (X1, . . . , Xn) form a random
sample from a distribution for which the p.f. or p.d.f. is f (x|θ), where the value
of the parameter θ must lie in an open interval   of the real line. Let fn(x|θ) denote
the joint p.f. or joint p.d.f. of X. Define
λn(x|θ) = log fn(x|θ). (8.8.9)
Assume that the set of x such that fn(x|θ)>0 is the same for all θ and that log fn(x|θ)
is twice differentiable with respect to θ. The Fisher information In(θ) in the random
sample X is defined as
In(θ) = Eθ
{[λ
 
n(X|θ)]2}.
For continuous distributions, the Fisher information In(θ) in the entire sample is
given by the following n-dimensional integral:
In(θ) =
 
S
. . .
 
S
[λ
 
n(x|θ)]2fn(x|θ) dx1 . . . dxn.
For discrete distributions, replace the n-dimensional integral by an n-fold summation.
Furthermore, if we again assume that derivatives can be passed under the integrals,
then we may express In(θ) in either of the following two ways:
In(θ) = Varθ [λ
 
n(X|θ)] (8.8.10)
or
In(θ)=−Eθ [λ
  
n(X|θ)]. (8.8.11)
We shall now show that there is a simple relation between the Fisher information
In(θ) in the entire sample and the Fisher information I (θ) in a single observation Xi .
Theorem
8.8.2
Under the conditions of Definitions 8.8.1 and 8.8.2,
In(θ) = nI (θ). (8.8.12)
518 Chapter 8 Sampling Distributions of Estimators
In words, the Fisher information in a random sample of n observations is simply n
times the Fisher information in a single observation.
Proof Since fn(x|θ) = f (x1|θ) . . . f (xn
|θ), it follows that
λn(x|θ) =
 n
i=1
λ(xi
|θ).
Hence,
λ
  
n(x|θ) =
 n
i=1
λ
  
(xi
|θ). (8.8.13)
Since each observation Xi has the p.d.f. f (x|θ), the Fisher information in each Xi
is I (θ). It follows from Eqs. (8.8.3) and (8.8.11) that by taking expectations on both
sides of Eq. (8.8.13), we obtain Eq. (8.8.12).
Example
8.8.4
Studying Customer Arrivals. Return to the store owner in Example 8.8.1 who is trying
to choose between sampling a Poisson random variable, Y , with mean tθ or sampling
a gamma random variable, X, with parameters n and θ. The reader can compute the
Fisher information in each random variable in Exercises 3 and 19 in this section.We
shall label them IY (θ) and IX(θ). They are
IX(θ) = n
θ2 and IY (θ) = t
θ
.
Which is larger will clearly depend on the particular values of n, t , and θ. Both n and
t can be chosen by the store owner, but θ is unknown. In order for IX(θ) = IY (θ), it
is necessary and sufficient that n = tθ. This relation actually makes intuitive sense.
For example, if the store owner chooses to observe Y , then the total number N of
customers observed will be random and N = Y . The mean of N is then E(Y) = tθ.
Similarly, if the store owner chooses to observe X, then the length of time T that it
takes to observe n customers will be random. In fact, T = X, and the mean of T θ
is n. So long as the manufacturer is comparing sampling plans that are expected to
observe the same numbers of customers or observe for the same length of time, the
two sampling plans should provide the same amount of information.  
The Information Inequality
Example
8.8.5
Studying Customer Arrivals. Another way that the store owner in Example 8.8.4 could
choose between the two sampling plans is to compare the estimators that she will
use to make inferential statements about customer arrivals. For example, she may
want to estimate θ, the rate of customer arrivals. Alternatively, she may want to
estimate 1/θ, the mean time between customer arrivals. Each sampling plan lends
itself to estimation of both parameters. Indeed, there are unbiased estimators of both
parameters available from at least one of these sampling plans.  
As one application of the results that have been derived concerning Fisher
information, we shall show how the Fisher information can be used to determine
a lower bound for the variance of an arbitrary estimator of the parameter θ in a
given problem. The following result was independently developed by H. Cram´er and
C. R. Rao during the 1940s.
Theorem
8.8.3
Cram´er-Rao (Information) Inequality. Suppose that X = (X1, . . . , Xn) form a random
sample from a distribution for which the p.d.f. is f (x|θ). Suppose also that all the
8.8 Fisher Information 519
assumptions which have been made about f (x|θ) thus far in this section continue to
hold. Let T = r(X) be a statistic with finite variance. Let m(θ) = Eθ(T ). Assume that
m(θ) is a differentiable function of θ. Then
Varθ(T ) ≥ [m
 
(θ)]2
nI (θ)
. (8.8.14)
There will be equality in (8.8.14) if and only if there exist functions u(θ) and v(θ) that
may depend on θ but do not depend on X and that satisfy the relation
T = u(θ)λ
 
n(X|θ) + v(θ). (8.8.15)
Proof The inequality derives from applying Theorem 4.6.3 to the covariance between
T and the random variable λ
 
n(X|θ) defined in Eq. (8.8.9). Since λ
 
n(x|θ) =
f
 
n(x|θ)/fn(x|θ), it follows just as for a single observation that
Eθ [λ
 
n(X|θ)]=
 
S
. . .
 
S
f
 
n(x|θ) dx1 . . . dxn
= 0.
Therefore,
Covθ [T, λ
 
n(X|θ)]= Eθ [T λ
 
n(X|θ)]
=
 
S
. . .
 
S
r(x)λ
 
n(x|θ)fn(x|θ) dx1 . . . dxn
=
 
S
. . .
 
S
r(x)f
 
n(x|θ) dx1 . . . dxn. (8.8.16)
Next, write
m(θ) =
 
S
. . .
 
S
r(x)fn(x|θ) dx1 . . . dxn for θ ∈  . (8.8.17)
Finally, suppose that when both sides of Eq. (8.8.17) are differentiated with respect
to θ, the derivative can be taken “inside the integrals” on the left side. Then
m
 
(θ) =
 
S
. . .
 
S
r(x)f
 
n(x|θ) dx1 . . . dxn for θ ∈  . (8.8.18)
It follows from Eqs. (8.8.16) and (8.8.18) that
Covθ [T, λ
 
n(X|θ)]= m
 
(θ) for θ ∈  . (8.8.19)
Theorem 4.6.3 says that
{Covθ [T, λ
 
n(X|θ)]}2 ≤ Varθ(T ) Varθ [λ
 
n(X|θ)]. (8.8.20)
Therefore, it follows from Eqs. (8.8.10), (8.8.12), (8.8.19), and (8.8.20) that Eq.
(8.8.14) holds.
Finally, notice that (8.8.14) is an equality if and only if (8.8.20) is an equality. This,
in turn, is an equality if and only if there exist nonzero constants a and b and a constant
c such that aT + bλn(X|θ) = c. This last claim follows from the similar statement in
Theorem 4.6.3. In all of the calculations concerned with Fisher infomration, we have
been treating θ as a constant; hence, the constants a, b, and c just mentioned can
depend on θ, but must not depend on X. Then u(θ) = b/a and v(θ) = c/a.
The following simple corollary to Theorem 8.8.3 gives a lower bound on the
variance of an unbiased estimator of θ.
520 Chapter 8 Sampling Distributions of Estimators
Corollary
8.8.1
Cram´er-Rao Lower Bound on the Variance of an Unbiased Estimator. Assume the assumptions
of Theorem 8.8.3. Let T be an unbiased estimator of θ. Then
Varθ(T ) ≥ 1
nI (θ)
.
Proof Because T is an unbiased estimator of θ, m(θ) = θ and m
 
(θ) = 1 for every
value of θ ∈  . Now apply Eq. (8.8.14).
In words, Corollary 8.8.1 says that the variance of an unbiased estimator of θ cannot
be smaller than the reciprocal of the Fisher information in the sample.
Example
8.8.6
Unbiased Estimation of the Parameter of an Exponential Distribution. Let X1, . . . , Xn
be a random sample of size n > 2 from the exponential distribution with parameter
β. That is, each Xi has p.d.f. f (x|β) = β exp(−βx) for x >0. Then
λ(x|β) = log(β) − βx,
λ
 
(x|β) = 1
β
− x,
λ
  
(x|β)=− 1
β2
.
It can be verified that the conditions required to establish (8.8.3) hold in this example.
Then the Fisher information in one observation is
I (β)=−Eθ
 
− 1
β2
 
= 1
β2
.
The information in the whole sample is then In(β) = n/β2. Consider the estimator
T = (n − 1)/
 n
i=1 Xi . Theorem 5.7.7 says that
 n
i=1 Xi has the gamma distribution
with parameters n and β. In Exercise 21 in Sec. 5.7, you proved that the mean and
variance of 1/
 n
i=1 Xi are β/(n − 1) and β2/[(n − 1)2(n − 2)], respectively. Thus, T is
unbiased and its variance is β2/(n − 2). The variance is indeed larger than the lower
bound, 1/In(β) = β2/n. The reason the inequality is strict is that T is not a linear
function of λ
 
n(X|θ). Indeed, T is 1 over a linear function of λ
 
n(X|θ).
On the other hand, if we wish to estimate m(β) = 1/β, U = Xn is an unbiased
estimator with variance 1/(nβ2). The information inequality says that the lower
bound on the variance of an estimator of 1/β is
m
 
(β)2
n/β2
= (−1/β2)2
n/β2
= 1
nβ2
.
In this case, we see that there is equality in (8.8.14).  
Example
8.8.7
Studying Customer Arrivals. Return to the store owner in Example 8.8.5 who wants
to compare the estimators of θ and 1/θ that she could compute from either the
Poisson random variable Y or the gamma random variable X. The case of unbiased
estimators based on X was already handled in Example 8.8.6, where our X has the
same distribution as
 n
i=1 Xi in that example when θ = β. Hence, X/n is an unbiased
estimator of 1/θ whose variance equals the Cram´er-Rao lower bound, and (n − 1)/X
is an unbiased estimator of θ whose variance is strictly larger than the lower bound.
Since Eθ(Y ) = tθ, we see that Y/t is an unbiased estimator of θ whose variance is also
known to be θ/t, which is the Cram´er-Rao lower bound. Unfortunately, there is no
8.8 Fisher Information 521
unbiased estimator of 1/θ based on Y alone. The estimator δ(Y) = t/(Y + 1) satisfies
Eθ [δ(Y)]= 1
θ
#
1− e
−tθ
$
.
If t is large and θ is not too small, the bias will be small, but it is impossible to find an
unbiased estimator. The reason is that the mean of every function of Y is exp(−tθ)
times a power series in θ. Every such function is differentiable in a neighborhood of
θ = 0. The function 1/θ is not differentiable at θ = 0.  
Efficient Estimators
Example
8.8.8
Variance of a Poisson Distribution. In Example 8.7.5, we presented a collection of
different unbiased estimators of the the variance of a Poisson distribution based
on a random sample X = (X1, . . . , Xn) from that distribution. After that example,
we made the claim that one of the estimators has the smallest variance among the
entire collection. The information inequality gives us a way to address comparisons
of such collections of estimators without necessarily listing them all or computing
their variances.  
An estimator whose variance equals the Cram´er-Rao lower bound makes the
most efficient use of the data X in some sense.
Definition
8.8.3
Efficient Estimator. It is said that an estimator T is an efficient estimator of its expectation
m(θ) if there is equality in (8.8.14) for every value of θ ∈  .
One difficulty with Definition 8.8.3 is that, in a given problem, there may be no
estimator of a particular function m(θ) whose variance actually attains the Cram´er-
Rao lower bound. For example, if the random variable X has the normal distribution
for which the mean is 0 and the standard deviation σ is unknown (σ >0), then it
can be shown that the variance of every unbiased estimator of σ based on the single
observationX is strictly greater than 1/I (σ ) for every value ofσ >0 (see Exercise 9).
In Example 8.8.6, no efficient estimator of β exists.
On the other hand, in many standard estimation problems there do exist efficient
estimators. Of course, the estimator that is identically equal to a constant is an efficient
estimator of that constant, since the variance of this estimator is 0. However, as
we shall now show, there are often efficient estimators of more interesting functions
of θ as well.
According to Theorem 8.8.3, there will be equality in the information inequality
(8.8.14) if and only if the estimator T is a linear function of λ
 
n(X|θ). It is possible
that the only efficient estimators in a given problem will be constants. The reason is
as follows: Because T is an estimator, it cannot involve the parameter θ. Therefore,
in order for T to be efficient, it must be possible to find functions u(θ) and v(θ) such
that the parameter θ will actually be canceled from the right side of Eq. (8.8.15), and
the value of T will depend only on the observations X and not on θ.
Example
8.8.9
Sampling from a Poisson Distribution. Suppose thatX1, . . . ,Xn form a random sample
from the Poisson distribution with unknown mean θ (θ >0). We shall show that Xn
is an efficient estimator of θ.
The joint p.f. of X1, . . . , Xn can be written in the form
fn(x|θ) = e
−nθθnxn
 n
i=I (xi!)
.
522 Chapter 8 Sampling Distributions of Estimators
Therefore,
λn(X|θ)=−nθ + nXn log θ −
 n
i=1
log(Xi!)
and
λ
 
n(X|θ)=−n + nXn
θ
. (8.8.21)
If we now let u(θ) = θ/n and v(θ) = θ, then it is found from Eq. (8.8.21) that
Xn
= u(θ)λ
 
n(X|θ) + v(θ).
Since the statistic Xn has been represented as a linear function of λ
 
n(X|θ), it
follows that Xn is an efficient estimator of its expectation θ. In other words, the
variance of Xn will attain the lower bound given by the information inequality, which
in this example is θ/n (see Exercise 3). This fact can also be verified directly.  
Unbiased Estimators with Minimum Variance Suppose that in a given problem
a particular estimator T is an efficient estimator of its expectation m(θ), and let T1
denote any other unbiased estimator of m(θ). Then for every value of θ ∈  , Varθ(T )
will be equal to the lower bound provided by the information inequality, andVarθ(T1)
will be at least as large as that lower bound. Hence, Varθ(T ) ≤ Varθ(T1) for θ ∈  . In
other words, if T is an efficient estimator of m(θ), then among all unbiased estimators
of m(θ), T will have the smallest variance for every possible value of θ.
Example
8.8.10
Variance of a Poisson Distribution. In Example 8.8.9, we saw that Xn is an efficient
estimator of the mean θ of a Poisson distribution. Therefore, for every value ofθ >0,
Xn has the smallest variance among all unbiased estimators of θ. Since θ is also the
variance of the Poisson distribution with mean θ, we know that Xn has the smallest
variance among all unbiased estimators of the variance. This establishes the claim
that was made without proof after Example 8.7.5. In particular, the estimator ˆσ 2
1
in Example 8.7.5 is not a linear function of λ
 
n(X|θ), and hence its variance must
be strictly larger than Cram´er-Rao lower bound. Similarly, the other estimators in
Eq. (8.7.5) must each have variance larger than the Cram´er-Rao lower bound.  
Properties of Maximum Likelihood Estimators for Large Samples
Suppose that X1, . . . , Xn form a random sample from a distribution for which the
p.d.f. or the p.f. is f (x|θ), and suppose also that f (x|θ) satisfies conditions similar to
those which were needed to derive the information inequality. For each sample size
n, let ˆ θn denote the M.L.E. of θ.We shall show that if n is large, then the distribution
of ˆ θn is approximately the normal distribution with mean θ and variance 1/[nI (θ)].
Theorem
8.8.4
Asymptotic Distribution of an Efficient Estimator. Assume the assumptions of Theorem
8.8.3. Let T be an efficient estimator of its mean m(θ). Assume that m
 
(θ) is
never 0. Then the asymptotic distribution of
[nI (θ)]1/2
m (θ)
[T − m(θ)]
is the standard normal distribution.
8.8 Fisher Information 523
Proof Consider first the random variable λ
 
n(X|θ). Since λn(X|θ) = n
i=1 λ(Xi
|θ),
then
λ
 
n(X|θ) =
 n
i=1
λ
 
(Xi
|θ).
Furthermore, since the n random variables X1, . . . , Xn are i.i.d., the n random variables
λ
 
(X1|θ), . . . , λ
 
(Xn
|θ) will also be i.i.d. We know from Eqs. (8.8.7) and (8.8.4)
that the mean of each of these variables is 0, and the variance of each is I (θ). Hence,
it follows from the central limit theorem of Lindeberg and L´evy (Theorem 6.3.1) that
the asymptotic distribution of the random variable λ
 
n(X|θ)/[nI (θ)]1/2 is the standard
normal distribution.
Since T is an efficient estimator of m(θ), we have
Eθ(T ) = m(θ) and Varθ(T ) = [m
 
(θ)]2
nI (θ)
. (8.8.22)
Furthermore, there must exist functions u(θ) and v(θ) that satisfy Eq. (8.8.15). Because
the random variable λ
 
n(X|θ) has mean 0 and variance nI (θ), it follows from
Eq. (8.8.15) that
Eθ(T ) = v(θ) and Varθ(T ) = [u(θ)]2nI (θ).
When these values for the mean and the variance of T are compared with the values
in Eq. (8.8.22), we find that v(θ) = m(θ) and |u(θ)| = |m
 
(θ)|/[nI (θ)]. To be specific,
we shall assume that u(θ) = m
 
(θ)/[nI (θ)], although the same conclusions would be
obtained if u(θ)=−m
 
(θ)/[nI (θ)].
Next, substitute the values u(θ) = m
 
(θ)/[nI (θ)]and v(θ) = m(θ) into Eq. (8.8.15)
to obtain
T = m
 
(θ)
nI (θ)
λ
 
n(X|θ) + m(θ).
Rearranging this equation slightly yields
[nI (θ)]1/2
m (θ)
[T − m(θ)]=
λ
 
n(X|θ)
[nI (θ)]1/2
. (8.8.23)
We have already shown that the asymptotic distribution of the random variable
on the right side of Eq. (8.8.23) is the standard normal distribution. Therefore, the
asymptotic distribution of the random variable on the left side of Eq. (8.8.23) is also
the standard normal distribution.
Asymptotic Distribution of an M.L.E It follows from Theorem 8.8.4 that if the
M.L.E. ˆ θn is an efficient estimator of θ for each value of n, then the asymptotic
distribution of [nI (θ)]1/2( ˆ θn
− θ) is the standard normal distribution. However, it can
be shown that even in an arbitrary problem in which ˆ θn is not an efficient estimator,
[nI (θ)]1/2( ˆ θn
− θ) has this same asymptotic distribution under certain conditions.
Without presenting all the required conditions in full detail, wecan state the following
result. The proof of this result can be found in Schervish (1995, chapter 7).
Theorem
8.8.5
Asymptotic Distribution of M.L.E. Suppose that in an arbitrary problem the M.L.E. ˆ θn
is determined by solving the equation λ
 
n(x|θ) = 0, and in addition both the second
and third derivatives λ
  
n(x|θ) and λ
   
n (x|θ) exist and satisfy certain regularity conditions.
Then the asymptotic distribution of [nI (θ)]1/2( ˆ θn
− θ) is the standard normal
distribution.
524 Chapter 8 Sampling Distributions of Estimators
In practical terms, Theorem 8.8.5 states that in most problems in which the sample
size n is large, and the M.L.E. ˆ θn is found by differentiating the likelihood function
fn(x|θ) or its logarithm, the distribution of [nI (θ)]1/2( ˆ θn
− θ) will be approximately
the standard normal distribution. Equivalently, the distribution of ˆ θn will be approximately
the normal distribution with mean θ and variance 1/[nI (θ)]. Under these
conditions, it is said that ˆ θn is an asymptotically efficient estimator.
Example
8.8.11
Estimating the Standard Deviation of a Normal Distribution. Suppose that X1, . . . , Xn
form a random sample from the normal distribution with known mean 0 and unknown
standard deviation σ (σ >0). It can be shown that the M.L.E. of σ is
ˆσ
=
 
1
n
 n
i=1
X2
i
 1/2
.
Also, it can be shown (see Exercise 4) that the Fisher information in a single observation
is I (σ) = 2/σ 2. Therefore, if the sample size n is large, the distribution of ˆσwill
be approximately the normal distribution with mean σ and variance σ2/(2n).  
For cases in which it is difficult to compute the M.L.E., there is a result similar
to Theorem 8.8.5. The proof of Theorem 8.8.6 can also be found as a special case of
theorem 7.75 in Schervish (1995).
Theorem
8.8.6
Efficient Estimation. Assume the same smoothness conditions on the likelihood function
as in Theorem 8.8.5. Assume that ˜ θn √ is a sequence of estimators of θ such that
n( ˜ θn
− θ) converges in distribution to some distribution (it doesn’t matter what distribution).
Use ˜ θn as the starting value, and perform one step of Newton’s method
(Definition 7.6.2) toward finding the M.L.E. of θ. Let the result of this one step be
called θ
∗
n . Then the asymptotic distribution of [nI (θ)]1/2(θ
∗
n
− θ) is the standard normal
distribution.
A typical choice of ˜ θn in Theorem 8.8.6 is a method of moments estimator (Definition
7.6.3). Example 7.6.6 illustrates such an application of Theorem 8.8.6 when
sampling from a gamma distribution.
The Bayesian Point of View Another general property of the M.L.E. ˆ θn pertains
to making inferences about a parameter θ from the Bayesian point of view. Suppose
that the prior distribution of θ is represented by a positive and differentiable p.d.f.
over the interval  , and the sample size n is large. Then under conditions similar to
the regularity conditions that are needed to assure the asymptotic normality of the
distribution of ˆ θn, it can be shown that the posterior distribution of θ, after the values
of X1, . . . , Xn have been observed, will be approximately the normal distribution
with mean ˆ θn and variance 1/[nI ( ˆ θn)].
Example
8.8.12
The Posterior Distribution of the Standard Deviation. Suppose again that X1, . . . , Xn
form a random sample from the normal distribution with known mean 0 and unknown
standard deviation σ. Suppose also that the prior p.d.f. of σ is a positive and
differentiable function forσ >0, and the sample size n is large. Since I (σ) = 2/σ 2, it
follows that the posterior distribution of σ will be approximately the normal distribution
with mean ˆσ and variance ˆσ 2/(2n), where ˆσ is the M.L.E. of σ calculated from
the observed values in the sample. Figure 8.9 illustrates this approximation based on a
8.8 Fisher Information 525
Figure 8.9 Posterior p.d.f. of
σ and approximation based
on Fisher information in
Example 8.8.12.
s
Density
0.5 1.0 1.5 2.0
1
2
3
0
Posterior
Approximation
sample of n = 40 i.i.d. simulated normal random variables with mean 0 and variance 1.
In this sample, the M.L.E. was ˆσ = 1.061. Figure 8.9 shows the actual posterior p.d.f.
based on an improper prior with “p.d.f.” 1/σ together with the approximate normal
posterior p.d.f. with mean 1.061 and variance 1.0612/80 = 0.0141.  
Fisher Information for Multiple Parameters
Example
8.8.13
Sample from a Normal Distribution. Let X = (X1, . . . , Xn) be a random sample from
the normal distribution with mean μ and variance σ2. Is there an analog to Fisher
information for the vector parameter θ = (μ, σ2)?  
In the spirit of Definition 8.8.1 and Theorem 8.8.1, we define Fisher information
in terms of derivatives of the logarithm of the likelihood function. We shall define
the Fisher information in a random sample of size n with the understanding that the
Fisher information in a single random variable corresponds to a sample size of n = 1.
Definition
8.8.4
Fisher Information for a Vector Parameter. Suppose that X = (X1, . . . ,Xn) form a
random sample from a distribution for which the p.d.f. is f (x|θ), where the value
of the parameter θ = (θ1, . . . , θk) must lie in an open subset   of a k-dimensional
real space. Let fn(x|θ) denote the joint p.d.f. or joint p.f. of X. Define
λn(x|θ) = log fn(x|θ).
Assume that the set of x such that fn(x|θ)>0 is the same for all θ and that log fn(x|θ)
is twice differentiable with respect to θ. The Fisher information matrix In(θ) in the
random sample X is defined as the k × k matrix with (i, j ) element equal to
In,i,j (θ) = Covθ
 
∂
∂θi
λ
 
n(X|θ),
∂
∂θj
λ
 
n(X|θ)
 
.
Example
8.8.14
Sample from a Normal Distribution. In Example 8.8.13, let θ1 = μ and θ2 = σ2. As in
Eq. (7.5.3), we obtain
λn(X|θ)=−n
2
log(2π) − n
2
log(θ2) − 1
2θ2
 n
i=1
(Xi
− θ1)2.
526 Chapter 8 Sampling Distributions of Estimators
The first partial derivatives are
∂
∂θ1
λn(x|θ) = 1
θ2
 n
i=1
(Xi
− θ1), (8.8.24)
∂
∂θ2
λn(x|θ) = n
2θ2
+ 1
2θ2
2
 n
i=1
(Xi
− θ1)2. (8.8.25)
Since the means of the two random variables above are both 0, their covariances
are the means of the products. The distribution of
 n
i=1(Xi
− θ1) is the normal
distribution with mean 0 and variance nθ2. The distribution of
 n
i=1(Xi
− θ1)2/θ2 is
the χ2 distribution with n degrees of freedom. So the variance of (8.8.24) is n/θ2, and
the variance of (8.8.25) is 2n/θ2
2 . The mean of the product of (8.8.24) and (8.8.25) is
0 because the third central moment of a normal distribution is 0. This makes
In(θ) =
⎛
⎝
n
θ2
0
0 n
θ2
2
⎞
⎠ .  
The results for one-dimensional parameters all have versions for k-dimensional
parameters. For example, in Eq. (8.8.3), λ
  
(X|θ) is replaced by the k × k matrix of
second partial derivatives. In the Cram´er-Rao inequality, we need the inverse of
the matrix In(θ), and m
 
(θ) must be replaced by the vector of partial derivatives.
Specifically, if T is a statistic with finite variance and mean m(θ), then
Varθ(T ) ≥


∂
∂θ1
m(θ), . . . ,
∂
∂θk
m(θ)
 
In(θ)
−1
⎛
⎝
∂
∂θ1
m(θ)
...
∂
∂θk
m(θ)
⎞
⎠ . (8.8.26)
Also, the inequality in (8.8.26) is equality if and only if T is a linear function of the
vector


∂
∂θ1
λn(x|θ), . . . ,
∂
∂θk
λn(x|θ)
 
. (8.8.27)
Example
8.8.15
Sample from a Normal Distribution. In Example 8.8.14, the coordinates of the vector
in (8.8.27) are linear functions of the two random variables
 n
i=1 Xi and
 n
i=1 X2
i .
So, the only statistics whose variances equal the lower bound in (8.8.26) are of the
form T = a
 n
i=1 Xi
+ b
 n
i=1 X2
i
+ c. The mean of such a statistic T is
Eθ(T ) = anθ1 + bn(θ2 + θ2
1 ) + c. (8.8.28)
In particular, it is impossible to obtain θ2 as a special case of (8.8.28). There is no
efficient unbiased estimator of θ2 = σ2. It can be proven that (σ
 
)2, which was defined
in Eq. (8.4.3), is an unbiased estimator that has minimum variance among all unbiased
estimators. The proof of this fact is beyond the scope of this text. The variance of (σ
 
)2
is 2θ2
2 /(n − 1), while the Cram´er-Rao lower bound is 2θ2
2/n.  
Example
8.8.16
Multinomial Distributions. Let X = (X1, . . . , Xk) have the multinomial distribution
with parameters n and p = (p1, . . . , pk) as defined in Definition 5.9.1. Finding the
Fisher information in this example involves a subtle point. The parameter vector p
takes values in the set
{p : p1 + . . . + pk
= 1, all pi
≥ 0}.
No subset of this set is open. Hence, no matter what set we choose for the parameter
space, Definition 8.8.4 does not apply to this parameter. However, there is an
8.8 Fisher Information 527
equivalent paramter p∗ = (p1, . . . , pk−1) that takes values in the set
{p∗ : p1 + . . . + pk−1 ≤ 1, all pi
≥ 0},
which has nonempty interior.With this version of the parameter, and assuming that
the parameter space is the interior of the set above, it is straightforward to calculate
the Fisher information, as in Exercise 20.  
Summary
Fisher information attempts to measure the amount of information about a parameter
that a random variable or sample contains. Fisher information from independent
random variables adds together to form the Fisher information in the sample. The
information inequality (Cram´er-Rao lower bound) provides lower bounds on the
variances of all estimators. An estimator is efficient if its variance equals the lower
bound. The asymptotic distribution of a maximum likelihood estimator of θ is (under
regularity conditions) normal with mean θ and variance equal to 1 over the Fisher
information in the sample. Also, for large sample sizes, the posterior distribution of
θ is approximately normal with mean equal to the M.L.E. and variance equal to 1
over the Fisher information in the sample evaluated at the M.L.E.
Exercises
1. Suppose that a random variable X has a normal distribution
for which the mean μ is unknown (−∞<μ<∞)
and the variance σ2 is known. Let f (x|μ) denote the p.d.f.
of X, and let f
 
(x|μ) and f
  
(x|μ) denote the first and second
partial derivatives with respect to μ. Show that
  ∞
−∞
f
 
(x|μ) dx = 0 and
  ∞
−∞
f
  
(x|μ) dx = 0.
2. Suppose that X has the geometric distribution with
parameter p. (See Sec. 5.5.) Find the Fisher information
I (p) in X.
3. Suppose that a random variable X has the Poisson distribution
with unknown meanθ >0. Find the Fisher information
I (θ) in X.
4. Suppose that a random variable has the normal distribution
with mean 0 and unknown standard deviation
σ >0. Find the Fisher information I (σ) in X.
5. Suppose that a random variable X has the normal distribution
with mean 0 and unknown variance σ2 > 0. Find
the Fisher information I (σ2) in X. Note that in this exercise
the variance σ2 is regarded as the parameter, whereas
in Exercise 4 the standard deviation σ is regarded as the
parameter.
6. Suppose thatX is a random variable for which the p.d.f.
or the p.f. is f (x|θ), where the value of the parameter θ
is unknown but must lie in an open interval  . Let I0(θ)
denote the Fisher information in X. Suppose now that the
parameter θ is replaced by a new parameter μ, where
θ = ψ(μ), and ψ is a differentiable function. Let I1(μ)
denote the Fisher information in X when the parameter
is regarded as μ. Show that
I1(μ) = [ψ
 
(μ)]2I0[ψ(μ)].
7. Suppose that X1, . . . , Xn form a random sample from
the Bernoulli distribution with unknown parameter p.
Show that Xn is an efficient estimator of p.
8. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with unknown mean μ and known
variance σ2 > 0. Show that Xn is an efficient estimator
of μ.
9. Suppose that a single observation X is taken from the
normal distribution with mean 0 and unknown standard
deviation σ >0. Find an unbiased estimator of σ, determine
its variance, and show that this variance is greater
than 1/I (σ ) for every value of σ >0. Note that the value
of I (σ) was found in Exercise 4.
10. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with mean 0 and unknown standard
deviation σ >0. Find the lower bound specified by
the information inequality for the variance of any unbiased
estimator of log σ.
11. Suppose that X1, . . . , Xn form a random sample from
an exponential family for which the p.d.f. or the p.f. f (x|θ)
is as specified in Exercise 23 of Sec. 7.3. Suppose also that
the unknown value of θ must belong to an open interval  
of the real line. Show that the estimator T = n
i=1 d(Xi)
is an efficient estimator. Hint: Show that T can be represented
in the form given in Eq. (8.8.15).
528 Chapter 8 Sampling Distributions of Estimators
12. Suppose that X1, . . . , Xn form a random sample from
a normal distribution for which the mean is known and
the variance is unknown. Construct an efficient estimator
that is not identically equal to a constant, and determine
the expectation and the variance of this estimator.
13. Determine what is wrong with the following argument:
Suppose that the random variableXhas the uniform
distribution on the interval [0, θ], where the value of θ is
unknown (θ >0).Then f (x|θ) = 1/θ, λ(x|θ)=−log θ and
λ
 
(x|θ)=−(1/θ). Therefore,
I (θ) = Eθ
{[λ
 
(X|θ)]2} = 1
θ2
.
Since 2X is an unbiased estimator of θ, the information
inequality states that
Var(2X) ≥ 1
I (θ)
= θ2.
But
Var(2X) = 4 Var(X) = 4 . θ2
12
= θ2
3
< θ2.
Hence, the information inequality is not correct.
14. Suppose that X1, . . . , Xn form a random sample from
the gamma distribution with parameters α and β, where
α is unknown and β is known. Show that if n is large, the
distribution of the M.L.E. of α will be approximately a
normal distribution with mean α and variance
[ (α)]2
n{ (α)   (α) − [  (α)]2}
.
15. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with uknown mean μ and known
variance σ2, and the prior p.d.f. of μ is a positive and differentiable
function over the entire real line. Show that if
n is large, the posterior distribution of μ given that Xi
= xi
(i = 1, . . . , n) will be approximately a normal distribution
with mean xn and variance σ2/n.
16. Suppose that X1, . . . , Xn form a random sample from
the Bernoulli distribution with unknown parameter p, and
the prior p.d.f. of p is a positive and differentiable function
over the interval 0<p <1. Suppose, furthermore, that n
is large, the observed values of X1, . . . , Xn are x1, . . . , xn,
and 0 < xn < 1. Show that the posterior distribution of p
will be approximately a normal distribution with mean xn
and variance xn(1− xn)/n.
17. Let X have the binomial distribution with parameters
n and p. Assume that n is known. Show that the Fisher
information in X is I (p) = n/[p(1− p)].
18. Let X have the negative binomial distribution with
parameters r and p. Assume that r is known. Show that
the Fisher information in X is I (p) = r/[p2(1− p)].
19. Let X have the gamma distribution with parameters n
and θ with θ unknown. Show that the Fisher information
in X is I (θ) = n/θ2.
20. Find the Fisher information matrix about p∗ in Example
8.8.16.
8.9 Supplementary Exercises
1. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with known mean 0 and unknown
variance σ2. Show that
 n
i=1 X2
i/n is the unbiased estimator
of σ2 that has the smallest possible variance for all
possible values of σ2.
2. Prove that if X has the t distribution with one degree
of freedom, then 1/X also has the t distribution with one
degree of freedom.
3. Suppose that U and V are independent random variables,
and that each has the standard normal distribution.
Show that U/V , U/|V |, and |U|/V each has the t distribution
with one degree of freedom.
4. Suppose that X1 and X2 are independent random variables,
and that each has the normal distribution with mean
0 and variance σ2. Show that (X1 + X2)/(X1 − X2) has the
t distribution with one degree of freedom.
5. Suppose that X1, . . . , Xn form a random sample from
the exponential distribution with parameter β. Show that
2β
 n
i=1 Xi has the χ2 distribution with 2n degrees of
freedom.
6. Suppose that X1, . . . , Xn form a random sample from
an unknown probability distribution P on the real line.
Let A be a given subset of the real line, and let θ = P(A).
Construct an unbiased estimator of θ, and specify its variance.
7. Suppose that X1, . . . , Xm form a random sample from
the normal distribution with meanμ1 and variance σ2, and
Y1, . . . , Yn form an independent random sample from the
normal distribution with mean μ2 and variance 2σ2. Let
S2
X
=
 m
i=1(Xi
− Xm)2 and S2
Y
=
 n
i=1(Yi
− Y n)2.
a. For what pairs of values of α and β is αS2
X
+ βS2
Y an
unbiased estimator of σ2?
b. Determine the values of α and β for which αS2
X
+
βS2
Y will be an unbiased estimator with minimum
variance.
8.9 Supplementary Exercises 529
8. Suppose that X1, . . . , Xn+1 form a random sample
from a normal distribution, and let Xn
= 1
n
 n
i=1 Xi and
Tn
=
#
1
n
 n
i=1(Xi
− Xn)2
$1/2
. Determine the value of a
constant k such that the random variable k(Xn+1− Xn)/Tn
will have a t distribution.
9. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with mean μ and variance σ2, and
Y is an independent random variable having the normal
distribution with mean 0 and variance 4σ2. Determine a
function ofX1, . . . , Xn and Y that does not involve μ or σ2
but has the t distribution with n − 1 degrees of freedom.
10. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with mean μ and variance σ2,
where both μ and σ2 are unknown. A confidence interval
for μ is to be constructed with confidence coefficient 0.90.
Determine the smallest value of n such that the expected
squared length of this interval will be less than σ2/2.
11. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with unknown mean μ and unknown
variance σ2. Construct a lower confidence limit
L(X1, . . . , Xn) for μ such that
Pr[μ > L(X1, . . . , Xn)]= 0.99.
12. Consider again the conditions of Exercise 11. Construct
an upper confidence limit U(X1, . . . , Xn) for σ2
such that
Pr[σ2 <U(X1, . . . , Xn)]= 0.99.
13. Suppose that X1, . . . , Xn form a random sample from
the normal distribution with unknown mean θ and known
variance σ2. Suppose also that the prior distribution of θ
is normal with mean μ and variance ν2.
a. Determine the shortest interval I such that Pr(θ ∈
I |x1, . . . , xn) = 0.95, where the probability is calculated
with respect to the posterior distribution of θ,
as indicated.
b. Show that as ν2→∞, the interval I converges to
an interval I
∗ that is a confidence interval for θ with
confidence coefficient 0.95.
14. Suppose that X1, . . . , Xn form a random sample from
the Poisson distribution with unknown mean θ, and let
Y =
 n
i=1 Xi .
a. Determine the value of a constant c such that the
estimator e
−cY is an unbiased estimator of e
−θ .
b. Use the information inequality to obtain a lower
bound for the variance of the unbiased estimator
found in part (a).
15. Suppose that X1, . . . , Xn form a random sample from
a distribution for which the p.d.f. is as follows:
f (x|θ) =
 
θxθ−1 for 0 < x <1,
0 otherwise,
where the value of θ is unknown (θ > 0). Determine the
asymptotic distribution of the M.L.E. of θ. (Note: The
M.L.E. was found in Exercise 9 of Sec. 7.5.)
16. Suppose that a random variableX has the exponential
distribution with mean θ, which is unknown (θ > 0). Find
the Fisher information I (θ) in X.
17. Suppose that X1, . . . , Xn form a random sample from
the Bernoulli distribution with unknown parameter p.
Show that the variance of every unbiased estimator of
(1− p)2 must be at least 4p(1− p)3/n.
18. Suppose that X1, . . . , Xn form a random sample from
the exponential distribution with unknown parameter β.
Construct an efficient estimator that is not identically
equal to a constant, and determine the expectation and
the variance of this estimator.
19. Suppose that X1, . . . , Xn form a random sample from
the exponential distribution with unknown parameter β.
Show that if n is large, the distribution of the M.L.E. of β
will be approximately a normal distribution with mean β
and variance β2/n.
20. Consider again the conditions of Exercise 19, and let
ˆ βn denote the M.L.E. of β.
a. Use the delta method to determine the asymptotic
distribution of 1/ ˆ βn.
b. Show that 1/ ˆ βn
= Xn, and use the central limit theorem
to determine the asymptotic distribution of 1/ ˆ βn.
21. Let X1, . . . , Xn be a random sample from the Poisson
distribution with mean θ. Let Y =
 n
i=1 Xi .
a. Prove that there is no unbiased estimator of 1/θ.
(Hint: Write the equation that is equivalent to
Eθ (r(X)) = 1/θ. Simplify it, and then use what you
know from calculus of infinite series to show that no
function r can satisfy the equation.)
b. Suppose that we wish to estimate 1/θ. Consider
r(Y) = n/(Y + 1) as an estimator of θ. Find the bias
of r(Y), and show that the bias goes to 0 as n→∞.
c. Use the delta method to find the asymptotic (as n→
∞) distribution of n/(Y + 1).
22. LetX1, . . . , Xn be conditionally i.i.d. with the uniform
distribution on the interval [0, θ]. Let Yn
= max{X1, . . . ,
Xn
}.
a. Find the p.d.f. and the quantile function of Yn/θ.
b. Yn is often used as an estimator of θ even though it
has bias. Compute the bias of Yn as an estimator of θ.
c. Prove that Yn/θ is a pivotal.
d. Find a confidence interval for θ with coefficient γ .
