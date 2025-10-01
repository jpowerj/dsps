(sec-5-6)=
# 5.6 The Normal Distributions

(sec-5-6-0)=
# Overview

*The most widely used model for random variables with continuous distributions is the family of normal distributions. These distributions are the first ones we shall see whose pdf's cannot be integrated in closed form, and hence tables of the CDF or computer programs are necessary in order to compute probabilities and quantiles for normal distributions.*

(sec-5-6-1)=
# 5.6.1 Importance of the Normal Distributions

## Example 5.6.1: Automobile Emissions

Automobile engines emit a number of undesirable pollutants
when they burn gasoline. Lorenzen (1980) studied the amounts of various pollutants
emitted by 46 automobile engines. One class of polutants consists of the oxides of
nitrogen. Figure 5.1 shows a histogram of the 46 amounts of oxides of nitrogen (in
grams per mile) that are reported by Lorenzen (1980). The bars in the histogram
have areas that equal the proportions of the sample of 46 measurements that lie
between the points on the horizontal axis where the sides of the bars stand. For
example, the fourth bar (which runs from 1.0 to 1.2 on the horizontal axis) has
area 0.870 × 0.2 = 0.174, which equals 8/46 because there are eight observations
between 1.0 and 1.2. When we want to make statements about probabilities related
to emissions, we will need a distribution with which to model emissions. The family of
normal distributions introduced in this section will prove to be valuable in examples
such as this.  

## Figure 5.1

Histogram of emissions of oxides of nitrogen for @exm-5-6-1 in grams per mile over a common driving regimen.

The family of normal distributions, which will be defined and discussed in this
section, is by far the single most important collection of probability distributions in statistics. There are three main reasons for this preeminent position of these
distributions.
The first reason is directly related to the mathematical properties of the normal
distributions.We shall demonstrate in this section and in several later sections of this
book that if a random sample is taken from a normal distribution, then the distributions
of various important functions of the observations in the sample can be derived
explicitly and will themselves have simple forms. Therefore, it is a mathematical convenience
to be able to assume that the distribution from which a random sample is
drawn is a normal distribution.
The second reason is that many scientists have observed that the random variables
studied in various physical experiments often have distributions that are approximately
normal. For example, a normal distribution will usually be a close approximation
to the distribution of the heights or weights of individuals in a homogeneous
population of people, corn stalks, or mice, or to the distribution of the tensile
strength of pieces of steel produced by a certain process. Sometimes, a simple transformation
of the observed random variables has a normal distribution.
The third reason for the preeminence of the normal distributions is the central
limit theorem, which will be stated and proved in Sec. 6.3. If a large random sample is
taken from some distribution, then even though this distribution is not itself approximately
normal, a consequence of the central limit theorem is that many important
functions of the observations in the sample will have distributions which are approximately
normal. In particular, for a large random sample from any distribution that
has a finite variance, the distribution of the average of the random sample will be
approximately normal. We shall return to this topic in the next chapter.

# Properties of Normal Distributions

## Definition 5.6.1: Definition and pdf

A random variable X has the normal distribution with mean μ
and variance σ2 (−∞<μ<∞andσ >0) if X has a continuous distribution with the
following p.d.f.:
f (x|μ, σ2) = 1
(2π)1/2σ
exp
 
−1
2


x − μ
σ
 2
 
for −∞< x <∞. (5.6.1)
304 Chapter 5 Special Distributions
We should first verify that the function defined in Eq. (5.6.1) is a p.d.f. Shortly
thereafter, we shall verify that the mean and variance of the distribution with p.d.f.
(5.6.1) are indeed μ and σ2, respectively.
Theorem
5.6.1
The function defined in Eq. (5.6.1) is a p.d.f.
Proof Clearly, the function is nonnegative. We must also show that
  ∞
−∞
f (x|μ, σ2) dx = 1. (5.6.2)
If we let y = (x − μ)/σ , then
  ∞
−∞
f (x|μ, σ2) dx =
  ∞
−∞
1
(2π)1/2 exp


−1
2
y2
 
dy.
We shall now let
I =
  ∞
−∞
exp


−1
2
y2
 
dy. (5.6.3)
Then we must show that I = (2π)1/2.
From Eq. (5.6.3), it follows that
I 2 = I . I =
  ∞
−∞
exp


−1
2
y2
 
dy
  ∞
−∞
exp


−1
2
z2
 
dz
=
  ∞
−∞
  ∞
−∞
exp
 
−1
2
(y2 + z2)
 
dy dz.
We shall now change the variables in this integral from y and z to the polar coordinates
r and θ by letting y = r cos θ and z = r sin θ. Then, since y2 + z2 = r2,
I 2 =
  2π
0
  ∞
0
exp


−1
2
r2
 
r dr dθ = 2π, (5.6.4)
where the inner integral in (5.6.4) is performed by substituting v = r2/2 with dv = rdr,
so the inner integral is
  ∞
0
exp(−v)dv = 1,
and the outer integral is 2π. Therefore, I = (2π)1/2 and Eq. (5.6.2) has been established.
Example
5.6.2
Automobile Emissions. Consider the automobile engines described in Example 5.6.1.
Figure 5.2 shows the histogram from Fig. 5.1 together with the normal p.d.f. having
mean and variance chosen to match the observed data. Although the p.d.f. does not
exactly match the shape of the histogram, it does correspond remarkably well.  
We could verify directly, using integration by parts, that the mean and variance
of the distribution with p.d.f. given by Eq. (5.6.1) are, respectively, μ and σ2. (See
Exercise 26.) However, we need the moment generating function anyway, and then
we can just take two derivatives of the m.g.f. to find the first two moments.
Theorem
5.6.2
Moment Generating Function. The m.g.f. of the distribution with p.d.f. given by
Eq. (5.6.1) is
ψ(t) = exp


μt + 1
2
σ2t2
 
for −∞< t <∞. (5.6.5)

## Figure 5.2

Histogram
of emissions of oxides of
nitrogen for Example 5.6.2
together with a matching
normal p.d.f.
0 0.5
0.2
0.4
0.6
0.8
1.0
1.2
1.0 1.5 2.0 2.5 3.0

Proof By the definition of an m.g.f.,
ψ(t) = E(etX) =
  ∞
−∞
1
(2π)1/2σ
exp
 
tx − (x − μ)2
2σ2
 
dx.
By completing the square inside the brackets (see Exercise 24), we obtain the relation
tx − (x − μ)2
2σ2
= μt + 1
2
σ2t2 − [x − (μ + σ2t)]2
2σ2
.
Therefore,
ψ(t) = C exp


μt + 1
2
σ2t2
 
,
where
C =
  ∞
−∞
1
(2π)1/2σ
exp
 
−[x − (μ + σ2t)]2
2σ2
0
dx.

If we now replace μ with μ + σ2t in Eq. (5.6.1), it follows from Eq. (5.6.2) that C = 1.
Hence, the m.g.f. of the normal distribution is given by Eq. (5.6.5).
We are now ready to verify the mean and variance.

## Theorem 5.6.3: Mean and Variance

The mean and variance of the distribution with p.d.f. given by
Eq. (5.6.1) are μ and σ2, respectively.
Proof The first two derivatives of the m.g.f. in Eq. (5.6.5) are
ψ
 
(t) =
 
μ + σ2t
 
exp


μt + 1
2
σ2t2
 
ψ
  
(t) =
 
[μ + σ2t ]2 + σ2
 
exp


μt + 1
2
σ2t2
 
Plugging t = 0 into each of these derivatives yields
E(X) = ψ
 
(0) = μ and Var(X) = ψ
  
(0) − [ψ
 
(0)]2 = σ2.
Since the m.g.f. ψ(t) is finite for all values of t , all the moments E(Xk) (k =
1, 2, . . .) will also be finite.
306 Chapter 5 Special Distributions
Figure 5.3 The p.d.f. of a
normal distribution.
m   2s m   s m m   s m   2s x
f (x⏐m,s2)
1
√2ps
Example
5.6.3
Stock Price Changes. A popular model for the change in the price of a stock over a
period of time of length u is to say that the price after time u is Su
= S0eZu, where
Zu has the normal distribution with mean μu and variance σ2u. In this formula, S0
is the present price of the stock, and σ is called the volatility of the stock price. The
expected value of Su can be computed from the m.g.f. ψ of Zu:
E(Su) = S0E(eZu) = S0ψ(1) = S0eμu+σ2u/2.  
The Shapes of Normal Distributions It can be seen from Eq. (5.6.1) that the p.d.f.
f (x|μ, σ2) of the normal distribution with mean μ and variance σ2 is symmetric
with respect to the point x = μ. Therefore, μ is both the mean and the median
of the distribution. Furthermore, μ is also the mode of the distribution. In other
words, the p.d.f. f (x|μ, σ2) attains its maximum value at the point x = μ. Finally, by
differentiating f (x|μ, σ2) twice, it can be found that there are points of inflection at
x = μ + σ and at x = μ − σ.
The p.d.f. f (x|μ, σ2) is sketched in Fig. 5.3. It is seen that the curve is “bellshaped.”
However, it is not necessarily true that every arbitrary bell-shaped p.d.f.
can be approximated by the p.d.f. of a normal distribution. For example, the p.d.f. of
a Cauchy distribution, as sketched in Fig. 4.3, is a symmetric bell-shaped curve which
apparently resembles the p.d.f. sketched in Fig. 5.3. However, since no moment of
the Cauchy distribution—not even the mean—exists, the tails of the Cauchy p.d.f.
must be quite different from the tails of the normal p.d.f.
Linear Transformations We shall now show that if a random variable X has a normal
distribution, then every linear function of X will also have a normal distribution.
Theorem
5.6.4
If X has the normal distribution with mean μ and variance σ2 and if Y = aX + b,
where a and b are given constants and a  = 0, then Y has the normal distribution with
mean aμ + b and variance a2σ2.
Proof The m.g.f. ψ of X is given by Eq. (5.6.5). If ψY denotes the m.g.f. of Y , then
ψY (t) = ebtψ(at) = exp
 
(aμ + b)t + 1
2
a2σ2t2
 
for −∞< t <∞.
5.6 The Normal Distributions 307
By comparing this expression for ψY with the m.g.f. of a normal distribution given in
Eq. (5.6.5), we see that ψY is the m.g.f. of the normal distribution with mean aμ + b
and variance a2σ2. Hence, Y must have this normal distribution.
The Standard Normal Distribution
Definition
5.6.2
Standard Normal Distribution. The normal distribution with mean 0 and variance 1 is
called the standard normal distribution. The p.d.f. of the standard normal distribution
is usually denoted by the symbol φ, and the c.d.f. is denoted by the symbol  . Thus,
φ(x) = f (x|0, 1) = 1
(2π)1/2 exp


−1
2
x2
 
for −∞< x <∞ (5.6.6)
and
 (x) =
  x
−∞
φ(u) du for −∞< x <∞, (5.6.7)
where the symbol u is used in Eq. (5.6.7) as a dummy variable of integration.
The c.d.f.  (x) cannot be expressed in closed form in terms of elementary
functions. Therefore, probabilities for the standard normal distribution or any other
normal distribution can be found only by numerical approximations or by using a
table of values of  (x) such as the one given at the end of this book. In that table, the
values of  (x) are given only for x ≥ 0. Most computer packages that do statistical
analysis contain functions that compute the c.d.f. and the quantile function of the
standard normal distribution. Knowing the values of  (x) for x ≥ 0 and  
−1(p) for
0.5< p <1 is sufficient for calculating the c.d.f. and the quantile function of any
normal distribution at any value, as the next two results show.
Theorem
5.6.5
Consequences of Symmetry. For all x and all 0<p <1,
 (−x) = 1−  (x) and  
−1(p)=− 
−1(1− p). (5.6.8)
Proof Since the p.d.f. of the standard normal distribution is symmetric with respect
to the point x = 0, it follows that Pr(X ≤ x) = Pr(X≥−x) for every number x (−∞<
x <∞). Since Pr(X ≤ x) =  (x) and Pr(X ≥−x) = 1−  (−x), we have the first
equation in Eq. (5.6.8). The second equation follows by letting x =  
−1(p) in the
first equation and then applying the function  
−1 to both sides of the equation.
Theorem
5.6.6
Converting Normal Distributions to Standard. Let X have the normal distribution with
mean μ and variance σ2. Let F be the c.d.f. of X. Then Z = (X − μ)/σ has the
standard normal distribution, and, for all x and all 0<p <1,
F(x) =  


x − μ
σ
 
, (5.6.9)
F
−1(p) = μ + σ 
−1(p). (5.6.10)
Proof It follows immediately from Theorem 5.6.4 that Z = (X − μ)/σ has the standard
normal distribution. Therefore,
F(x) = Pr(X ≤ x) = Pr


Z ≤ x − μ
σ
 
,
which establishes Eq. (5.6.9). For Eq. (5.6.10), let p = F(x) in Eq. (5.6.9) and then
solve for x in the resulting equation.

## Example 5.6.4: Determining Probabilities for a Normal Distribution

Suppose that X has the normal
distribution with mean 5 and standard deviation 2. We shall determine the value of
Pr(1<X <8).
If we let Z = (X − 5)/2, then Z will have the standard normal distribution and
Pr(1<X <8) = Pr


1− 5
2
<
X − 5
2
<
8 − 5
2
 
= Pr(−2<Z <1.5).
Furthermore,
Pr(−2<Z <1.5) = Pr(Z < 1.5) − Pr(Z ≤−2)
=  (1.5) −  (−2)
=  (1.5) − [1−  (2)].
From the table at the end of this book, it is found that  (1.5) = 0.9332 and  (2) =
0.9773. Therefore,
Pr(1<X <8) = 0.9105.  
Example
5.6.5
Quantiles of Normal Distributions. Suppose that the engineers who collected the
automobile emissions data in Example 5.6.1 are interested in finding out whether
most engines are serious polluters. For example, they could compute the 0.05 quantile
of the distribution of emissions and declare that 95 percent of the engines of the
type tested exceed this quantile. Let X be the average grams of oxides of nitrogen
per mile for a typical engine. Then the engineers modeled X as having a normal
distribution. The normal distribution plotted in Fig. 5.2 has mean 1.329 and standard
deviation 0.4844. The c.d.f. of X would then be F(x) =  ([x − 1.329]/0.4844), and
the quantile function would be F
−1(p) = 1.329 + 0.4844 
−1(p), where  
−1 is the
quantile function of the standard normal distribution, which can be evaluated using
a computer or from tables. To find  
−1(p) from the table of  , find the closest value
to p in the  (x) column and read the inverse from the x column. Since the table only
has values ofp>0.5, we use Eq. (5.6.8) to conclude that 
−1(0.05)=− 
−1(0.95). So,
look up 0.95 in  (x) column (halfway between 0.9495 and 0.9505) to find x = 1.645
(halfway between 1.64 and 1.65) and conclude that  
−1(0.05)=−1.645. The 0.05
quantile of X is then 1.329 + 0.4844 × (−1.645) = 0.5322.  
Comparisons of Normal Distributions
The p.d.f.’s of three normal distributions are sketched in Fig. 5.4 for a fixed value of
μ and three different values of σ (σ = 1/2, 1, and 2). It can be seen from this figure
that the p.d.f. of a normal distribution with a small value of σ has a high peak and
is very concentrated around the mean μ, whereas the p.d.f. of a normal distribution
with a larger value of σ is relatively flat and is spread out more widely over the real
line.
An important fact is that every normal distribution contains the same total
amount of probability within one standard deviation of its mean, the same amount
within two standard deviations of its mean, and the same amount within any other
fixed number of standard deviations of its mean. In general, if X has the normal distribution
with mean μ and variance σ2, and if Z has the standard normal distribution,
then for k > 0,
pk
= Pr(|X − μ| ≤ kσ) = Pr(|Z| ≤ k).
In Table 5.2, the values of this probability pk are given for various values of k.
These probabilities can be computed from a table of   or using computer programs.
5.6 The Normal Distributions 309
Figure 5.4 The normal p.d.f.
for μ = 0 and σ = 1/2, 1, 2.
 4  3  2  1 0 1 2 3 4
s   1
s   2
s   1
2
Table 5.2 Probabilities that normal
random variables are within
k standard deviations of
their means
k pk
1 0.6826
2 0.9544
3 0.9974
4 0.99994
5 1− 6 × 10−7
10 1− 2 × 10−23
Although the p.d.f. of a normal distribution is positive over the entire real line, it can
be seen from this table that the total amount of probability outside an interval of
four standard deviations on each side of the mean is only 0.00006.
Linear Combinations of Normally Distributed Variables
In the next theorem and corollary, we shall prove the following important result:
Every linear combination of random variables that are independent and normally
distributed will also have a normal distribution.
Theorem
5.6.7
If the random variables X1, . . . , Xk are independent and if Xi has the normal distribution
with mean μi and variance σ2
i (i = 1, . . . , k), then the sum X1 + . . . + Xk has
the normal distribution with mean μ1 + . . . + μk and variance σ2
1
+ . . . + σ2
k.
310 Chapter 5 Special Distributions
Proof Let ψi(t) denote the m.g.f. of Xi for i = 1, . . . , k, and let ψ(t) denote the m.g.f.
of X1 + . . . + Xk. Since the variables X1, . . . , Xk are independent, then
ψ(t) =
!k
i=1
ψi(t) =
!k
i=1
exp


μi t + 1
2
σ2
i t2
 
= exp
  
 k
i=1
μi
 
t + 1
2
 
 k
i=1
σ2
i
 
t2
 
for −∞< t <∞.
From Eq. (5.6.5), the m.g.f. ψ(t) can be identified as the m.g.f. of the normal distribution
for which the mean is
 k
i=1 μi and the variance is
 k
i=1 σ2
i . Hence, the
distribution of X1 + . . . + Xk must be as stated in the theorem.
The following corollary is now obtained by combining Theorems 5.6.4 and 5.6.7.

## Corollary 5.6.1

If the random variablesX1, . . . , Xk are independent, ifXi has the normal distribution
with mean μi and variance σ2
i (i = 1, . . . , k), and if a1, . . . , ak and b are constants
for which at least one of the values a1, . . . , ak is different from 0, then the variable
a1X1 + . . . + akXk
+ b has the normal distribution with mean a1μ1 + . . . + akμk
+ b
and variance a2
1σ2
1
+ . . . + a2
kσ2
k.

## Example 5.6.6: Heights of Men and Women

Suppose that the heights, in inches, of the women
in a certain population follow the normal distribution with mean 65 and standard
deviation 1, and that the heights of the men follow the normal distribution with mean
68 and standard deviation 3. Suppose also that one woman is selected at random and,
independently, one man is selected at random. We shall determine the probability
that the woman will be taller than the man.
Let W denote the height of the selected woman, and let M denote the height of
the selected man. Then the differenceW −M has the normal distribution with mean
65 − 68=−3 and variance 12 + 32 = 10. Therefore, if we let
Z = 1
101/2
(W −M + 3),
then Z has the standard normal distribution. It follows that
Pr(W >M) = Pr(W −M >0)
= Pr


Z >
3
101/2
 
= Pr(Z > 0.949)
= 1−  (0.949) = 0.171.
Thus, the probability that the woman will be taller than the man is 0.171.  
Averages of random samples of normal random variables figure prominently in
many statistical calculations. To fix notation, we start with a general defintion.

## Definition 5.6.3: Sample Mean

Let X1, . . . , Xn be random variables. The average of these n random
variables, 1
n
 n
i=1 Xi , is called their sample mean and is commonly denoted Xn.
The following simple corollary to Corollary 5.6.1 gives the distribution of the
sample mean of a random sample of normal random variables.

## Corollary 5.6.2

Suppose that the random variables X1, . . . ,Xn form a random sample from the
normal distribution with mean μ and variance σ2, and let Xn denote their sample
mean. Then Xn has the normal distribution with mean μ and variance σ2/n.
Proof Since Xn
= n
i=1(1/n)Xi , it follows from Corollary 5.6.1 that the distribution
of Xn is normal with mean
 n
i=1(1/n)μ = μ and variance
 n
i=1(1/n)2σ2 = σ2/n.

## Example 5.6.7: Determining a Sample Size

Suppose that a random sample of size n is to be taken
from the normal distribution with mean μ and variance 9. (The heights of men
in Example 5.6.6 have such a distribution with μ = 68.) We shall determine the
minimum value of n for which
Pr(|Xn
− μ| ≤ 1) ≥ 0.95.
It is known from Corollary 5.6.2 that the sample mean Xn will have the normal
distribution for which the mean is μ and the standard deviation is 3/n1/2. Therefore,
if we let
Z = n1/2
3
(Xn
− μ),
then Z will have the standard normal distribution. In this example, n must be chosen
so that
Pr(|Xn
− μ| ≤ 1) = Pr
 
|Z| ≤ n1/2
3
 
≥ 0.95. (5.6.11)
For each positive number x, it will be true that Pr(|Z| ≤ x) ≥ 0.95 if and only if
1−  (x) = Pr(Z > x) ≤ 0.025. From the table of the standard normal distribution at
the end of this book, it is found that 1−  (x) ≤ 0.025 if and only if x ≥ 1.96.Therefore,
the inequality in relation (5.6.11) will be satisfied if and only if
n1/2
3
≥ 1.96.
Since the smallest permissible value of n is 34.6, the sample size must be at least 35
in order that the specified relation will be satisfied.  
Example
5.6.8
Interval for Mean. Consider a popluation with a normal distribution such as the
heights of men in Example 5.6.6. Suppose that we are not willing to specify the
precise distribution as we did in that example, but rather only that the standard
deviation is 3, leaving the mean μ unspecified. If we sample a number of men from
this population, we could try to use their sampled heights to give us some idea what μ
equals. A popular form of statistical inference that will be discussed in Sec. 8.5 finds
an interval that has a specified probability of containing μ. To be specific, suppose
that we observe a random sample of size n from the normal distribution with mean
μ and standard deviation 3. Then, Xn has the normal distribution with mean μ and
standard deviation 3/n1/2 as in Example 5.6.7. Similarly, we can define
Z = n1/2
3
(Xn
− μ),
which then has the standard normal distribution. Hence,
0.95 = Pr(|Z| < 1.96) = Pr


|Xn
− μ| < 1.96
3
n1/2
 
. (5.6.12)
312 Chapter 5 Special Distributions
It is easy to verify that
|Xn
− μ| < 1.96
3
n1/2 if and only if
Xn
− 1.96
3
n1/2
<μ<Xn
+ 1.96
3
n1/2
. (5.6.13)
The two inequalities in Eq. (5.6.13) hold if and only if the interval


Xn
− 1.96
3
n1/2
, Xn
+ 1.96
3
n1/2
 
(5.6.14)

contains the value of μ. It follows from Eq. (5.6.12) that the probability is 0.95 that
the interval in (5.6.14) contains μ. Now, suppose that the sample size is n = 36. Then
the half-width of the interval (5.6.14) is then 3/361/2 = 0.98. We will not know the
endpoints of the interval until after we observe Xn. However, we know now that the
interval
 
Xn
− 0.98, Xn
+ 0.98
 
has probability 0.95 of containing μ.  

# The Lognormal Distributions

It is very common to use normal distributions to model logarithms of random variables.
For this reason, a name is given to the distribution of the original random
variables before transforming.

## Definition 5.6.4: Lognormal Distribution

If log(X) has the normal distribution with mean μ and variance
σ2, we say that X has the lognormal distribution with parameters μ and σ2.


## Example 5.6.9: Failure Times of Ball Bearings

Products that are subject to wear and tear are generally
tested for endurance in order to estimate their useful lifetimes. Lawless (1982,
example 5.2.2) describes data taken from Lieblein and Zelen (1956), which are measurements
of the numbers of millions of revolutions before failure for 23 ball bearings.
The lognormal distribution is one popular model for times until failure. Figure 5.5
shows a histogram of the 23 lifetimes together with a lognormal p.d.f. with parameters
chosen to match the observed data. The bars of the histogram in Fig. 5.5 have
areas that equal the proportions of the sample that lie between the points on the
horizontal axis where the sides of the bars stand. Suppose that the engineers are interested
in knowing how long to wait until there is a 90 percent chance that a ball



bearing will have failed. Then they want the 0.9 quantile of the distribution of lifetimes.
Let X be the time to failure of a ball bearing. The lognormal distribution of
X plotted in Fig. 5.5 has parameters 4.15 and 0.53342. The c.d.f. of X would then be
F(x) =  ([log(x) − 4.15]/0.5334), and the quantile function would be
F
−1(p) = e4.15+0.5334 
−1(p),
where  
−1 is the quantile function of the standard normal distribution.With p = 0.9,
we get  
−1(0.9) = 1.28 and F
−1(0.9) = 125.6.  

The moments of a lognormal random variable are easy to compute based on the
m.g.f. of a normal distribution. If Y = log(X) has the normal distribution with mean
μ and variance σ2, then the m.g.f. of Y is ψ(t) = exp(μt + 0.5σ2t2). However, the
definition of ψ is ψ(t) = E(etY ). Since Y = log(X), we have
ψ(t) = E(etY ) = E(et log(X)) = E(Xt ).
It follows that E(Xt) = ψ(t) for all real t . In particular, the mean and variance of X
are
E(X) = ψ(1) = exp(μ + 0.5σ2), (5.6.15)
Var(X) = ψ(2) − ψ(1)2 = exp(2μ + σ2)[exp(σ 2) − 1].

## Figure 5.5

Histogram of
lifetimes of ball bearings and
fitted lognormal p.d.f. for
Example 5.6.9.

## Example 5.6.10: Stock and Option Prices

Consider a stock like the one in Example 5.6.3 whose current
price is S0. Suppose that the price at u time units in the future is Su
= S0eZu, where
Zu has the normal distribution with mean μu and variance σ2u. Note that S0eZu =
eZu
+log(S0) and Zu
+ log(S0) has the normal distribution with mean μu + log(S0) and
variance σ2u. So Su has the lognormal distribution with parameters μu + log(S0) and
σ2u.
Black and Scholes (1973) developed a pricing scheme for options on stocks whose
prices follow a lognormal distribution. For the remainder of this example, we shall
consider a single time u and write the stock price as Su
= S0eμu+σu1/2Z, where Z has
the standard normal distribution. Suppose that we need to price the option to buy
one share of the above stock for the price q at a particular time u in the future. As
in Example 4.1.14 on page 214, we shall use risk-neutral pricing. That is, we force
the present value of E(Su) to equal S0. If u is measured in years and the risk-free
interest rate is r per year, then the present value of E(Su) is e
−ruE(Su). (This assumes
that compounding of interest is done continuously instead of just once as it was in
Example 4.1.14. The effect of continuous compounding is examined in Exercise 25.)
But E(Su) = S0eμu+σ2u/2. Setting S0 equal to e
−ruS0eμu+σ2u/2 yields μ = r − σ2/2
when doing risk-neutral pricing.
Now we can determine a price for the specified option. The value of the option
at time u will be h(Su), where
h(s) =
 
s − q if s > q,
0 otherwise.
Set μ = r − σ2/2, and it is easy to see that h(Su) > 0 if and only if
Z >
log
 

We shall refer to the constant on the right-hand side of Eq. (5.6.16) as c. The
risk-neutral price of the option is the present value of E(h(Su)), which equals

To compute the integral in Eq. (5.6.17), split the integrand into two parts at the −q.
The second integral is then just a constant times the integral of a normal p.d.f., namely,

The first integral in Eq. (5.6.17), is

−z2/2+σu1/2z dz.
This can be converted into the integral of a normal p.d.f. times a constant by completing
the square (see Exercise 24).

The result of completing the square is

Finally, combine the two integrals into the option price, using the fact that 1−  (x) =

This is the famous Black-Scholes formula for pricing options. As a simple example,
suppose that q = S0, r = 0.06 (6 percent interest), u = 1 (one year wait), and
σ = 0.1. Then (5.6.18) says that the option price should be 0.0746S0. If the distribution
of Su is different from the form used here, simulation techniques (see Chapter 12)
can be used to help price options.  

The p.d.f.’s of the lognormal distributions will be found in Exercise 17 of this
section. The c.d.f. of each lognormal distribution is easily constructed from the
standard normal c.d.f.  . Let X have the lognormal distribution with parameters
μ and σ2. Then

Pr(X ≤ x) = Pr(log(X) ≤ log(x)) =  


log(x) − μ
σ
 
.
The results from earlier in this section about linear combinations of normal random
variables translate into results about products of powers of lognormal random variables.
Results about sums of independent normal random variables translate into
results about products of independent lognormal random variables.

# Summary

We introduced the family of normal distributions. The parameters of each normal
distribution are its mean and variance. A linear combination of independent normal
random variables has the normal distribution with mean equal to the linear combination
of the means and variance determined by Corollary 4.3.1. In particular, if X
has the normal distribution with mean μ and variance σ2, then (X − μ)/σ has the
standard normal distribution (mean 0 and variance 1). Probabilities and quantiles for
normal distributions can be obtained from tables or computer programs for standard
normal probabilities and quantiles. For example, ifX has the normal distribution with
mean μ and variance σ2, then the c.d.f. of X is F(x) =  ([x − μ]/σ ) and the quantile
function of X is F
−1(p) = μ +  
−1(p)σ , where   is the standard normal c.d.f.

# Exercises

1. Find the 0.5, 0.25, 0.75, 0.1, and 0.9 quantiles of the
standard normal distribution.

2. Suppose that X has the normal distribution for which
the mean is 1 and the variance is 4. Find the value of each
of the following probabilities:
a. Pr(X ≤ 3) b. Pr(X > 1.5)
c. Pr(X = 1) d. Pr(2<X <5)
e. Pr(X ≥ 0) f. Pr(−1<X <0.5)
g. Pr(|X| ≤ 2) h. Pr(1≤−2X + 3 ≤ 8)
3. If the temperature in degrees Fahrenheit at a certain
location is normally distributed with a mean of 68 degrees
and a standard deviation of 4 degrees, what is the distribution
of the temperature in degrees Celsius at the same
location?
4. Find the 0.25 and 0.75 quantiles of the Fahrenheit temperature
at the location mentioned in Exercise 3.
5. LetX1, X2, andX3 be independent lifetimes of memory
chips. Suppose that each Xi has the normal distribution
with mean 300 hours and standard deviation 10 hours.
Compute the probability that at least one of the three
chips lasts at least 290 hours.
6. If the m.g.f. of a random variable X is ψ(t) = et2 for
−∞< t <∞, what is the distribution of X?
7. Suppose that the measured voltage in a certain electric
circuit has the normal distribution with mean 120 and
standard deviation 2. If three independent measurements
of the voltage are made, what is the probability that all
three measurements will lie between 116 and 118?
8. Evaluate the integral
 ∞
0 e
−3x2
dx.
9. A straight rod is formed by connecting three sections
A, B, and C, each of which is manufactured on a different
machine. The length of sectionA, in inches, has the normal
distribution with mean 20 and variance 0.04. The length of
sectionB, in inches, has the normal distribution with mean
14 and variance 0.01.The length of sectionC, in inches, has
the normal distribution with mean 26 and variance 0.04.
As indicated in Fig. 5.6, the three sections are joined so
that there is an overlap of 2 inches at each connection.
Suppose that the rod can be used in the construction of an
airplane wing if its total length in inches is between 55.7
and 56.3.What is the probability that the rod can be used?
2 2
A C
B
Figure 5.6 Sections of the rod in Exercise 9.
10. If a random sample of 25 observations is taken from
the normal distribution with mean μ and standard deviation
2, what is the probability that the sample mean will
lie within one unit of μ?

11. Suppose that a random sample of size n is to be taken
from the normal distribution with mean μ and standard
deviation 2. Determine the smallest value of n such that
Pr(|Xn− μ| < 0.1) ≥ 0.9.

12.

* a. Sketch the c.d.f.   of the standard normal distribution from the values given in the table at the end of this book.
* b. From the sketch given in part (a) of this exercise, sketch the c.d.f. of the normal distribution for which the mean is −2 and the standard deviation is 3.

13. Suppose that the diameters of the bolts in a large box
follow a normal distribution with a mean of 2 centimeters
and a standard deviation of 0.03 centimeter. Also, suppose
that the diameters of the holes in the nuts in another large
box follow the normal distribution with a mean of 2.02
centimeters and a standard deviation of 0.04 centimeter.
A bolt and a nut will fit together if the diameter of the
hole in the nut is greater than the diameter of the bolt and
the difference between these diameters is not greater than
0.05 centimeter. If a bolt and a nut are selected at random,
what is the probability that they will fit together?
14. Suppose that on a certain examination in advanced
mathematics, students from university A achieve scores
that are normally distributed with a mean of 625 and a
variance of 100, and students from university B achieve
scores which are normally distributed with a mean of 600
and a variance of 150. If two students from university A
and three students from university B take this examination,
what is the probability that the average of the scores
of the two students from university A will be greater than
the average of the scores of the three students from university
B? Hint: Determine the distribution of the difference
between the two averages.
15. Suppose that 10 percent of the people in a certain
population have the eye disease glaucoma. For persons
who have glaucoma, measurements of eye pressure X will
be normally distributed with a mean of 25 and a variance
of 1. For persons who do not have glaucoma, the pressure
X will be normally distributed with a mean of 20 and a
variance of 1. Suppose that a person is selected at random
from the population and her eye pressure X is measured.
a. Determine the conditional probability that the person
has glaucoma given that X = x.
b. For what values of x is the conditional probability in
part (a) greater than 1/2?

16. Suppose that the joint p.d.f. of two random variables
X and Y is
f (x, y) = 1
2π
e
−(1/2)(x2+y2) for −∞< x <∞
and −∞< y <∞.

17. Consider a random variable X having the lognormal
distribution with parameters μ and σ2. Determine the
p.d.f. of X.

18. Suppose that the random variables X and Y are independent
and that each has the standard normal distribution.
Show that the quotient X/Y has the Cauchy distribution.
19. Suppose that the measurementX of pressure made by
a device in a particular system has the normal distribution
with mean μ and variance 1, where μ is the true pressure.
Suppose that the true pressure μ is unknown but has the
uniform distribution on the interval [5, 15]. If X = 8 is
observed, find the conditional p.d.f. of μ given X = 8.
20. Let X have the lognormal distribution with parameters
3 and 1.44. Find the probability that X ≤ 6.05.
21. Let X and Y be independent random variables such
that log(X) has the normal distribution with mean 1.6 and
variance 4.5 and log(Y ) has the normal distribution with
mean 3 and variance 6. Find the distribution of the product
XY.

22. Suppose that X has the lognormal distribution with
parameters μ and σ2. Find the distribution of 1/X.
23. Suppose that X has the lognormal distribution with
parameters 4.1 and 8. Find the distribution of 3X1/2.
24. The method of completing the square is used several
times in this text. It is a useful method for combining
several quadratic and linear polynomials into a perfect
square plus a constant. Prove the following identity, which
is one general form of completing the square:

25. In Example 5.6.10, we considered the effect of continuous
compounding of interest. Suppose that S0 dollars
earn a rate of r per year componded continuously for u
years. Prove that the principal plus interest at the end of
this time equals S0eru. Hint: Suppose that interest is compounded
n times at intervals of u/n years each. At the end
of each of the n intervals, the principal gets multiplied by
1+ ru/n. Take the limit of the result as n→∞.
26. Let X have the normal distribution whose p.d.f. is
given by (5.6.6). Instead of using the m.g.f., derive the
variance of X using integration by parts.


