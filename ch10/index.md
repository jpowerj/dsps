# Categorical Data and Nonparametric Methods

## Tests of Goodness-of-Fit {#sec-10-1}

In some problems, we have one specific distribution in mind for the data we will
observe. If that one distribution is not appropriate, we do not necessarily have a
parametric family of alternative distributions in mind. In these cases, and others,we
can still test the null hypothesis that the data come from the one specific distribution
against the alternative hypothesis that the data do not come from that distribution.

## Description of Nonparametric Problems

Example 10.1.1: Failure Times of Ball Bearings.

In Example 5.6.9, we observed the failure times of 23
ball bearings, and we modeled the logarithms of these failure times as normal random
variables. Suppose that we are not so confident that the normal distribution is a good
model for the logarithms of the failure times. Is there a way to test the null hypothesis
that a normal distribution is a good model against the alternative that no normal
distribution is a good model? Is there a way to estimate features of the distribution
of failure times (such as the median, variance, etc.) if we are unwilling to model the
data as normal random variables?  
In each of the problems of estimation and testing hypotheses that we considered
in Chapters 7, 8, and 9, wehave assumed that the observations that are available to the
statistician come from distributions for which the exact form is known, even though
the values of some parameters are unknown. For example, it might be assumed
that the observations form a random sample from a Poisson distribution for which
the mean is unknown, or it might be assumed that the observations come from
two normal distributions for which the means and variances are unknown. In other
words, we have assumed that the observations come from a certain parametric family
of distributions, and a statistical inference must be made about the values of the
parameters defining that family.
In many of the problems to be discussed in this chapter, we shall not assume that
the available observations come from a particular parametric family of distributions.
Rather, we shall study inferences that can be made about the distribution from which
the observations come, without making special assumptions about the form of that
distribution. As one example, we might simply assume that the observations form
624
10.1 Tests of Goodness-of-Fit 625
a random sample from a continuous distribution, without specifying the form of
this distribution any further, and we might then investigate the possibility that this
distribution is a normal distribution. As a second example, we might be interested
in making an inference about the value of the median of the distribution from which
the sample was drawn, and we might assume only that this distribution is continuous.
As a third example, we might be interested in investigating the possibility that two
independent random samples actually come from the same distribution, and we
might assume only that both distributions from which the samples are taken are
continuous.
Problems in which the possible distributions of the observations are not restricted
to a specific parametric family are called nonparametric problems, and the
statistical methods that are applicable in such problems are called nonparametric
methods.
Categorical Data
Example
10.1.2
Blood Types. In Example 5.9.3, we learned about a study of blood types among a
sample of 6004 white Californians. Suppose that the actual counts of people with the
four blood types are given in Table 10.1. We might be interested in whether or not
these data are consistent with a theory that predicts a particular set of probabilities
for the blood types. Table 10.2 gives theoretical probabilities for the four blood types.
How can we go about testing the null hypothesis that the theoretical probabilities in
Table 10.2 are the probabilities with which the data in Table 10.1 were sampled?  
In this section and the next four sections, we shall consider statistical problems
based on data such that each observation can be classified as belonging to one of
a finite number of possible categories or types. Observations of this type are called
categorical data. Since there are only a finite number of possible categories in these
problems, and since we are interested in making inferences about the probabilities of
these categories, these problems actually involve just a finite number of parameters.
However, as we shall see, methods based on categorical data can be usefully applied
in both parametric and nonparametric problems.
Table 10.1 Counts of blood types for white
Californians
A B AB O
2162 738 228 2876
Table 10.2 Theoretical probabilities of blood
types for white Californians
A B AB O
1/3 1/8 1/24 1/2
626 Chapter 10 Categorical Data and Nonparametric Methods
The χ2 Test
Suppose that a large population consists of items of k different types, and let pi
denote the probability that an item selected at random will be of type i (i = 1, . . . , k).
Example 10.1.2 is of this type with k = 4. Of course, pi
≥ 0 for i =   1, . . . , k and k
i=1 pi
= 1. Let p0
1, . . . , p0
k be specific numbers such that p0
i > 0 for i = 1, . . . , k
and
 k
i=1 p0
i
= 1, and suppose that the following hypotheses are to be tested:
H0: pi
= p0
i for i = 1, . . . , k,
H1: pi
 = p0
i for at least one value of i.
(10.1.1)
We shall assume that a random sample of size n is to be taken from the given
population. That is, n independent observations are to be taken, and there is probability
pi that each observation will be of type i (i = 1, . . . , k). On the basis of these
n observations, the hypotheses (10.1.1) are to be tested.
For i = 1, . . . , k, we shall letNi denote the number of observations in the random
sample that are of type i. Thus, N1, . . . , Nk   are nonnegative integers such that k
i=1 Ni
= n. Indeed, (N1, . . . , Nn) has the multinomial distribution (see Sec. 5.9)
with parameters n and p = (p1, . . . , pk). When the null hypothesis H0 is true, the
expected number of observations of type i is np0
i (i = 1, . . . , k). The difference
between the actual number of observationsNi and the expected number np0
i will tend
to be smaller whenH0 is true than whenH0 is not true. It seems reasonable, therefore,
to base a test of the hypotheses (10.1.1) on values of the differences Ni
− np0
i for
i = 1, . . . , k and reject H0 when the magnitudes of these differences are relatively
large.
In 1900, Karl Pearson proved the following result, whose proof will not be given
here.
Theorem
10.1.1
χ2 Statistic. The following statistic
Q =
 k
i=1
(Ni
− np0
i )2
np0
i
(10.1.2)
has the property that ifH0 is true and the sample size n→∞, thenQconverges in distribution
to the χ2 distribution with k − 1 degrees of freedom. (See Definition 6.3.1.)
Theorem 10.1.1 says that if H0 is true and the sample size n is large, the distribution
of Q will be approximately the χ2 distribution with k − 1 degrees of freedom. The
discussion that we have presented indicates that H0 should be rejected when Q ≥ c,
where c is an appropriate constant. If it is desired to carry out the test at the level of
significance α0, then c should be chosen to be the 1− α0 quantile of the χ2 distribution
with k − 1 degrees of freedom. This test is called the χ2 test of goodness-of-fit.
Note: General form of χ2 test statistic. The form of the statistic Q in (10.1.2) is
common to all χ2 tests including those that will be introduced later in this chapter.
The form is a sum of terms, each of which is the square of the difference bet
 ween an observed count and an expected count divided by the expected count:
(observed−expected)2/expected. The expected counts are computed under the
assumption that the null hypothesis is true.
Whenever the value of each expected count, np0
i (i = 1, . . . , k), is not too small,
the χ2 distribution will be a good approximation to the actual distribution of Q.
10.1 Tests of Goodness-of-Fit 627
Specifically, the approximation will be very good if np0
i
≥ 5 for i = 1, . . . , k, and the
approximation should still be satisfactory if np0
i
≥ 1.5 for i = 1, . . . , k.
We shall now illustrate the use of the χ2 test of goodness-of-fit by some examples.
Example
10.1.3
Blood Types. In Example 10.1.2, we have specified a hypothetical vector of probabilities
(p0
1, . . . , p0
4) for the four blood types in Table 10.2. We can use the data in
Table 10.1 to test the null hypothesisH0 that the probabilities (p1, . . . , p4) of the four
blood types equal (p0
1, . . . , p0
4). The four expected counts under H0 are
np0
1
= 6004 × 1
3
= 2001.3, np 0
2
= 6004 × 1
8
= 750.5,
np0
3
= 6004 × 1
24
= 250.2, and np0
4
= 6004 × 1
2
= 3002.0.
The χ2 test statistic is then
Q = (2162 − 2001.3)2
2001.3
+ 738 − 750.5
750.5
+ (228 − 250.2)2
250.2
+ (2876 − 3002.0)2
3002.0
= 20.37.
To testH0 at level α0,we would compareQto the 1− α0 quantile of the χ2 distribution
with three degrees of freedom. Alternatively, we can compute the p-value, which
would be the smallest α0 at which we could rejectH0. In the case of the χ2 goodness of
fit test, the p-value equals 1− X2
k−1(Q), where X2
k−1 is the c.d.f. of the χ2 distribution
with k − 1 degrees of freedom. In this example, k = 4 and the p-value is 1.42 × 10−4.
 
Example
10.1.4
Montana Outlook Poll. The Bureau of Business and Economic Research at the University
of Montana conducted a poll of opinions of Montana residents in May 1992.
Among other things, respondents were asked whether their personal financial status
was worse, the same, or better than one year ago. Table 10.3 displays some results.We
might be interested in whether the respondents’ answers are uniformly distributed
over the three possible responses. That is, we can test the null hypothesis that the
probabilities of the three responses are all equal to 1/3.We calculate
Q = (58 − 189/3)2
189/3
+ (64 − 189/3)2
189/3
+ (67 − 189/3)2
189/3
= 0.6667.
Since 0.6667 is the 0.283 quantile of the χ2 distribution with two degrees of freedom,
we would only reject the null at levels greater than 1− 0.283 = 0.717.  
Example
10.1.5
Testing Hypotheses about a Proportion. Suppose that the proportion p of defective
items in a large population of manufactured items is unknown and that the following
Table 10.3 Responses to personal financial
status question from Montana
Outlook Poll
Worse Same Better Total
58 64 67 189
628 Chapter 10 Categorical Data and Nonparametric Methods
hypotheses are to be tested:
H0: p = 0.1,
H1: p  = 0.1.
(10.1.3)
Suppose also that in a random sample of 100 items, it is found that 16 are defective.
We shall test the hypotheses (10.1.3) by carrying out a χ2 test of goodness-of-fit.
Since there are only two types of items in this example, namely, defective items
and nondefective items, we know that k = 2. Furthermore, if we let p1 denote the
unknown proportion of defective items and let p2 denote the unknown proportion
of nondefective items, then the hypotheses (10.1.3) can be rewritten in the following
form:
H0: p1 = 0.1 and p2 = 0.9,
H1: The hypothesis H0 is not true.
(10.1.4)
For the sample size n = 100, the expected number of defective items if H0 is
true is np0
1
= 10, and the expected number of nondefective items is np0
2
= 90. Let N1
denote the number of defective items in the sample, and let N2 denote the number
of nondefective items in the sample. Then, when H0 is true, the distribution of the
statistic Q defined by Eq. (10.1.2) will be approximately the χ2 distribution with one
degree of freedom.
In this example, N1 = 16 and N2 = 84, and it is found that the value of Q is 4. It
can now be determined, either from interpolation in a table of the χ2 distribution
with one degree of freedom or from statistical software, that the tail area (p-value)
corresponding to the valueQ= 4 is approximately 0.0455. Hence, the null hypothesis
H0 would be rejected at levels of significance greater than 0.0455, but not at smaller
levels. For hypotheses about a single proportion, we developed tests in Sec. 9.1. (See
Exercise 11 in Sec. 9.1, for example.) You can compare the test from Sec. 9.1 to the
test in this example in Exercise 1 at the end of this section.  
Testing Hypotheses about a Continuous Distribution
Consider a random variable X that takes values in the interval 0<X <1 but has an
unknown p.d.f. over this interval. Suppose that a random sample of 100 observations
is taken from this unknown distribution, and it is desired to test the null hypothesis
that the distribution is the uniform distribution on the interval [0, 1] against the
alternative hypothesis that the distribution is not uniform. This problem is a nonparametric
problem, since the distribution of X might be any continuous distribution on
the interval [0, 1]. However, as we shall now show, the χ2 test of goodness-of-fit can
be applied to this problem.
Suppose that we divide the interval [0, 1] into 20 subintervals of equal length,
namely, the interval [0, 0.05), the interval [0.05, 0.10), and so on. If the actual distribution
is a uniform distribution, then the probability that each observation will fall
within the ith subinterval is 1/20, for i = 1, . . . , 20. Since the sample size in this example
is n = 100, it follows that the expected number of observations in each subinterval
is 5. If Ni denotes the number of observations in the sample that actually fall within
the ith subinterval, then the statisticQdefined by Eq. (10.1.2) can be rewritten simply
as follows:
Q = 1
5
 20
i=1
(Ni
− 5)2. (10.1.5)
10.1 Tests of Goodness-of-Fit 629
If the null hypothesis is true, and the distribution from which the observations
were taken is indeed a uniform distribution, then Q will have approximately the
χ2 distribution with 19 degrees of freedom.
The method that has been presented in this example obviously can be applied
to every continuous distribution. To test whether a random sample of observations
comes from a particular distribution, the following procedure can be adopted:
i. Partition the entire real line, or any particular interval that has probability 1,
into a finite number k of disjoint subintervals. Generally, k is chosen so that the
expected number of observations in each subinterval is at least 5 if H0 is true.
ii. Determine the probability p0
i that the particular hypothesized distribution
would assign to the ith subinterval, and calculate the expected number np0
i
of observations in the ith subinterval (i = 1, . . . , k).
iii. Count the number Ni of observations in the sample that fall within the ith
subinterval (i = 1, . . . , k).
iv. Calculate the value of Q as defined by Eq. (10.1.2). If the hypothesized distribution
is correct, Q will have approximately the χ2 distribution with k − 1
degrees of freedom.
Example
10.1.6
Failure Times of Ball Bearings. Return to Example 10.1.1. Suppose that we wish to use
the χ2 test to test the null hypothesis that the logarithms of the lifetimes are an i.i.d.
sample from the normal distribution with mean log(50) = 3.912 and variance 0.25.
In order to have the expected count in each interval be at least 5, we can use at most
k = 4 intervals. We shall make these intervals each have probability 0.25 under the
null hypothesis. That is, we shall divide the intervals at the 0.25, 0.5, and 0.75 quantiles
of the hypothesized normal distribution. These quantiles are
3.912 + 0.5 
−1(0.25) = 3.192 + 0.5 × (−0.674) = 3.575,
3.912 + 0.5 
−1(0.5) = 3.192 + 0.5 × 0 = 3.912,
3.912 + 0.5 
−1(0.75) = 3.192 + 0.5 × 0.674 = 4.249,
because the 0.25 and 0.75 quantiles of the standard normal distribution are ±0.674.
The observed logarithms are
2.88 3.36 3.50 3.73 3.74 3.82 3.88 3.95
3.95 3.99 4.02 4.22 4.23 4.23 4.23 4.43
4.53 4.59 4.66 4.66 4.85 4.85 5.16
The numbers of observations in each of the four intervals are then 3, 4, 8, and 8.We
then calculate
Q = (3 − 23 × 0.25)2
23 × 0.25
+ (4 − 23 × 0.25)2
23 × 0.25
+ (8 − 23 × 0.25)2
23 × 0.25
+ (8 − 23 × 0.25)2
23 × 0.25
= 3.609.
Our table of the χ2 distribution with three degrees of freedom indicates that 3.609
is between the 0.6 and 0.7 quantiles, so we would not reject the null hypothesis at
levels less 0.3 and reject the null hypothesis at levels greater than 0.4. (Actually, the
p-value is 0.307.)  
630 Chapter 10 Categorical Data and Nonparametric Methods
One arbitrary feature of the procedure just described is the way in which the
subintervals are chosen. Two statisticians working on the same problem might very
well choose the subintervals in two different ways. Generally speaking, it is a good
policy to choose the subintervals so that the expected numbers of observations in
the individual subintervals are approximately equal, and also to choose as many
subintervals as possible without allowing the expected number of observations in
any subinterval to become small. This is what we did in Example 10.1.6.
Likelihood Ratio Tests for Proportions
In Examples 10.1.3 and 10.1.4, we used the χ2 goodness-of-fit test to test hypotheses
of the form (10.1.4). Although χ2 tests are commonly used in such examples,we could
actually use parametric tests in these examples. For example, the vector of responses
in Table 10.3 can be thought of as the observed value of a multinomial random
vector with parameters 189 and p = (p1, p2, p3). (See Sec. 5.9.) The hypotheses in
Eq. (10.1.4) are then of the form
H0 : p = p(0) versus H1 : H0 is not true.
As such, we can use the method of likelihood ratio tests for testing the hypotheses.
Specifically, we shall apply Theorem 9.1.4. The likelihood function from a multinomial
vector x = (N1, . . . , Nk) is
f (x|p) =


n
N1, . . . , Nk
 
p
N1
1
. . . p
Nk
k . (10.1.6)
In order to apply Theorem 9.1.4, the parameter space must be an open set in kdimensional
space. This is not true for the multinomial distribution if we let p be the
parameter. The set of probability vectors lies in a (k − 1)-dimensional subset of kdimensional
space because the coordinates are constrained to add up to 1. However,
we can just as effectively treat the vector θ = (p1, . . . , pk−1) as the parameter because
pk
= 1− p1 − . . . − pk−1 is a function of θ. As long as we believe that all coordinates
of p are strictly between 0 and 1, the set of possible values of the (k − 1)-dimensional
parameter θ is open. The likelihood function (10.1.6) can then be rewritten as
g(x|θ) =


n
N1, . . . , Nk
 
θ
N1
1
. . . θ
Nk−1
k−1 (1− θ1 − . . . − θk−1)Nk . (10.1.7)
If H0 is true, there is only one possible value for (10.1.7), namely,


n
N1, . . . , Nk
 
(p(0)
1 )N1 . . . (p(0)
k )Nk,
which is then the numerator of the likelihood ratio statistic  (x) from Definition
9.1.11.The denominator of  (x) is found by maximizing (10.1.7). It is not difficult
to show that the M.L.E.’s are ˆ θi
= Ni/n for i = 1, . . . , k − 1. The large-sample likelihood
ratio test statistic is then
−2 log  (x)=−2
 k
i=1
Ni log
 
np(0)
i
Ni
 
.
The large-sample test rejects H0 at level of significance α0 if this statistic is greater
than the 1− α0 quantile of the χ2 distribution with k − 1 degrees of freedom.
Example
10.1.7
Blood Types. Using the data in Table 10.1, we can test the null hypothesis that the
vector of probabilities equals the vector of numbers in Table 10.2. The values of np(0)
i
10.1 Tests of Goodness-of-Fit 631
for i = 1, 2, 3, 4 were already calculated in Example 10.1.3. The test statistic is
− 2
 
2162 log


2001.3
2162
 
+ 738 log


750.5
738
 
+ 228 log


250.2
228
 
+ 2876 log


3002.0
2876
  
= 20.16.
The p-value is the probability that a χ2 random variable with three degrees of
freedom is greater than 20.16, namely, 1.57 × 10−4. This is nearly the same as the
p-value from the χ2 test in Example 10.1.3.  
Discussion of the Test Procedure
The χ2 test of goodness-of-fit is subject to the criticisms of tests of hypotheses
that were presented in Sec. 9.9. In particular, the null hypothesis H0 in the χ2 test
specifies the distribution of the observations exactly, but it is not likely that the actual
distribution of the observations will be exactly the same as that of a random sample
from this specific distribution.Therefore, if the χ2 test is based on a very large number
of observations, we can be almost certain that the tail area corresponding to the
observed value of Q will be very small. For this reason, a very small tail area should
not be regarded as strong evidence against the hypothesisH0 without further analysis.
Before a statistician concludes that the hypothesis H0 is unsatisfactory, he should be
certain that there exist reasonable alternative distributions for which the observed
values provide a much better fit. For example, the statistician might calculate the
values of the statistic Q for a few reasonable alternative distributions in order to be
certain that, for at least one of these distributions, the tail area corresponding to the
calculated value of Q is substantially larger than it is for the distribution specified by
H0.
A particular feature of the χ2 test of goodness-of-fit is that the procedure is
designed to test the null hypothesisH0 that pi
= p0
i for i = 1, . . . , k against the general
alternative that H0 is not true. If it is desired to use a test procedure that is especially
effective for detecting certain types of deviations of the actual values of p1, . . . , pk
from the hypothesized values p0
1, . . . , p0
k, then the statistician should design special
tests that have higher power for these types of alternatives and lower power for
alternatives of lesser interest. This topic will not be discussed in this book.
Because the random variables N1, . . . , Nk in Eq. (10.1.2) are discrete, the χ2
approximation to the distribution of Q can sometimes be improved by introducing a
correction for continuity of the type described in Sec. 6.4. However, we shall not use
the correction in this book.
Summary
The χ2 test of goodness-of-fit was introduced as a method for testing the null hypothesis
that our data form an i.i.d. sample from a specific distribution against the
alternative hypothesis that the data have some other distribution. The test is most
natural when the specific distribution is discrete. Suppose that there are k possible
values for each observation, and we observe Ni with value i for i = 1, . . . , k. Suppose
that the null hypothesis says that the probability of the ith possible value is p0
i for
632 Chapter 10 Categorical Data and Nonparametric Methods
i = 1, . . . , k. Then we compute
Q =
 k
i=1
(Ni
− np0
i )2
np0
i
,
where n = k
i=1 Ni is the sample size. When the null hypothesis says that the data
have a continuous distribution, then one must first create a corresponding discrete
distribution. One does this by dividing the real line into finitely many (say, k) intervals,
calculating the probability of each interval p0
1, . . . , p0
k, and then pretending
as if all we learned from the data were into which intervals each observation fell.
This converts the original data into discrete data with k possible values. For example,
the value of Ni used in the formula for Q is the number of observations
t hat fell into the ith interval. All of the χ2 test statistics in this text have the form
(observed−expected)2/expected, where “observed” stands for an observed count
and “expected” stands for the expected value of the observed count under the assumption
that the null hypothesis is true.
Exercises
1. Consider the hypotheses being tested in Example
10.1.5. Use a test procedure of the form outlined in Exercise
11 of Sec. 9.1 and compare the result to the numerical
result obtained in Example 10.1.5.
2. Show that if p0
i
= 1/k for i = 1, . . . , k, then the statistic
Q defined by Eq. (10.1.2) can be written in the form
Q =
 
k
n
 k
i=1
N2
i
 
− n.
3. Investigate the “randomness” of your favorite pseudorandom
number generator as follows. Simulate 200
pseudo-random numbers between 0 and 1 and divide the
unit interval into k = 10 intervals of length 0.1 each. Apply
the χ2 test of the hypothesis that each of the 10 intervals
has the same probability of containing a pseudo-random
number.
4. According to a simple genetic principle, if both the
mother and the father of a child have genotype Aa, then
there is probability 1/4 that the child will have genotype
AA, probability 1/2 that she will have genotype Aa, and
probability 1/4 that she will have genotype aa. In a random
sample of 24 children having both parents with genotype
Aa, it is found that 10 have genotypeAA, 10 have genotype
Aa, and four have genotype aa. Investigate whether the
simple genetic principle is correct by carrying out a χ2 test
of goodness-of-fit.
5. Suppose that in a sequence of n Bernoulli trials, the
probability p of success on each trial is unknown. Suppose
also that p0 is a given number in the interval (0, 1), and it
is desired to test the following hypotheses:
H0: p = p0,
H1: p  = p0.
Let Xn denote the proportion of successes in the n trials,
and suppose that the given hypotheses are to be tested by
using a χ2 test of goodness-of-fit.
a. Show that the statistic Q defined by Eq. (10.1.2) can
be written in the form
Q = n(Xn
− p0)2
p0(1− p0)
.
b. Assuming that H0 is true, prove that as n→∞, the
c.d.f. ofQconverges to the c.d.f. of the χ2 distribution
with one degree of freedom. Hint: Show thatQ= Z2,
where it is known from the central limit theorem that
Z is a random variable whose c.d.f. converges to the
c.d.f. of the standard normal distribution.
6. It is known that 30 percent of small steel rods produced
by a standard process will break when subjected to a load
of 3000 pounds. In a random sample of 50 similar rods produced
by a new process, it was found that 21 of them broke
when subjected to a load of 3000 pounds. Investigate the
hypothesis that the breakage rate for the new process is
the same as the rate for the old process by carrying out a
χ2 test of goodness-of-fit.
7. In a random sample of 1800 observed values from the
interval (0, 1), it was found that 391 values were between
0 and 0.2, 490 values were between 0.2 and 0.5, 580 values
were between 0.5 and 0.8, and 339 values were between
0.8 and 1. Test the hypothesis that the random sample was
drawn from the uniform distribution on the interval [0, 1]
by carrying out a χ2 test of goodness-of-fit at the level of
significance 0.01.
10.2 Goodness-of-Fit for Composite Hypotheses 633
8. Suppose that the distribution of the heights of men who
reside in a certain large city is the normal distribution for
which the mean is 68 inches and the standard deviation
is 1 inch. Suppose also that when the heights of 500 men
who reside in a certain neighborhood of the city were
measured, the distribution inTable 10.4 was obtained.Test
the hypothesis that, with regard to height, these 500 men
form a random sample from all the men who reside in the
city.
Table 10.4 Data for Exercise 8
Height Number of men
Less than 66 in. 18
Between 66 and 67.5 in. 177
Between 67.5 and 68.5 in. 198
Between 68.5 and 70 in. 102
Greater than 70 in. 5
9. The 50 values in Table 10.5 are intended to be a random
sample from the standard normal distribution.
Table 10.5 Data for Exercise 9
−1.28 −1.22 −0.45 −0.35 0.72
−0.32 −0.80 −1.66 1.39 0.38
−1.38 −1.26 0.49 −0.14 −0.85
2.33 −0.34 −1.96 −0.64 −1.32
−1.14 0.64 3.44 −1.67 0.85
0.41 −0.01 0.67 −1.13 −0.41
−0.49 0.36 −1.24 −0.04 −0.11
1.05 0.04 0.76 0.61 −2.04
0.35 2.82 −0.46 −0.63 −1.61
0.64 0.56 −0.11 0.13 −1.81
a. Carry out a χ2 test of goodness-of-fit by dividing the
real line into five intervals, each of which has probability
0.2 under the standard normal distribution.
b. Carry out a χ2 test of goodness-of-fit by dividing the
real line into 10 intervals, each of which has probability
0.1 under the standard normal distribution.
10.2 Goodness-of-Fit for Composite Hypotheses
We can extend the goodness-of-fit test to deal with the case in which the null
hypothesis is that the distribution of our data belongs to a particular parametric
family. The alternative hypothesis is that the data have a distribution that is not a
member of that parametric family. There are two changes to the test procedure
in going from the case of a simple null hypothesis to the case of a composite
null hypothesis. First, in the test statistic Q, the probabilities p0
i are replaced by
estimated probabilities based on the parametric family. Second, the degrees of
freedom are reduced by the number of parameters.
Composite Null Hypotheses
Example
10.2.1
Failure Times of Ball Bearings. In Example 10.1.6, we tested the null hypothesis that
the logarithms of ball bearing lifetimes have the normal distribution with mean 3.912
and variance 0.25. Suppose that we are not even sure that a normal distribution is
a good model for the log-lifetimes. Is there a way for us to test the composite null
hypothesis that the distribution of log-lifetimes is a member of the normal family?
 
We shall consider again a large population that consists of items of k different
types and again let pi denote the probability that an item selected at random will
be of type i (i = 1, . . . , k). We shall suppose now, however, that instead of testing
the simple null hypothesis that the parameters p1, . . . , pk have specific values, we
are interested in testing the composite null hypothesis that the values of p1, . . . , pk
belong to some specified subset of possible values. In particular, we shall consider
634 Chapter 10 Categorical Data and Nonparametric Methods
problems in which the null hypothesis specifies that the parameters p1, . . . , pk can
actually be represented as functions of a smaller number of parameters.
Example
10.2.2
Genetics. Consider a gene (such as in Example 1.6.4 on page 23) that has two different
alleles. Each individual in a given population must have one of three possible
genotypes. If the alleles arrive independently from the two parents, and if every parent
has the same probability θ of passing the first allele to each offspring, then the
probabilities p1, p2, and p3 of the three different genotypes can be represented in the
following form:
p1 = θ2, p2 = 2θ(1− θ), p3 = (1− θ)2. (10.2.1)
Here, the value of the parameter θ is unknown and can lie anywhere in the interval
0 <θ <1. For each value of θ in this interval, it can be seen that pi > 0 for i = 1, 2, or 3,
and p1+ p2 + p3 = 1. In this problem, a random sample is taken from the population,
and the statistician must use the observed numbers of individuals who have each of
the three genotypes to determine whether it is reasonable to believe that there is
some value of θ in the interval 0 < θ <1 such that p1, p2, and p3 can be represented
in the hypothesized form (10.2.1).
If a gene has three different alleles, each individual in the population must have
one of six possible genotypes. Once again, if the alleles pass independently from the
parents, and if each parent has probabilities θ1 and θ2 of passing the first and second
alleles, respectively, to an offspring, then the probabilities p1, . . . , p6 of the different
genotypes can be represented in the following form, for some values of θ1 and θ2 such
that θ1 > 0, θ2 > 0, and θ1 + θ2 < 1:
p1 = θ2
1, p2 = θ22
, p3 = (1− θ1 − θ2)2, p4 = 2θ1θ2,
p5 = 2θ1(1− θ1 − θ2), p6 = 2θ2(1− θ1 − θ2).
(10.2.2)
Again, for all values of θ1 and θ2 satisfying the stated conditions, it can be verified
that pi > 0 for i = 1, . . . , 6 and
 6
i=1 pi
= 1. On the basis of the observed numbers
N1, . . . , N6 of individuals having each genotype in a random sample, the statistician
must decide whether or not to reject the null hypothesis that the probabilities
p1, . . . , p6 can be represented in the form (10.2.2) for some values of θ1 and θ2.  
In formal terms, in a problem like those in Example 10.2.2, we are interested in
testing the hypothesis that for i = 1, . . . , k, each probability pi can be represented as
a particular function πi(θ) of a vector of parameters θ = (θ1, . . . , θs). It is assumed
that s < k − 1 and no component of the vector θ can be expressed as a function
of the other s − 1 components. We shall let   denote the s-dimensional parameter
space of all possible values of θ. Furthermore, we shall assume that the functions
π1(θ), . . . , πk(θ) always form a feasible set of values of p1, . . . , pk in the sense that
for every value of θ ∈  , πi(θ) > 0 for i = 1, . . . , k and
 k
i=1 πi(θ) = 1.
The hypotheses to be tested can be written in the following form:
H0: There exists a value of θ ∈   such that
pi
= πi(θ) for i = 1, . . . , k, (10.2.3)
H1: The hypothesis H0 is not true.
The assumption that s < k − 1 guarantees that the hypothesis H0 actually restricts
the values of p1, . . . , pk to a proper subset of the set of all possible values of these
probabilities. In other words, as the vector θ runs through all the values in the set  ,
10.2 Goodness-of-Fit for Composite Hypotheses 635
the vector [π1(θ), . . . , πk(θ)] runs through only a proper subset of the possible values
of (p1, . . . , pk).
The χ2 Test for Composite Null Hypotheses
In order to carry out a χ2 test of goodness-of-fit of the hypotheses (10.2.3), the statistic
Q defined by Eq. (10.1.2) must be modified because the expected number np0
i of
observations of type i in a random sample of n observations is no longer completely
specified by the null hypothesis H0. The modification that is used is simply to replace
np0
i by the M.L.E. of this expected number under the assumption that H0 is true. In
other words, if ˆ θ denotes the M.L.E. of the parameter vector θ based on the observed
numbers N1, . . . , Nk, then the statistic Q is defined as follows:
Q =
 k
i=1
[Ni
− nπi( ˆ θ)]2
nπi( ˆ θ)
. (10.2.4)
Again, it is reasonable to base a test of the hypotheses (10.2.3) on this statistic
Q by rejecting H0 if Q ≥ c, where c is an appropriate constant. In 1924, R. A. Fisher
proved the following result, whose precise statement and proof are not given here.
(See Schervish 1995, theorem 7.133.)
Theorem
10.2.1
χ2 Test for Composite Null. Suppose that the null hypothesis H0 in (10.2.3) is true and
certain regularity conditions are satisfied. Then as the sample size n→∞, the c.d.f.
of Q in (10.2.4) converges to the c.d.f. of the χ2 distribution with k − 1− s degrees
of freedom.
When the sample size n is large and the null hypothesisH0 is true, the distribution
of Q will be approximately a χ2 distribution. To determine the number of degrees of
freedom, we must subtract s from the number k − 1 used in Sec. 10.1 because we are
now estimating the s parameters θ1, . . . , θs when we compare the observed number
Ni with the expected number nπi( ˆ θ) for i = 1, . . . , k. In order that this result will hold,
it is necessary to satisfy the following regularity conditions: First, the M.L.E. ˆ θ of the
vector θ must occur at a point where the partial derivatives of the likelihood function
with respect to each of the parameters θ1, . . . , θs equal 0. Furthermore, these partial
derivatives must satisfy certain conditions of the type alluded to in Sec. 8.8 when we
discussed the asymptotic properties of M.L.E.’s.
Example
10.2.3
Genetics. As examples of the use of the statistic Q defined by Eq. (10.2.4), consider
the two types of genetics problems described in Example 10.2.2. In a problem of the
first type, k = 3, and it is desired to test the null hypothesis H0 that the probabilities
p1, p2, and p3 can be represented in the form (10.2.1) against the alternative H1 that
H0 is not true. In this problem, s = 1. Therefore, when H0 is true, the distribution of
the statistic Q defined by Eq. (10.2.4) will be approximately the χ2 distribution with
one degree of freedom.
In a problem of the second type, k = 6, and it is desired to test the null hypothesis
H0 that the probabilities p1, . . . , p6 can be represented in the form (10.2.2) against
the alternative H1 that H0 is not true. In this problem, s = 2. Therefore, when H0
is true, the distribution of Q will be approximately the χ2 distribution with three
degrees of freedom.  
636 Chapter 10 Categorical Data and Nonparametric Methods
Determining the Maximum Likelihood Estimates
When the null hypothesis H0 in (10.2.3) is true, the likelihood function L(θ) for the
observed numbers N1, . . . , Nk will be
L(θ) =


n
N1, . . . , Nk
 
[π1(θ)]N1 . . . [πk(θ)]Nk . (10.2.5)
Thus,
log L(θ) = log


n
N1, . . . , Nk
 
+
 k
i=1
Ni log πi(θ). (10.2.6)
The M.L.E. ˆ θ will be the value of θ for which log L(θ) is a maximum. The multinomial
coefficient in (10.2.6) does not affect the maximization, and we shall ignore it for the
remainder of this section.
Example
10.2.4
Genetics. In the first parts of Examples 10.2.2 and 10.2.3, k = 3 and H0 specifies that
the probabilities p1, p2, and p3 can be represented in the form (10.2.1). In this case,
log L(θ) = N1 log(θ2) + N2 log[2θ(1− θ)]+ N3 log[(1− θ)2]
= (2N1 + N2) log θ + (2N3 + N2) log(1− θ) + N2 log 2.
(10.2.7)
It can be found by differentiation that the value of θ for which log L(θ) is a maximum
is
ˆ θ = 2N1 + N2
2(N1 + N2 + N3)
= 2N1 + N2
2n
. (10.2.8)
The value of the statistic Q defined by Eq. (10.2.4) can now be calculated from
the observed numbers N1, N2, and N3.As previously mentioned, when H0 is true and
n is large, the distribution of Q will be approximately the χ2 distribution with one
degree of freedom. Hence, the tail area corresponding to the observed value of Q
can be found from that χ2 distribution.  
Testing Whether a Distribution Is Normal
Consider now a problem in which a random sample X1, . . . , Xn is taken from some
continuous distribution for which the p.d.f. is unknown, and it is desired to test the null
hypothesis H0 that this distribution is a normal distribution against the alternative
hypothesis H1 that the distribution is not normal. To perform a χ2 test of goodnessof-
fit in this problem, divide the real line into k subintervals and count the number Ni
of observations in the random sample that fall into the ith subinterval (i = 1, . . . , k).
If H0 is true, and if μ and σ2 denote the unknown mean and variance of the
normal distribution, then the parameter vector θ is the two-dimensional vector θ =
(μ, σ2). The probability πi(θ), or πi(μ, σ2), that an observation will fall within the ith
subinterval, is the probability assigned to that subinterval by the normal distribution
with mean μ and variance σ2. In other words, if the ith subinterval is the interval
from ai to bi , then
πi(μ, σ2) =
  bi
ai
1
(2π)1/2σ
exp
 
−(x − μ)2
2σ2
 
dx
=  


bi
− μ
σ
 
−  


ai
− μ
σ
 
,
(10.2.9)
10.2 Goodness-of-Fit for Composite Hypotheses 637
where  (.) is the standard normal c.d.f., and  (−∞) = 0 and  (∞) = 1.
It is important to note that in order to calculate the value of the statisticQdefined
by Eq. (10.2.4), the M.L.E.’s ˆμ and ˆσ 2 must be found by using the numbersN1, . . . , Nk
of observations in the different subintervals. The M.L.E.’s should not be found by
using the observed values of X1, . . . , Xn themselves. In other words, ˆμ and ˆσ 2 will
be the values of μ and σ2 that maximize the likelihood function
L(μ, σ2) = [π1(μ, σ2)]N1 . . . [πk(μ, σ2)]Nk . (10.2.10)
Because of the complicated nature of the function πi(μ, σ2), as given by Eq.
(10.2.9), a lengthy numerical computation would usually be required to determine
the values of μ and σ2 that maximize L(μ, σ2). On the other hand, we know that
the M.L.E.’s of μ and σ2 based on the n observed values X1, . . . , Xn in the original
sample are simply the sample meanXn and the sample variance S2
n/n. Furthermore, if
the estimators that maximize the likelihood function L(μ, σ2) are used to calculate
the statistic Q, then we know that when H0 is true, the distribution of Q will be
approximately the χ2 distribution with k − 3 degrees of freedom. On the other hand,
if the M.L.E.’s Xn and S2
n/n, which are based on the observed values in the original
sample, are used to calculate Q, then this χ2 approximation to the distribution of
Q will not be appropriate. Because of the simple nature of the estimators Xn and
S2
n/n, we shall use these estimators to calculate Q, but we shall describe how their
use modifies the distribution of Q.
In 1954, H. Chernoff and E. L. Lehmann established the following general result,
which we shall not prove here.
Theorem
10.2.2
Let X1, . . . , Xn be a random sample from a distribution with a p-dimensional parameter
θ. Let ˆ θn denote the M.L.E. as defined in Definition 7.5.2. Partition the real
line intok >p + 1 disjoint intervals I1, . . . , Ik. Let Ni be the number of observations
that fall into Ii for i = 1, . . . , k. Let πi(θ) = Pr(Xi
∈ Ii
|θ). Let
Q
  =
 k
i=1
[Ni
− nπi( ˆ θn)]2
nπi( ˆ θn)
. (10.2.11)
Assume the regularity conditions needed for asymptotic normality of the M.L.E.
Then, as n→∞, the c.d.f. of Q
  converges to a c.d.f. that lies between the c.d.f. of the
χ2 distribution with k − p − 1 degrees of freedom and the c.d.f. of the χ2 distribution
with k − 1 degrees of freedom.
For the case of testing that the distribution is normal, suppose that we use the
M.L.E.’s Xn and S2
n/n and calculate the statistic Q
  in Eq. (10.2.11) instead of the
statistic Q in Eq. (10.2.4). If the null hypothesis H0 is true, then as n→∞, the c.d.f.
of Q
  converges to a c.d.f. that lies between the c.d.f. of the χ2 distribution with k − 3
degrees of freedom and the c.d.f. of the χ2 distribution with k − 1 degrees of freedom.
It follows that if the value of Q
  is calculated in this simplified way, then the tail area
corresponding to this value of Q
  is actually larger than the tail area found from a
table of the χ2 distribution with k − 3 degrees of freedom. In fact, the appropriate tail
area lies somewhere between the tail area found from a table of the χ2 distribution
with k − 3 degrees of freedom and the larger tail area found from a table of the χ2
distribution with k − 1 degrees of freedom. Thus, when the value of Q
  is calculated
in this simplified way, the corresponding tail area will be bounded by two values that
can be obtained from a table of the χ2 distribution.
638 Chapter 10 Categorical Data and Nonparametric Methods
Example
10.2.5
Failure Times of Ball Bearings. Return to Example 10.2.1. We are now in a position
to try to test the composite null hypothesis that the logarithms of ball bearing
lifetimes have some normal distribution. We shall divide the real line into the same
subintervals that we used in Example 10.1.6, namely, (−∞, 3.575], (3.575, 3.912],
(3.912, 4.249], and (4.249,∞). The counts for the four intervals are still 3, 4, 8, and
8. We shall use Theorem 10.2.2, which allows us to use the M.L.E.’s based on the
original data. This yields ˆμ = 4.150 and ˆσ 2 = 0.2722. The probabilities of the four
intervals are
π1( ˆ μ, ˆσ 2) =  


3.575 − 4.150
(0.2722)1/2
 
= 0.1350,
π2( ˆ μ, ˆσ 2) =  


3.912 − 4.150
(0.2722)1/2
 
−  


3.575 − 4.150
(0.2722)1/2
 
= 0.1888,
π3( ˆ μ, ˆσ 2) =  


4.249 − 4.150
(0.2722)1/2
 
−  


3.912 − 4.150
(0.2722)1/2
 
= 0.2511,
π4( ˆ μ, ˆσ 2) = 1−  


4.249 − 4.150
(0.2722)1/2
 
= 0.4251.
This makes the value of Q
  equal to
Q
  = (3 − 23 × 0.1350)2
23 × 0.1350
+ (4 − 23 × 0.1888)2
23 × 0.1888
+ (8 − 23 × 0.2511)2
23 × 0.2511
+ (8 − 23 × 0.4251)2
23 × 0.4251
= 1.211.
The tail area corresponding to 1.211 needs to be computed for χ2 distributions with
k − 1= 3 and k − 3= 1 degrees of freedom. For one degree of freedom, the p-value
is 0.2711, and for three degrees of freedom the p-value is 0.7504. So, our actual pvalue
lies in the interval [0.2711, 0.7504]. Although this interval is wide, it tells not to
reject H0 at level α0 if α0 < 0.2711.  
Note: Testing Composite Hypotheses about an Arbitrary Distribution. Theorem
10.2.2 is very general and applies to both continuous and discrete distributions.
Suppose, for example, that a random sample of n observations is taken from a discrete
distribution for which the possible values are the nonnegative integers 0, 1, 2, . . . .
Suppose also that it is desired to test the null hypothesis H0 that this distribution is a
Poisson distribution against the alternative hypothesis H1 that the distribution is not
Poisson. Finally, suppose that the nonnegative integers 0, 1, 2, . . . are divided into k
classes such that each observation will lie in one of these classes.
It is known from Exercise 5 of Sec. 7.5 that if H0 is true, then the sample
mean Xn is the M.L.E. of the unknown mean θ of the Poisson distribution based
on the n observed values in the original sample. Therefore, if the estimator ˆ θ = Xn
is used to calculate the statistic Q
  defined by Eq. (10.2.11) rather than the Q in
Eq. (10.2.4), then the approximate distribution of Q
  when H0 is true lies between
the χ2 distribution with k − 2 degrees of freedom and the χ2 distribution with k − 1
degrees of freedom.
Example
10.2.6
Prussian Army Deaths. In Example 7.3.14, we modeled the numbers of deaths by
horsekick in Prussian army units as Poisson random variables. Suppose that we wish
to test the null hypothesis that the numbers are a random sample from some Poisson
10.2 Goodness-of-Fit for Composite Hypotheses 639
distribution versus the alternative hypothesis that they are not a Poisson random
sample. The numbers of counts reported in Example 7.3.14 are repeated here:
Count 0 1 2 3 ≥ 4
Number of Observations 144 91 32 11 2
The likelihood function, assuming that the data form a random sample from a Poisson
distribution, is proportional (as a function of θ) to exp(−280θ)θ196. The M.L.E. is
ˆ θn
= 196/280 = 0.7. We can use the k = 5 classes above to compute the statistic Q
 .
The five class probabilities are
Count 0 1 2 3 ≥ 4
πi( ˆ θn) 0.4966 0.3476 0.1217 0.0283 0.0058
Then
Q
  = (144 − 280 × 0.4966)2
280 × 0.4966
+ (91− 280 × 0.3476)2
280 × 0.3476
+ (32 − 280 × 0.1217)2
280 × 0.1217
+ (11− 280 × 0.0283)2
280 × 0.0283
+ (2 − 208 × 0.0058)2
208 × 0.0005
= 1.979.
The tail areas corresponding to the observed Q
  and degrees of freedom four and
three are, respectively, 0.7396 and 0.5768.We would not be able to reject H0 at level
α0 for α0 < 0.5768.  
Summary
If we want to test the composite hypothesis that our data have a distribution from
a parametric family, we must estimate the parameter θ. We do this by first dividing
the real numbers into k disjoint intervals. Then we reduce the data to the counts
N1, . . . , Nk of how many observations fall into each of the k intervals. We then
construct the likelihood function L(θ) ="k
i=1 πi(θ)Ni , where πi(θ) is the probability
that one observation falls into the ith interval. We estimate θ to be the value ˆ θ that
maximizes L(θ).We then compute the test statisticQ= k
i=1[Ni
− nπi( ˆ θ)]2/[nπi( ˆ θ)],
which has the form
 
(observed−expected)2/expected. In order to test the null
hypothesis at level α0, we compare Q to the 1− α0 quantile of the χ2 distribution
with k − 1− s degrees of freedom, where s is the dimension of θ. Alternatively, we
can find the usual M.L.E. ˆ θ based on the original observations. In this case, we need
to compare Q to a number between the 1− α0 quantile of the χ2 distribution with
k − 1− s degrees of freedom and the 1− α0 quantile of the χ2 distribution with k − 1
degrees of freedom.
640 Chapter 10 Categorical Data and Nonparametric Methods
Exercises
1. The 41 numbers in Table 10.6 are average sulfur dioxide
contents over the years 1969–71 (micrograms per cubic
meter) measured in the air in 41 U.S. cities. The data appear
on pp. 619–620 of Sokal and Rohlf (1981).
a. Test the null hypothesis that these data arise from a
normal distribution.
b. Test the null hypothesis that these data arise from a
lognormal distribution.
Table 10.6 Sulfur dioxide in the air of 41 U.S. cities
10 13 12 17 56 36 29
14 10 24 110 28 17 8
30 9 47 35 29 14 56
14 11 46 11 23 65 26
69 61 94 10 18 9 10
28 31 26 29 31 16
2. At the fifth hockey game of the season at a certain
arena, 200 people were selected at random and asked how
many of the previous four games they had attended. The
results are given in Table 10.7. Test the hypothesis that
these 200 observed values can be regarded as a random
sample from a binomial distribution; that is, there exists
a number θ (0 < θ <1) such that the probabilities are as
follows:
p0 = (1− θ)4, p1 = 4θ(1− θ)3, p2 = 6θ2(1− θ)2,
p3 = 4θ3(1− θ), p4 = θ4.
Table 10.7 Data for Exercise 2
Number of games Number of
previously attended people
0 33
1 67
2 66
3 15
4 19
3. Consider a genetics problem in which each individual
in a certain population must have one of six genotypes,
and it is desired to test the null hypothesis H0 that the
probabilities of the six genotypes can be represented in
the form specified in Eq. (10.2.2).
a. Suppose that in a random sample of n individuals,
the observed numbers of individuals having the six
genotypes areN1, . . . , N6. Find the M.L.E.’s of θ1 and
θ2 when the null hypothesis H0 is true.
b. Suppose that in a random sample of 150 individuals,
the observed numbers are as follows:
N1 = 2, N2 = 36, N3 = 14, N4 = 36,
N5 = 20, N6 = 42.
Determine the value ofQand the corresponding tail
area.
4. Consider again the sample consisting of the heights of
500 men given in Exercise 8 of Sec. 10.1. Suppose that
before these heights were grouped into the intervals given
in that exercise, it was found that for the 500 observed
heights in the original sample, the sample mean was Xn
=
67.6 and the sample variance was S2
n/n = 1.00. Test the
hypothesis that these observed heights form a random
sample from a normal distribution.
5. In a large city, 200 persons were selected at random,
and each person was asked how many tickets he purchased
that week in the state lottery. The results are given in
Table 10.8. Suppose that among the seven persons who
had purchased five or more tickets, three persons had
purchased exactly five tickets, two persons had purchased
six tickets, one person had purchased seven tickets, and
one person had purchased 10 tickets. Test the hypothesis
that these 200 observations form a random sample from a
Poisson distribution.
Table 10.8 Data for Exercise 5
Number of tickets Number of
previously purchased persons
0 52
1 60
2 55
3 18
4 8
5 or more 7
6. Rutherford and Geiger (1910) counted the numbers
of alpha particles emitted by a certain mass of polonium
during 2608 disjoint time periods, each of which lasted
7.5 seconds. The results are given in Table 10.9. Test the
hypothesis that these 2608 observations form a random
sample from a Poisson distribution.
10.3 Contingency Tables 641
Table 10.9 Data for Exercise 6 from Rutherford
and Geiger (1910)
Number of Number of
particles emitted time periods
0 57
1 203
2 383
3 525
4 532
5 408
6 273
7 139
8 45
9 27
10 10
11 4
12 0
13 1
14 1
15 or more 0
Total 2608
7. Test the hypothesis that the 50 observations in Table
10.10 form a random sample from a normal distribution.
Table 10.10 Data for Exercise 7
9.69 8.93 7.61 8.12 −2.74
2.78 7.47 8.46 7.89 5.93
5.21 2.62 0.22 −0.59 8.77
4.07 5.15 8.32 6.01 0.68
9.81 5.61 13.98 10.22 7.89
0.52 6.80 2.90 2.06 11.15
10.22 5.05 6.06 14.51 13.05
9.09 9.20 7.82 8.67 7.52
3.03 5.29 8.68 11.81 7.80
16.80 8.07 0.66 4.01 8.64
8. Test the hypothesis that the 50 observations in Table
10.11 form a random sample from an exponential distribution.
Table 10.11 Data for Exercise 8
0.91 1.22 1.28 0.22 2.33
0.90 0.86 1.45 1.22 0.55
0.16 2.02 1.59 1.73 0.49
1.62 0.56 0.53 0.50 0.24
1.28 0.06 0.19 0.29 0.74
1.16 0.22 0.91 0.04 1.41
3.65 3.41 0.07 0.51 1.27
0.61 0.31 0.22 0.37 0.06
1.75 0.89 0.79 1.28 0.57
0.76 0.05 1.53 1.86 1.28
10.3 Contingency Tables
When each observation in our sample is a bivariate discrete random vector (a pair
of discrete random variables), then there is a simple way to test the hypothesis that
the two random variables are independent. The test is another form of χ2 test like
the ones used earlier in this chapter.
Independence in Contingency Tables
Example
10.3.1
College Survey. Suppose that 200 students are selected at random from the entire
enrollment at a large university, and each student in the sample is classified both
according to the curriculum in which he is enrolled and according to his preference for
either of two candidates A and B in a forthcoming election. Suppose that the results
are as presented in Table 10.12. We might be interested in whether the choices of
642 Chapter 10 Categorical Data and Nonparametric Methods
Table 10.12 Classification of students by curriculum and candidate preference
Candidate preferred
Curriculum A B Undecided Totals
Engineering and science 24 23 12 59
Humanities and social sciences 24 14 10 48
Fine arts 17 8 13 38
Industrial and public administration 27 19 9 55
Totals 92 64 44 200
curriculum and candidate are independent of each other.To be more precise, suppose
that a student is selected at random from the entire enrollment at the university.
Independence means that for each i and j , the probability that such a randomly
chosen student prefers candidate j and is in curriculum i equals the product of the
probability that he prefers candidate j times the probability that he is enrolled in
curriculum i.  
Tables of data like Table 10.12 are very common and have a special name.
Definition
10.3.1
Contingency Tables. A table in which each observation is classified in two or more
ways is called a contingency table.
In Table 10.12, only two classifications are considered for each student, namely,
the curriculum in which he is enrolled and the candidate he prefers. Such a table is
called a two-way contingency table.
In general, we shall consider a two-way contingency table containing R rows and
C columns. For i = 1, . . . , R and j = 1, . . . , C, we shall let pij denote the probability
that an individual selected at random from a given population will be classified in
the ith row and the jth column of the table. Furthermore, we shall let pi+ denote the
marginal probability that the individual will be classified in the ith row of the table
and p+j denote the marginal probability that the individual will be classified in the
jth column of the table. Thus,
pi+ =
 C
j=1
pij and p+j
=
 R
i=1
pij .
Furthermore, since the sum of the probabilities for all the cells of the table must be 1,
we have
 R
i=1
 C
j=1
pij
=
 R
i=1
pi+ =
 C
j=1
p+j
= 1.
Suppose now that a random sample of n individuals is taken from the given
population. For i = 1, . . . , R, and j = 1, . . . , C, we shall let Nij denote the number
of individuals who are classified in the ith row and the jth column of the table.
Furthermore, we shall let Ni+ denote the total number of individuals classified in the
ith row and N+j denote the total number of individuals classified in the jth column.
10.3 Contingency Tables 643
Thus,
Ni+ =
 C
j=1
Nij and N+j
=
 R
i=1
Nij . (10.3.1)
Also,
 R
i=1
 C
j=1
Nij
=
 R
i=1
Ni+ =
 C
j=1
N+j
= n. (10.3.2)
On the basis of these observations, the following hypotheses are to be tested:
H0: pij
= pi+p+j for i = 1, . . . , R and j = 1, . . . , C,
H1: The hypothesis H0 is not true.
(10.3.3)
The χ2 Test of Independence
The χ2 tests described in Sec. 10.2 can be applied to the problem of testing the
hypotheses (10.3.3). Each individual in the population from which the sample is taken
must belong in one of theRC cells of the contingency table. Under the null hypothesis
H0, the unknown probabilities pij of these cells have been expressed as functions
of the unknown parameters pi+ and p+j . Since
 R
i=1 pi+ = 1 and
 C
j=1 p+j
= 1,
the actual number of unknown parameters to be estimated when H0 is true is s =
(R − 1) + (C − 1), or s = R + C − 2.
For i = 1, . . . , R, and j = 1, . . . , C, let ˆEij denote the M.L.E., when H0 is true,
of the expected number of observations that will be classified in the ith row and the
jth column of the table. In this problem, the statistic Q defined by Eq. (10.2.4) will
have the following form:
Q =
 R
i=1
 C
j=1
(Nij
− ˆEij )2
ˆE
ij
. (10.3.4)
Furthermore, since the contingency table contains RC cells, and since s = R + C − 2
parameters are to be estimated when H0 is true, it follows that when H0 is true and
n→∞, the c.d.f. of Q converges to the c.d.f. of the χ2 distribution for which the
number of degrees of freedom is RC − 1− s = (R − 1)(C − 1).
Next, we shall consider the form of the estimator ˆEij . The expected number
of observations in the ith row and the jth column is simply npij . When H0 is true,
pij
= pi+p+j . Therefore, if ˆpi+ and ˆp+j denote the M.L.E.’s of pi+ and p+j , then it
follows that ˆEij
= nˆpi+ ˆp+j . Next, since pi+ is the probability that an observation will
be classified in the ith row, ˆpi+ is simply the proportion of observations in the sample
that are classified in the ith row; that is, ˆpi+ = Ni+/n. Similarly, ˆp+j
= N+j/n, and it
follows that
ˆE
ij
= n


Ni+
n
 

N+j
n
 
=
Ni+N+j
n
. (10.3.5)
If we substitute this value of ˆEij into Eq. (10.3.4), we can calculate the value
of Q from the observed values of Nij . The null hypothesis H0 should be rejected if
Q ≥ c, where c is an appropriately chosen constant.When H0 is true, and the sample
size n is large, the distribution of Q will be approximately the χ2 distribution with
(R − 1)(C − 1) degrees of freedom.
644 Chapter 10 Categorical Data and Nonparametric Methods
Table 10.13 Expected cell counts for Example 10.3.2
Candidate preferred
Curriculum A B Undecided Totals
Engineering and science 27.14 18.88 12.98 59
Humanities and social sciences 22.08 15.36 10.56 48
Fine arts 17.48 12.16 8.36 38
Industrial and public administrations 25.30 17.60 12.10 55
Totals 92 64 44 200
Example
10.3.2
College Survey. Suppose that we wish to test the hypotheses (10.3.3) on the basis of
the data in Table 10.12. By using the totals given in the table, we find that N1+ = 59,
N2+ = 48, N3+ = 38, and N4+ = 55, and also N+1 = 92, N+2 = 64, and N+3 = 44.
Because n = 200, it follows from Eq. (10.3.5) that the 4 × 3 table of values of ˆEij
is as shown in Table 10.13.
The values of Nij given in Table 10.12 can now be compared with the values of
ˆE
ij in Table 10.13. The value of Q defined by Eq. (10.3.4) turns out to be 6.68. Since
R = 4 and C = 3, the corresponding tail area is to be found from a table of the χ2
distribution with (R − 1)(C − 1) = 6 degrees of freedom. Its value is larger than 0.3.
Therefore, we would only reject H0 at level α0 if α0 ≥ 0.3.  
Example
10.3.3
Montana Outlook Poll. In Example 10.1.4, we examined the surveyed opinions of
Montana residents on their personal financial status. Another question that survey
participants were asked was an income range. Table 10.14 gives a cross-tabulation of
the answers to both questions.We can use the χ2 test to test the null hypothesis that
income is independent of opinion on personal financial status. Table 10.15 gives the
expected counts for each cell of Table 10.14 under the null hypothesis. We can now
compute the test statistic Q = 5.210 with (3 − 1) × (3 − 1) = 4 degrees of freedom.
The p-value associated with this value of Q is 0.266, so we would only reject the null
hypothesis at a level α0 greater than 0.266.  
Table 10.14 Responses to two questions from Montana
Outlook Poll
Personal financial status
Income range Worse Same Better Total
Under $20,000 20 15 12 47
$20,000 –$35,000 24 27 32 83
Over $35,000 14 22 23 59
Total 58 64 67 189
10.3 Contingency Tables 645
Table 10.15 Expected cell counts for Table 10.14 under the
assumption of independence
Personal financial status
Income range Worse Same Better Total
Under $20,000 14.42 15.92 16.66 47
$20,000–$35,000 25.47 28.11 29.42 83
Over $35,000 18.11 19.98 20.92 59
Total 58 64 67 189
Summary
We learned how to test the null hypothesis that two discrete random variables
are independent based on a random sample of n pairs. First, form a contingency
table of the counts for every pair of possible observed values. Then, estimate the
two marginal distributions of the two random variables. Under the null hypothesis
that the random variables are independent, the expected count for value i of
the first variable and value j of the second variable is n times the product of the
two estimated marginal probabilities. We then form the χ2 statistic Q by summing
(observed−expected)2/expected over all of the cells in the contingency table. The
degrees of freedom is (R − 1)(C − 1), where R is the number of rows in the table and
C is the number of columns.
Exercises
1. Chase and Dummer (1992) studied the attitudes of
school-aged children in Michigan. The children were
asked which of the following was most important to them:
good grades, athletic ability, or popularity. Additional
information about each child was also collected, and
Table 10.16 shows the results for 478 children classified
by sex and their response to the survey question. Test the
null hypothesis that a child’s answer to the survey question
is independent of his or her sex.
Table 10.16 Data for Exercise 1 from Chase and Dummer
(1992)
Good grades Athletic ability Popularity
Boys 117 60 50
Girls 130 30 91
2. Show that the statisticQdefined by Eq. (10.3.4) can be
rewritten in the form
Q =
⎛
⎝
 R
i=1
 C
j=1
N2
ij
ˆE
ij
⎞
⎠ − n.
3. Show that if C = 2, the statistic Q defined by Eq.
(10.3.4) can be rewritten in the form
Q = n
N+2
 
 R
i=1
N2
i1
ˆE
i1
− N+1
 
.
4. Suppose that an experiment is carried out to see if
there is any relation between a man’s age and whether
he wears a moustache. Suppose that 100 men, 18 years
of age or older, are selected at random, and each man
is classified according to whether or not he is between
18 and 30 years of age and also according to whether
or not he wears a moustache. The observed numbers are
given in Table 10.17. Test the hypothesis that there is no
relationship between a man’s age and whether he wears a
moustache.
646 Chapter 10 Categorical Data and Nonparametric Methods
Table 10.17 Data for Exercise 4
Wears a Does not wear
moustache a moustache
Between 18 and 30 12 28
Over 30 8 52
5. Suppose that 300 persons are selected at random from
a large population, and each person in the sample is classified
according to blood type, O, A, B, or AB, and also
according to Rh, positive or negative. The observed numbers
are given in Table 10.18. Test the hypothesis that the
two classifications of blood types are independent.
Table 10.18 Data for Exercise 5
O A B AB
Rh positive 82 89 54 19
Rh negative 13 27 7 9
6. Suppose that a store carries two different brands, A
and B, of a certain type of breakfast cereal. Suppose that
during a one-week period the store noted whether each
package of this type of cereal that was purchased was
brand A or brand B and also noted whether the purchaser
was a man or a woman. (A purchase made by a child
or by a man and a woman together was not counted.)
Suppose that 44 packages were purchased, and that the
results were as shown in Table 10.19. Test the hypothesis
that the brand purchased and the sex of the purchaser are
independent.
Table 10.19 Data for Exercise 6
Brand A Brand B
Men 9 6
Women 13 16
7. Consider a two-way contingency table with three rows
and three columns. Suppose that, for i = 1, 2, 3 and j =
1, 2, 3, the probability pij that an individual selected at
random from a given population will be classified in the
ith row and the jth column of Table 10.20.
Table 10.20 Data for Exercise 7
0.15 0.09 0.06
0.15 0.09 0.06
0.20 0.12 0.08
a. Show that the rows and columns of this table are
independent by verifying that the values pij satisfy
the null hypothesis H0 in Eq. (10.3.3).
b. Generate a random sample of 300 observations from
the given population using a uniform pseudo-random
number generator. Select 300 pseudo-random
numbers between 0 and 1 and proceed as follows:
Since p11 = 0.15, classify a pseudo-random number
x in the first cell if x <0.15. Since p11 + p12 = 0.24,
classify a pseudo-random number x in the second cell
if 0.15 ≤x <0.24. Continue in this way for all nine
cells. For example, since the sum of all probabilities
except p33 is 0.92, a pseudo-random number x will
be classified in the lower-right cell of the table if
x ≥ 0.92.
c. Consider the 3× 3 table of observed values Nij generated
in part (b). Pretend that the probabilities pij
were unknown, and test the hypotheses (10.3.3).
8. If all the students in a class carry out Exercise 7 independently
of each other and use different pseudo-random
numbers, then the different values of the statistic Q obtained
by the different students should form a random
sample from the χ2 distribution with four degrees of freedom.
If the values of Q for all the students in the class are
available to you, test the hypothesis that these values form
such a random sample.
9. Consider a three-way contingency table of sizeR ×C ×
T. For i = 1, . . . , R, j = 1, . . . , C, and k = 1, . . . , T , let
pij k denote the probability that an individual selected at
random from a given population will fall into the (i, j , k)
cell of the table. Let
pi++ =
 C
j=1
 T
k=1
pij k, p+j+ =
 R
i=1
 T
k=1
pij k,
p++k
=
 R
i=1
 C
j=1
pij k.
On the basis of a random sample of n observations from
the given population, construct a test of the following
hypotheses:
H0: pij k
= pi++p+j+p++k for all values of i, j, and k,
H1: The hypothesis H0 is not true.
10. Consider again the conditions of Exercise 9. For i =
1, . . . , R, and j = 1, . . . , C, let
pij+ =
 T
k=1
pij k.
On the basis of a random sample of n observations from
the given population, construct a test of the following
hypotheses:
H0: pij k
= pij+p++k for all values of i, j, and k,
H1: The hypothesis H0 is not true.
10.4 Tests of Homogeneity 647
10.4 Tests of Homogeneity
Imagine that we select subjects from several different populations, and that we
observe a discrete random variable for each subject. We might be interested in
whether or not the distribution of that discrete random variable is the same in each
population. There is a χ2 test of this hypothesis that is very similar to the χ2 test of
independence.
Samples from Several Populations
Example
10.4.1
College Survey. Consider again the problem described in Example 10.3.1. There we
assumed that a random sample of 200 students was drawn from the entire enrollment
at a large university and classified in a contingency table according to the curriculum
in which he is enrolled and according to his preference for either of two political
candidates A and B. The resulting table appears in Table 10.12.
Suppose, now, that instead of sampling 200 students at random, we had actually
sampled separately from each of the four curricula. That is, suppose that we had
sampled 59 students at random from those enrolled in engineering and science
along with 48 students selected at random from those enrolled in humanities and
social sciences and 38 from those enrolled in fine arts and 55 from those enrolled in
industrial and public administration. After the students are sampled, those in each
curriculum are then classified according to whether they prefer candidate A or B, or
are undecided. Suppose that the responses within each curriculum are the same as
those reported in Table 10.12.
We might still be interested in investigating whether there is a relationship
between the curriculum in which a student is enrolled and the candidate he prefers.
This time, we might word the question of interest as follows: Are the distributions of
candidate preferences within the different curricula the same or do the students in
different curricula have different distributions of preferences among the candidates?
 
In Example 10.4.1, we are assuming that we have obtained a table of values
identical to Table 10.12; we are assuming now that this table was obtained by taking
four different random samples from the different populations of students defined by
the four rows of the table. This is in contrast to Example 10.3.1, in which we assumed
that all students were drawn from one population and then classified according to the
values of two variables: preference and curriculum. In the present context, we are
interested in testing the hypothesis that, in all four populations, the same proportion
of students prefers candidate A, the same proportion prefers candidate B, and the
same proportion is undecided.
In general, we shall consider a problem in which random samples are taken from
R different populations, and each observation in each sample can be classified as one
of C different types. Thus, the data obtained from the R samples can be represented
in an R × C table. For i = 1, . . . , R, and j = 1, . . . , C, we shall let pij denote the
probability that an observation chosen at random from the ith population will be of
type j . Thus,
 C
j=1
pij
= 1 for i = 1, . . . , R.
648 Chapter 10 Categorical Data and Nonparametric Methods
The hypotheses to be tested are as follows:
H0: p1j
= p2j
= . . . = pRj for j = 1, . . . , C,
H1: The hypothesis H0 is not true.
(10.4.1)
The null hypothesis H0 in (10.4.1) states that all the distributions from which the R
different samples are drawn are actually alike, that is, that the R distributions are
identical. If the null hypothesis in (10.4.1) were true, then combining the R populations
would produce one homogeneous population with regard to the distribution
of the random variables we are studying. For this reason, a test of the hypotheses
(10.4.1) is called a test of homogeneity of the R distributions.
For i = 1, . . . , R, we shall let Ni+ denote the number of observations in the
random sample from the ith population; for j = 1, . . . , C, we shall let Nij denote
the number of observations in this random sample that are of type j . Thus,
 C
j=1
Nij
= Ni+ for i = 1, . . . , R.
Furthermore, if we let n denote the total number of observations in all R samples
and N+j denote the total number of observations of type j in the R samples, then all
the relations in Eqs. (10.3.1) and (10.3.2) will again be satisfied.
The χ2 Test of Homogeneity
We shall now develop a test procedure for the hypotheses (10.4.1). Suppose for the
moment that the probabilities pij are known, and consider the following statistic
calculated from the observations in the ith random sample:
 C
j=1
(Nij
− Ni+pij )2
Ni+pij
.
This statistic is just the standard χ2 statistic, introduced in Eq. (10.1.2), for the random
sample ofNi+ observations from the ith population. Therefore, when the sample size
Ni+ is large, the distribution of this statistic will be approximately the χ2 distribution
with C − 1 degrees of freedom.
If we now sum this statistic over the R different samples, we obtain the following
statistic:
 R
i=1
 C
j=1
(Nij
− Ni+pij )2
Ni+pij
. (10.4.2)
Since the observations in the R samples are drawn independently, the distribution
of the statistic (10.4.2) will be the distribution of the sum of R independent random
variables, each of which has approximately the χ2 distribution with C − 1 degrees of
freedom. Hence, the distribution of the statistic (10.4.2) will be approximately the χ2
distribution with R(C − 1) degrees of freedom.
Since the probabilities pij are not actually known, their values must be estimated
from the observed numbers in the R random samples.When the null hypothesisH0 is
true, theR random samples are actually drawn from the same distribution.Therefore,
the M.L.E. of the probability that an observation in each of these samples will be of
type j is simply the proportion of all the observations in the R samples that are of
type j . In other words, the M.L.E. of pij is the same for all values of i (i = 1, . . . , R),
and this estimator is ˆpij
= N+j/n. When this M.L.E. is substituted into (10.4.2), we
10.4 Tests of Homogeneity 649
obtain the statistic
Q =
 R
i=1
 C
j=1
(Nij
− ˆEij )2
ˆE
ij
, (10.4.3)
where
ˆE
ij
=
Ni+N+j
n
. (10.4.4)
It can be seen that Eqs. (10.4.3) and (10.4.4) are precisely the same as Eqs. (10.3.4)
and (10.3.5). Thus, the statisticQto be used for the test of homogeneity in this section
is precisely the same as the statistic Q to be used for the test of independence in
Sec. 10.3.We shall now show that the number of degrees of freedom is also precisely
the same for the test of homogeneity as for the test of independence.
Because the distributions of the R populations are alike when H0 is true, and
because
 C
j=1 pij
= 1 for this common distribution, we have estimated C − 1 parameters
in this problem. Therefore, the statistic Q will have approximately the χ2
distribution with R(C − 1) − (C − 1) = (R − 1)(C − 1) degrees of freedom. This number
is the same as that found in Sec. 10.3.
In summary, consider Table 10.12 again. The statistical analysis of this table will
be the same for either of the following two procedures: The 200 observations are
drawn as a single random sample from the entire enrollment of the university, and
a test of independence is carried out; or the 200 observations are drawn as separate
random samples from four different groups of students, and a test of homogeneity is
carried out. In either case, in a problem of this type with R rows and C columns, we
should calculate the statistic Q defined by Eqs. (10.4.3) and (10.4.4), and we should
assume that its distribution when H0 is true will be approximately the χ2 distribution
with (R − 1)(C − 1) degrees of freedom.
Note: Why the two χ2 tests look so similar. The reason that the same calculation
is appropriate for both the χ2 test of independence and the χ2 test of homogeneity
is the following: First, consider the situation of Sec. 10.3, in which one sample is
drawn and the random variables corresponding to rows and columns are measured.
Independence of the row and column variables is equivalent to the conditional
distribution of the column variable given a value of the row variable being the
same for every value of the row variable. Hence, the test of independence tests that
the conditional distributions of the column variable are the same for each value of
the row variable. Next, think of the row variable as defining subpopulations (for
example, different curricula in Table 10.12). The conditional distributions of the
column variable given each value of the row variable are the distributions of the
column variable within each subpopulation. The test of homogeneity tests that the
distributions within the subpopulations are the same if the samples had been drawn
separately from each subpopulation rather than drawn at random from the entire
population.
Comparing Two or More Proportions
Example
10.4.2
Television Survey. Suppose that independent samples are drawn from adults in several
cities. Each sampled person is asked whether or not they watched a particular
television program. Suppose that we want to test the null hypothesis H0 that the proportion
of adults who watched a certain television program was the same in each of
the cities. To be specific, suppose that there are R different cities (R ≥ 2). Suppose
650 Chapter 10 Categorical Data and Nonparametric Methods
Table 10.21 Form of table for comparing
two or more proportions
Watched Did not Sample
City program watch size
1 N11 N12 N1+
2 N21 N22 N2+
...
R NR1 NR2 NR+
that for i = 1, . . . ,R, a random sample of Ni+ adults is selected from city i, the number
in the sample who watched the program isNi1, and the number who did not watch
the program isNi2 = Ni+ − Ni1. These data can be presented in an R × 2 table such as
Table 10.21. The hypotheses to be tested will have the same form as the hypotheses
(10.4.1). Hence, when the null hypothesis H0 is true, that is, when the proportion of
adults who watched the program is the same in all R cities, the statistic Q defined
by Eqs. (10.4.3) and (10.4.4) will have approximately the χ2 distribution with R − 1
degrees of freedom.  
The reasoning in Example 10.4.2 extends to other problems in which we wish to
compare a collection of proportions.
Example
10.4.3
A Clinical Trial. The data in Table 2.1 (see Example 2.1.4 on page 57) are the numbers
of subjects in four different treatment groups in a clinical trial together with the
numbers who did or did not relapse after treatment. We might wish to test the null
hypothesis that the probability of no relapse is the same in all four treatment groups.
We can easily compute the statistic Q in Eq. (10.4.3) to be 10.80. This is the 0.987
quantile of the χ2 distribution with three degrees of freedom. That is, the p-value is
0.013, and the null hypothesis of equal probabilities would be rejected at every level
α0 ≥ 0.013.  
Correlated 2 × 2 Tables
We shall now describe a type of problem in which the use of the χ2 test of homogeneity
would not be appropriate. Suppose that 100 persons were selected at random in
a certain city, and that each person was asked whether she thought the service provided
by the fire department in the city was satisfactory. Shortly after this survey was
carried out, a large fire occurred in the city. Suppose that after this fire, the same 100
persons were again asked whether they thought that the service provided by the fire
department was satisfactory. The results are presented in Table 10.22.
Table 10.22 has the same general appearance as other tables we have been
considering in this section. However, it would not be appropriate to carry out a χ2
test of homogeneity for this table, because the observations taken before the fire
and the observations taken after the fire are not independent. Although the total
number of observations in Table 10.22 is 200, only 100 independently chosen persons
were questioned in the surveys. It is reasonable to believe that a particular person’s
10.4 Tests of Homogeneity 651
Table 10.22 Correlated 2 × 2 table
Satisfactory Unsatisfactory
Before the fire 80 20
After the fire 72 28
Table 10.23 2 × 2 table for correlated responses
After the fire
Before the fire Satisfactory Unsatisfactory
Satisfactory 70 10
Unsatisfactory 2 18
opinion before the fire and her opinion after the fire are dependent. For this reason,
Table 10.22 is called a correlated 2 × 2 table.
The proper way to display the opinions of the 100 persons in the random sample
is shown in Table 10.23. It is not possible to construct Table 10.23 from the data
in Table 10.22 alone. The entries in Table 10.22 are simply the marginal totals of
Table 10.23. However, in order to construct Table 10.23, it is necessary to go back to
the original data and, for each person in the sample, to consider her opinion before
the fire and her opinion after the fire.
Furthermore, it usually is not appropriate to carry out either a χ2 test of independence
or a χ2 test of homogeneity for Table 10.23, because the hypotheses that are
tested by either of these procedures usually are not those in which a researcher would
be interested in this type of problem. In fact, in this problem a researcher would basically
be interested in the answers to one or both of the following two questions:
First, what proportion of the persons in the city changed their opinions about the fire
department after the fire occurred? Second, among those persons in the city who did
change their opinions after the fire, were the changes predominantly in one direction
rather than the other?
Table 10.23 provides information pertaining to both these questions. According
to Table 10.23, the number of persons in the sample who changed their opinions after
the fire was 10 + 2 = 12. Furthermore, among the 12 persons who did change their
opinions, the opinions of 10 of them were changed from satisfactory to unsatisfactory
and the opinions of two of them were changed from unsatisfactory to satisfactory.On
the basis of these statistics, it is possible to make inferences about the corresponding
proportions for the entire population of the city.
In this example, the M.L.E. ˆ θ of the proportion of the population who changed
their opinions after the fire is 0.12. Also, among those who did change their opinions,
the M.L.E. ˆp12 of the proportion who changed from satisfactory to unsatisfactory is
5/6. Of course, if ˆ θ is very small in a particular problem, then there is little interest in
the value of ˆp12.
652 Chapter 10 Categorical Data and Nonparametric Methods
Summary
When we sample discrete random variables from several populations, we might
be interested in the null hypothesis that the distribution of the random variables
is the same in all populations. We can perform a χ2 test of this null hypothesis
as follows: Create a new variable with values equal to the names of the different
populations. Next, pretend as if each observation consists of the original discrete
random variable together with the new “population name” variable. Finally, compute
the χ2 test statistic Q from Sec. 10.3 with the same degrees of freedom. For the type
of data considered in this section, the “population name” for each observation is
known before sampling begins, and hence it is not a random variable. Whether the
population name is known ahead of time or is observed as part of the sampled data
(as in Sec. 10.3), the mechanics of the χ2 test are the same.
Exercises
1. The survey of Chase and Dummer (1992) discussed in
Exercise 1 of Sec. 10.3 was actually collected by sampling
from three subpopulations according to the locations of
the schools: rural, suburban, and urban. Table 10.24 shows
the responses to the survey question classified by school
location. Test the null hypothesis that the distribution of
responses is the same in all three types of school location.
Table 10.24 Data for Exercise 1 from Chase
and Dummer (1992)
Good Athletic
grades ability Popularity
Rural 57 42 50
Suburban 87 22 42
Urban 103 26 49
2. An examination was given to 500 high school seniors in
each of two large cities, and their grades were recorded as
low, medium, or high. The results are given in Table 10.25.
Test the hypothesis that the distributions of scores among
seniors in the two cities are the same.
Table 10.25 Data for Exercise 2
Low Medium High
City A 103 145 252
City B 140 136 224
3. Every Tuesday afternoon during the school year, a certain
university brought in a visiting speaker to present a
lecture on some topic of current interest. On the day after
the fourth lecture of the year, random samples of 70
freshmen, 70 sophomores, 60 juniors, and 50 seniors were
selected from the student body at the university, and each
of these students was asked how many of the four lectures
she had attended. The results are given in Table 10.26. Test
the hypothesis that freshmen, sophomores, juniors, and
seniors at the university attended the lectures with equal
frequency.
Table 10.26 Data for Exercise 3
Number of lectures attended
0 1 2 3 4
Freshmen 10 16 27 6 11
Sophomores 14 19 20 4 13
Juniors 15 15 17 4 9
Seniors 19 8 6 5 12
4. Suppose that five persons shoot at a target. Suppose
also that for i = 1, . . . , 5, person i shoots ni times and hits
the target yi times, and that the values of ni and yi are
as given in Table 10.27. Test the hypothesis that the five
persons are equally good marksmen.
Table 10.27 Data for Exercise 4
i ni yi
1 17 8
2 16 4
3 10 7
4 24 13
5 16 10
10.5 Simpson’s Paradox 653
5. A manufacturing plant has preliminary contracts with
three different suppliers of machines. Each supplier delivered
15 machines, which were used in the plant for four
months in preliminary production. It turned out that one
of the machines from supplier 1 was defective, seven of
the machines from supplier 2 were defective, and seven
of the machines from supplier 3 were defective. The plant
statistician decided to test the null hypothesis H0 that the
three suppliers provided the same quality. Therefore, he
set up Table 10.28 and carried out a χ2 test. By summing
the values in the bottom row of Table 10.28, he found that
the value of the χ2 statistic was 24/5 with two degrees of
freedom.Hethen found from a table of the χ2 distribution
that H0 should be accepted when the level of significance
is 0.05. Criticize this procedure and provide a meaningful
analysis of the observed data.
Table 10.28 Data for Exercise 5
Supplier
1 2 3
Number of defectives Ni 1 7 7
Expected number of defectives
Ei under H0
5 5 5
(Ni
− Ei)2
Ei
16
5
4
5
4
5
6. Suppose that 100 students in a physical education class
shoot at a target with a bow and arrow, and 27 students
hit the target. These 100 students are then given a demonstration
on the proper technique for shooting with the bow
and arrow. After the demonstration, they again shoot at
the target. This time 35 students hit the target.What additional
information, if any, is needed in order to investigate
the hypothesis that the demonstration was helpful?
7. As people entered a certain meeting, n persons were selected
at random, and each was asked either to name one
of two political candidates she favored in a forthcoming
election or to say “undecided” if she had no real preference.
During the meeting, the people heard a speech on
behalf of one of the candidates. After the meeting, each of
the same n persons was again asked to express her opinion.
Describe a method for evaluating the effectiveness of
the speaker.
10.5 Simpson’s Paradox
When tabulating discrete data, we need to be careful about aggregating groups.
Suppose that a survey has two questions. If we construct a single table of responses
to the two questions that includes both men and women, we might get a very
different picture than if we construct separate tables for the responses of men and
women.
An Example of the Paradox
Example
10.5.1
Comparing Treatments in an Aggregated Table. Suppose that an experiment is carried
out in order to compare a new treatment for a particular disease with the standard
treatment for the disease. In the experiment, 80 subjects suffering from the disease
are treated, 40 subjects receiving the new treatment and 40 receiving the standard
treatment. After a certain period of time, it is observed how many of the subjects in
each group have improved and how many have not. Suppose that the overall results
for all 80 patients are as shown in Table 10.29.
According to this table, 20 of the 40 subjects who received the new treatment
improved, and 24 of the 40 subjects who received the standard treatment improved.
Thus, 50 percent of the subjects improved under the new treatment, whereas 60
percent improved under the standard treatment. On the basis of these results, the
new treatment appears inferior to the standard treatment.  
654 Chapter 10 Categorical Data and Nonparametric Methods
Table 10.29 Results of experiment comparing two treatments
Percent
All patients Improved Not improved improved
New treatment 20 20 50
Standard treatment 24 16 60
Table 10.30 Table 10.29 disaggregated by sex
Percent
Men only Improved Not improved improved
New treatment 12 18 40
Standard treatment 3 7 30
Women only
New treatment 8 2 80
Standard treatment 21 9 70
Many contingency tables, such as Table 10.29, summarize the results of a study
in only one of several possible ways. The next example looks at the same data from
a different point of view and draws a different conclusion.
Example
10.5.2
Comparing Treatments in an Disaggregated Table. In order to investigate more carefully
the efficacy of the new treatment in Example 10.5.1, we might compare it with the
standard treatment just for the men in the sample and, separately, just for the women
in the sample. The results in Table 10.29 can thus be partitioned into two tables,
one pertaining just to men and the other just to women. This process of splitting
the overall data into disjoint components pertaining to different subgroups of the
population is called disaggregation.
Suppose that when the values in Table 10.29 are disaggregated by considering
the men and the women separately, the results are as shown in Table 10.30. It can be
verified that when the data in these separate tables are combined, or aggregated, we
again obtain Table 10.29. However, Table 10.30 contains a big surprise because the
new treatment appears to be superior to the standard treatment both for men and
for women. Specifically, 40 percent of the men (12 out of 30) who received the new
treatment improved, but only 30 percent of the men (3 out of 10) who received the
standard treatment improved. Furthermore, 80 percent of the women (8 out of 10)
who received the new treatment improved, but only 70 percent of the women (21 out
of 30) who received the standard treatment improved.  
Tables 10.29 and 10.30 together yield somewhat anomalous results. According
to Table 10.30, the new treatment is superior to the standard treatment both for men
and for women, but according to Table 10.29, the new treatment is inferior to the
10.5 Simpson’s Paradox 655
standard treatment when all the subjects are aggregated. This type of result is known
as Simpson’s paradox.
It should be emphasized that Simpson’s paradox is not a phenomenon that occurs
because we are working with small samples. The small numbers in Tables 10.29 and
10.30 were used merely for convenience in this explanation. Each of the entries in
these tables could be multiplied by 1000 or by 1,000,000 without changing the results.
The Paradox Explained
Of course, Simpson’s paradox is not actually a paradox; it is merely a result that is
surprising and puzzling to someone who has not seen or thought about it before. It
can be seen from Table 10.30 that in the example we are considering, women have
a higher rate of improvement from the disease than men have, regardless of which
treatment they receive. Furthermore, most of the women in the sample received the
standard treatment while most of the men received the new treatment. Specifically,
among the 40 men in the sample, 30 received the new treatment, and only 10 received
the standard treatment, whereas among the 40 women in the sample, these numbers
are reversed.
The new treatment looks bad in the aggregated table because most of the people
who weren’t going to respond well to either treatment got the new treatment while
most of the people who were going to respond well to either treatment got the
standard treatment. Even though the numbers of men and women in the experiment
were equal, a high proportion of the women and a low proportion of the men received
the standard treatment. Since women have a much higher rate of improvement than
men, it is found in the aggregated Table 10.29 that the standard treatment manifests
a higher overall rate of improvement than does the new treatment.
Simpson’s paradox demonstrates dramatically the dangers in making inferences
from an aggregated table like Table 10.29. To make sure that Simpson’s paradox
cannot occur in an experiment like the one just described, the proportions of men
and women among the subjects who receive the new treatment must be the same, or
approximately the same, as the proportions of men and women among the subjects
who receive the standard treatment. It is not necessary that there be equal numbers
of men and women in the sample.
We can express Simpson’s paradox in probability terms. Let A denote the event
that a subject chosen for the experiment will be a man, and let Ac denote the event
that the subject will be a woman. Also, let B denote the event that a subject will
receive the new treatment, and let Bc denote the event that the subject will receive
the standard treatment. Finally, let I denote the event that a subject will improve.
Simpson’s paradox then reflects the fact that it is possible for all three of the following
inequalities to hold simultaneously:
Pr(I |A ∩ B) > Pr(I |A ∩ Bc),
Pr(I |Ac ∩ B) > Pr(I |Ac ∩ Bc), (10.5.1)
Pr(I |B) < Pr(I |Bc).
The discussion that we have just given in regard to the prevention of Simpson’s
paradox can be expressed as follows: If Pr(A|B) = Pr(A|Bc), then it is not possible
for all three inequalities in (10.5.1) to hold (see Exercise 5). Similarly, if Pr(B|A) =
Pr(B|Ac), then it is not possible for all three inequalities in (10.5.1) to hold (see
Exercise 3).
The possibility of Simpson’s paradox lurks within every contingency table. Even
though we might take care to design a particular experiment so that Simpson’s
656 Chapter 10 Categorical Data and Nonparametric Methods
paradox cannot occur when we disaggregate with respect to men and women, it is
always possible that there is some other variable, such as the age of the subject or the
intensity and the stage of the disease, with respect to which disaggregation would lead
us to a conclusion directly opposite to that indicated by the aggregated table. Once an
experiment is designed to prevent Simpson’s paradox with respect to disaggregations
that can be identified in advance, subjects are generally assiged randomly to the
possible treatments in the hopes of minimizing the chance that Simpson’s paradox
will arise with respect to an unforeseen disaggrageation.
Example
10.5.3
Comparing Treatments in an Aggregated Table. In the example of this section, it would
be sensible to assign 20 men and 20 women to each of the two treatments. Which
20 men and which 20 women get assigned to each treatment would be determined
by randomization in order to minimize the chance of an unforeseen occurrence of
Simpson’s paradox.
If there were other information, such as severity of disease, that were available at
the start of the experiment, the groups of men and women should each be partitioned
according to that additional information before being randomly assigned to the
treatments. For example, suppose that 12 men and 8 women have more severe cases
of the disease before the experiment begins.We should then assign 6 of the men and 4
of the women with more severe cases to each tretment.We should also assign 4 of the
men and 6 of the women with less severe cases to each treatment. This balances the
factors (sex, severity, and treatment) that are expected to affect the experimental
outcome. If there is another unforeseen factor that will affect the outcome, it is
still possible, but unlikely, that the random assignment described above will allow
Simpson’s paradox to arise with regard to that one factor. If there are dozens of
additional important factors, some degree of imbalance will be inevitable even with
a randomized assignment.  
Summary
Simpson’s paradox occurs when the relationship between the two categorical variables
in every part of a disaggregated table is the opposite of the relationship between
those same two variables in the aggregated table.
Exercises
1. Consider two populations I and II. Suppose that 80 percent
of the men and 30 percent of thewomenin population
I have a certain characteristic, and that only 60 percent of
the men and 10 percent of the women in population II
have the characteristic. Explain how, under these conditions,
it might be true that the proportion of population II
having the characteristic is larger than the proportion of
population I having the characteristic.
2. Suppose that A and B are events such that 0 < Pr(A) <
1 and 0 < Pr(B) < 1. Show that Pr(A|B) = Pr(A|Bc) if and
only if Pr(B|A) = Pr(B|Ac).
3. Show that all three inequalities in (10.5.1) cannot hold
if Pr(B|A) = Pr(B|Ac).
4. Suppose that each adult subject in an experiment is
given either treatment I or treatment II. Prove that the
proportion of men among the subjects who receive treatment
I is equal to the proportion of men among the subjects
who receive treatment II if and only if the proportion
of all men in the experiment who receive treatment I is
equal to the proportion of all women who receive treatment
I.
5. Show that all three inequalities in (10.5.1) cannot hold
if Pr(A|B) = Pr(A|Bc).
6. It was believed that a certain university was discriminating
against women in its admissions policy because
30 percent of all the male applicants to the university were
10.6 Kolmogorov-Smirnov Tests 657
admitted, whereas only 20 percent of all the female applicants
were admitted. In order to determine which of the
five colleges in the university were most responsible for
this discrimination, the admissions rates for each college
were analyzed separately. Surprisingly, it was found that
in each college the proportion of female applicants who
were admitted to the college was actually larger than the
proportion of male applicants who were admitted. Discuss
and explain this result.
7. In an experiment involving 800 subjects, each subject
received either treatment I or treatment II, and each subject
was classified into one of the following four categories:
older males, younger males, older females, and younger
females. At the end of the experiment, it was determined
for each subject whether the treatment that the subject
had received was helpful or not. The results for each of
the four categories of subjects are given in Table 10.31.
a. Show that treatment II is more helpful than treatment
I within each of the four categories of subjects.
b. Show that if these four categories are aggregated into
only the two categories, older subjects and younger
subjects, then treatment I is more helpful than treatment
II within each of these categories.
c. Show that if the two categories in part (b) are aggregated
into a single category containing all 800 subjects,
then treatment II again appears to be more
helpful than treatment I.
Table 10.31 Data for Exercise 7
Older males Helpful Not
Treatment I 120 120
Treatment II 20 10
Younger males
Treatment I 60 20
Treatment II 40 10
Older females
Treatment I 10 50
Treatment II 20 50
Younger females
Treatment I 10 10
Treatment II 160 90
  10.6 Kolmogorov-Smirnov Tests
In Sec. 10.1, we used the χ2 test to test the null hypothesis that a random sample
came from a particular continuous distribution against the alternative hypothesis
that the sample did not come from that distribution. A more suitable test for these
hypotheses is introduced in this section. This test can also be extended to test the
null hypothesis that two independent samples came from the same distribution
against the alternative hypothesis that they came from two different distributions.
The Sample Distribution Function
Example
10.6.1
Failure Times of Ball Bearings. In Example 10.1.6, we used a χ2 goodness-of-fit test
to test the null hypothesis that the log-failure times of ball bearings came from the
normal distribution with mean 3.912 and variance 0.25. That test required us to
choose a somewhat arbitrary partition of the real line in order to convert the logfailure
times into count data. Is there a test procedure for such problems that does
not require an arbitrary aggregation into intervals that may have no physical meaning
in the application?  
The first step in trying to answer the question in Example 10.6.1 is to construct an
estimator of the distribution of the random sample that does not rely on the assumption
that the distribution was normal. Suppose that the random variables X1, . . . ,Xn
658 Chapter 10 Categorical Data and Nonparametric Methods
form a random sample from some continuous distribution, and let x1, . . . , xn denote
the observed values of X1, . . . , Xn. Since the observations come from a continuous
distribution, there is probability 0 that any two of the observed values x1, . . . , xn will
be equal. Therefore, we shall assume for simplicity that all n values are different.We
shall consider now a function Fn(x), which is constructed from the values x1, . . . , xn
and will serve as an estimate of the c.d.f. from which the sample was drawn.
Definition
10.6.1
Sample (Empirical) Distribution Function. Let x1, . . . , xn be the observed values of a
random sample X1, . . . , Xn. For each number x (−∞ < x <∞), define the value
Fn(x) as the proportion of observed values in the sample that are less than or equal
to x. In other words, if exactly k of the observed values in the sample are less than
or equal to x, then Fn(x) = k/n. The function Fn(x) defined in this way is called the
sample distribution function, or simply the sample c.d.f.Sometimes Fn(x) is called the
empirical c.d.f.
The sample c.d.f. for the data discussed in Example 10.6.1 appears in Fig. 10.1
together with the hypothesized normal c.d.f. mentioned in that example.
In general, the sample c.d.f. Fn(x) can be regarded as the c.d.f. of a discrete
distribution that assigns probability 1/n to each of the n values x1, . . . , xn. Thus, Fn(x)
will be a step function with a jump of magnitude 1/n at each point xi (i = 1, . . . , n).
If we let y1< y2 < . . . < yn denote the values of the order statistics of the sample, as
defined in Definition 7.8.2, then Fn(x) = 0 forx <y1; Fn(x) jumps to the value 1/n at
x = y1 and remains at 1/n for y1 ≤x <y2; Fn(x) jumps to the value 2/n at x = y2 and
remains at 2/n for y2 ≤x <y3; and so on.
Now let F(x) denote the c.d.f. of the distribution from which the random sample
X1, . . . , Xn was drawn. For each given number x (−∞ < x <∞), the probability
that any particular observation Xi will be less than or equal to x is F(x). Therefore,
it follows from the law of large numbers that as n→∞, the proportion Fn(x) of
observations in the sample that are less than or equal to x will converge in probability
to F(x). In symbols,
Fn(x)
p −→ F(x) for −∞< x <∞. (10.6.1)
The relation (10.6.1) expresses the fact that at each point x, the sample c.d.f. Fn(x)
will converge to the actual c.d.f. F(x) of the distribution from which the random
sample was taken. A collection of sample c.d.f.’s is sketched in Fig. 10.2 for a few
different sized samples from the the same distribution.
Figure 10.1 Sample c.d.f. of
log-failure times of ball bearings
together with the c.d.f. of
the normal distribution with
mean 3.912 and variance 0.25.
Log-failure time
Sample c.d.f.
1 2 3 4 5 6 7
0.2
0.4
0.6
0.8
1.0
0
10.6 Kolmogorov-Smirnov Tests 659
Figure 10.2 The sample
c.d.f. Fn(x) for n = 4, 8, 16.
0 x
1
x
x
Fn(x)
1
Fn(x)
1
Fn(x)
(a) n   4
(b) n   8
(c) n   16
y1
y1 0 y2 y3 y4 y5 y6 y7 y8
y1 0 y4 y3 y8 y12 y16
y2 y3 y4
Figure 10.3 The value of
Dn.
Fn(x)
Dn
F(x)
x
An even stronger result, known as the Glivenko-Cantelli lemma, states that
Fn(x) will converge to F(x) uniformly over all values of x. The proof is beyond the
scope of this book.
Theorem
10.6.1
Glivenko-Cantelli Lemma. Let Fn be the sample c.d.f. from an i.i.d. sample X1, . . . , Xn
from the c.d.f. F. Define
Dn
= sup
−∞<x<∞
|Fn(x) − F(x)|. (10.6.2)
Then Dn
p −→ 0.
A value of Dn is illustrated in Fig. 10.3 for a typical example. Before the values of
X1, . . . , Xn have been observed, the value of Dn is a random variable.
Theorem 10.6.1 implies that when the sample size n is large, the sample c.d.f.
Fn(x) is quite likely to be close to the c.d.f. F(x) over the entire real line. In this sense,
660 Chapter 10 Categorical Data and Nonparametric Methods
when the c.d.f. F(x) is unknown, the sample c.d.f. Fn(x) can be considered to be an
estimator of F(x). In another sense, however, Fn(x) is not a very reasonable estimator
of F(x).As we explained earlier, Fn(x) will be the c.d.f. of a discrete distribution that
is concentrated on n points, whereas we are assuming in this section that the unknown
c.d.f. F(x) is the c.d.f. of a continuous distribution. Some type of smoothed version of
Fn(x), from which the jumps have been removed, might yield a reasonable estimator
of F(x), but we shall not pursue this topic further here.
The Kolmogorov-Smirnov Test of a Simple Hypothesis
Suppose now that we wish to test the simple null hypothesis that the unknown c.d.f.
F(x) is actually a particular continuous c.d.f. F
∗
(x) against the general alternative
that the actual c.d.f. is not F
∗
(x). In other words, suppose that we wish to test the
following hypotheses:
H0: F(x) = F
∗
(x) for −∞< x <∞,
H1: The hypothesis H0 is not true.
(10.6.3)
This problem is a nonparametric problem because the unknown distribution from
which the random sample is taken might be any continuous distribution.
In Sec. 10.1, we described how the χ2 test of goodness-of-fit can be used to
test hypotheses having the form (10.6.3). That test, however, requires grouping the
observations into a finite number of intervals in an arbitrary manner. We shall now
describe a test of the hypotheses (10.6.3) that does not require such grouping.
As before, we shall let Fn(x) denote the sample c.d.f. Also, we shall now let D
∗
n
denote the following statistic:
D
∗
n
= sup
−∞<x<∞
|Fn(x) − F
∗
(x)|. (10.6.4)
In other words, D
∗
n is the maximum difference between the sample c.d.f. Fn(x) and
the hypothesized c.d.f. F
∗
(x). When the null hypothesis H0 in (10.6.3) is true, the
probability distribution of D
∗
n will be a certain distribution that is the same for every
possible continuous c.d.f. F
∗
(x) and does not depend on the particular c.d.f. F
∗
(x)
being studied in a specific problem. (See Exercise 13.) Tables of this distribution, for
various values of the sample size n, have been developed and are presented in many
published collections of statistical tables.
It follows from the Glivenko-Cantelli lemma that the value of D
∗
n will tend to
be small if the null hypothesis H0 is true, and D
∗
n will tend to be larger if the actual
c.d.f. F(x) is different from F
∗
(x). Therefore, a reasonable test procedure for the
hypotheses (10.6.3) is to reject H0 if n1/2D
∗
n > c, where c is an appropriate constant.
It is convenient to express the test procedure in terms of n1/2D
∗
n rather than
simply D
∗
n, because of the following result, which was established in the 1930s by
A. N. Kolmogorov and N. V. Smirnov.
Theorem
10.6.2
If the null hypothesis H0 is true, then for each given value t > 0,
lim
n→∞ Pr(n1/2D
∗
n
≤ t) = 1− 2
∞ 
i=1
(−1)i−1e
−2i2t2
. (10.6.5)
Thus, if the null hypothesis H0 is true, then as n→∞, the c.d.f. of n1/2D
∗
n will
converge to the c.d.f. given by the infinite series on the right side of Eq. (10.6.5). For
each value oft >0, we shall let H(t) denote the value on the right side of Eq. (10.6.5).
The values of H(t) are given in Table 10.32.
10.6 Kolmogorov-Smirnov Tests 661
Table 10.32 The c.d.f. H in Eq. (10.6.5)
t H(t) t H(t)
0.30 0.0000 1.20 0.8878
0.35 0.0003 1.25 0.9121
0.40 0.0028 1.30 0.9319
0.45 0.0126 1.35 0.9478
0.50 0.0361 1.40 0.9603
0.55 0.0772 1.45 0.9702
0.60 0.1357 1.50 0.9778
0.65 0.2080 1.60 0.9880
0.70 0.2888 1.70 0.9938
0.75 0.3728 1.80 0.9969
0.80 0.4559 1.90 0.9985
0.85 0.5347 2.00 0.9993
0.90 0.6073 2.10 0.9997
0.95 0.6725 2.20 0.9999
1.00 0.7300 2.30 0.9999
1.05 0.7798 2.40 1.0000
1.10 0.8223 2.50 1.0000
1.15 0.8580
Definition
10.6.2
Kolmogorov-Smirnov test. A test procedure that rejects H0 when n1/2D
∗
n
≥ c is called
a Kolmogorov-Smirnov test.
It follows from Eq. (10.6.5) that when the sample size n is large, the constant
c can be chosen from Table 10.32 to achieve, at least approximately, any specified
level of significance α0 (0 < α0 < 1). In fact, we should choose c to be the 1− α0
quantile H
−1(1− α0) of the distribution H. For example, by examining Table 10.32,
we see that H(1.36) ≈ 0.95, so H
−1(1− 0.05) = 1.36. Therefore, if the null hypothesis
H0 is true, then Pr(n1/2D
∗
n
≥ 1.36) = 0.05. It follows that the level of significance of a
Kolmogorov-Smirnov test with c = 1.36 will be 0.05.
Example
10.6.2
Testing Whether a Sample Comes from a Standard Normal Distribution. Suppose that it
is desired to test the null hypothesis that a certain random sample of 25 observations
was drawn from a standard normal distribution against the alternative that the
random sample was drawn from some other continuous distribution.The 25 observed
values in the sample, in order from the smallest to the largest, are designated as
y1, . . . , y25 and are listed in Table 10.33. The table also includes the value Fn(yi) of
the sample c.d.f. and the value  (yi) of the c.d.f. of the standard normal distribution.
By examining the values in Table 10.33, we find that D
∗
n, which is the largest difference
between Fn(x) and  (x), occurs when we pass from i = 4 to i = 5, that is,
as x increases from the point x =−0.99 toward the point x =−0.42. The comparison
of Fn(x) and  (x) over this interval is illustrated in Fig. 10.4, from which we
662 Chapter 10 Categorical Data and Nonparametric Methods
Table 10.33 Calculations for Kolmogorov-
Smirnov test
i yi Fn(yi)  (yi)
1 −2.46 0.04 0.0069
2 −2.11 0.08 0.0174
3 −1.23 0.12 0.1093
4 −0.99 0.16 0.1611
5 −0.42 0.20 0.3372
6 −0.39 0.24 0.3483
7 −0.21 0.28 0.4168
8 −0.15 0.32 0.4404
9 −0.10 0.36 0.4602
10 −0.07 0.40 0.4721
11 −0.02 0.44 0.4920
12 0.27 0.48 0.6064
13 0.40 0.52 0.6554
14 0.42 0.56 0.6628
15 0.44 0.60 0.6700
16 0.70 0.64 0.7580
17 0.81 0.68 0.7910
18 0.88 0.72 0.8106
19 1.07 0.76 0.8577
20 1.39 0.80 0.9177
21 1.40 0.84 0.9192
22 1.47 0.88 0.9292
23 1.62 0.92 0.9474
24 1.64 0.96 0.9495
25 1.76 1.00 0.9608
Figure 10.4 The value of
D
∗
n in Example 10.6.2.
x
Fn(x)
F(x)
D*
n
20.99 20.42
0.16
0.3372
10.6 Kolmogorov-Smirnov Tests 663
see that D
∗
n
= 0.3372 − 0.16 = 0.1772. Since n = 25 in this example, it follows that
n1/2D
∗
n
= 0.886. From Table 10.32, we find that H(0.886) = 0.6. Hence, the tail area
corresponding to the observed value of n1/2D
∗
n is 0.4, and we would not reject the
null hypothesis at levels α0 smaller than 0.4.  
It is important to emphasize again that when the sample size n is large, even a
small value of the tail area corresponding to the observed value of n1/2D
∗
n would not
necessarily indicate that the true c.d.f.F(x) was much different from the hypothesized
c.d.f.  (x).When n itself is large, even a small difference between the c.d.f. F(x) and
the c.d.f.  (x) would be sufficient to generate a large value of n1/2D
∗
n. Therefore,
before a statistician rejects the null hypothesis, he should make certain that there is
a plausible alternative c.d.f. with which the sample Fn(x) provides closer agreement.
The Kolmogorov-Smirnov Test for Two Samples
Example
10.6.3
Calcium Supplements and Blood Pressure. Exercise 10 in Sec. 9.6 contains data from
a study of the effect of a calcium supplement on blood pressure. A group of m = 10
men received a calcium supplement, and another group of n = 11 men received a
placebo.At the end of the study, the differences were calculated between each man’s
blood pressures at the start and at the end of a 12-week period. Suppose that we are
not willing to assume that the distributions of the measured differences are normal
distributions. Can we still construct a procedure for testing the null hypothesis that
the distributions of differences in the treatment and placebo groups are the same
versus the alternative hypothesis that the distributions are different?  
Consider a problem in which a random sample of m observations X1, . . . , Xm is
taken from a distribution for which the c.d.f. F(x) is unknown, and an independent
random sample of n observations Y1, . . . , Yn is taken from another distribution for
which the c.d.f. G(x) is also unknown.We shall assume that both F(x) and G(x) are
continuous functions and that it is desired to test the hypothesis that these functions
are identical, without specifying their common form. Thus, the following hypotheses
are to be tested:
H0: F(x) = G(x) for −∞< x <∞,
H1: The hypothesis H0 is not true.
(10.6.6)
We shall let Fm(x) denote the sample c.d.f. calculated from the observed values
of X1, . . . , Xm and let Gn(x) denote the sample c.d.f. calculated from the observed
values of Y1, . . . , Yn. Furthermore, we shall consider the statistic Dmn, which is
defined as follows:
Dmn
= sup
−∞<x<∞
|Fm(x) − Gn(x)|. (10.6.7)
The value of Dmn is illustrated in Fig. 10.5 for a typical example in which m = 5 and
n = 3.
When the null hypothesis H0 is true and F(x) and G(x) are identical functions,
the sample c.d.f.’s Fm(x) and Gn(x) will tend to be close to each other. In fact, when
H0 is true, it follows from the Glivenko-Cantelli lemma that
Dmn
p −→ 0, as both m→∞and n→∞. (10.6.8)
It seems reasonable, therefore, to use a test procedure that specifies rejecting H0
when Dmn is large. The following theorem, whose proof is beyond the scope of this
664 Chapter 10 Categorical Data and Nonparametric Methods
Figure 10.5 A representation
of Fm(x), Gn(x), andDmn
for m = 5 and n = 3.
x x 1 x2 y1 x3 x4 y2 y3 x5
Fm(x)
Dmn
Gn(x)
text, gives us the asymptotic distribution of Dmn, which we can use to construct an
approximate test.
Theorem
10.6.3
Two-Sample Kolmogorov-Smirnov Statistic. For each value oft >0, let H(t) denote the
right side of Eq. (10.6.5). If the null hypothesis H0 in (10.6.6) is true, then
lim
m→∞, n→∞ Pr
 

mn
m + n
 1/2
Dmn
≤ t
 
= H(t). (10.6.9)
Values of the function H(t) are given in Table 10.32. The large-sample approximate
test of the hypotheses in (10.6.6) makes use of the statistic in (10.6.9).
Definition
10.6.3
Two-Sample Kolmogorov-Smirnov Test. A test procedure that rejects H0 when


mn
m + n
 1/2
Dmn
≥ c, (10.6.10)
where c is an appropriate constant, is called a Kolmogorov-Smirnov two-sample test.
Hence, when the sample sizesmand n are large, the constant c in the relation (10.6.10)
can be chosen from Table 10.32 to achieve, at least approximately, any specified level
of significance. For example, if m and n are large, and the test is to be carried out at
the level of significance 0.05, then it follows from Table 10.32 that we should choose
c = H
−1(0.95) = 1.36.
Example
10.6.4
Calcium Supplements and Blood Pressure. Return to situation described in Example
10.6.3. We are interested in whether or not the changes in blood pressure for
men treated with a calcium suppletment have the same distribution as the changes in
blood pressure for men treated with a placebo. Figure 10.6 displays the sample c.d.f.’s
of the measured changes in the treatment and placebo groups. It is not difficult to
see that the maximum difference occurs for 5 ≤x <7. In fact, Dmn
= 0.409, and the
test statistic is (110/21)1/2 × 0.409 = 0.936. From Table 10.32, we see that H(0.936) is
about 0.654. So we would reject the null hypothesis that the two samples were drawn
from the same population at every level α0 ≥ 0.346.  
Summary
We introduced Kolmogorov-Smirnov tests for testing the null hypotheses that a random
sample arose from a particular distribution and that two independent random
samples arose from the same distribution. For the one-sample test, we compute Dn,
the largest difference between the sample c.d.f. and the null hypothesis c.d.f., and
we reject the null hypothesis at level α0 if n1/2D
∗
n
≥ H
−1(1− α0), where H is the
c.d.f. shown in Table 10.32. For the two-sample test, we compute Dmn, the largest
10.6 Kolmogorov-Smirnov Tests 665
Figure 10.6 The sample
c.d.f.’s for two samples in
Example 10.6.4.
Differences in blood pressure
Empirical d.f.
10 25 5 10 15
1.0
0.8
0.6
0.2
0.409
Calcium
Placebo
difference between the two sample c.d.f.’s from the two different samples. We then
reject the null hypothesis that the two samples arose from the same distribution at
level α0 if (mn/(m + n))1/2Dmn
≥ H
−1(1− α0).
Exercises
1. Suppose that the ordered values in a random sample
of five observations are y1< y2 < y3 < y4 < y5. Let Fn(x)
denote the sample c.d.f. constructed from these values,
let F(x) be a continuous c.d.f., and let Dn be defined by
Eq. (10.6.2). Prove that the minimum possible value ofDn
is 0.1, and prove that Dn
= 0.1 if and only if F(y1) = 0.1,
F(y2) = 0.3, F(y3) = 0.5, F(y4) = 0.7, and F(y5) = 0.9.
2. Consider again the conditions of Exercise 1. Prove that
Dn
≤ 0.2 if and only if F(y1) ≤ 0.2 ≤ F(y2) ≤ 0.4 ≤ F(y3) ≤
0.6 ≤ F(y4) ≤ 0.8 ≤ F(y5).
3. Use the data in Example 10.1.6. In that example, we
used a χ2 goodness-of-fit test to test the null hypothesis
that the logarithms of failure times for ball bearings had
the normal distribution with mean 3.912 and variance 0.25.
Now, use the Kolmogorov-Smirnov test to test that same
null hypothesis.
4. Use the Kolmogorov-Smirnov test to test the hypothesis
that the 25 values in Table 10.34 form a random sample
from the uniform distribution on the interval [0, 1].
Table 10.34 Data for Exercise 4
0.42 0.06 0.88 0.40 0.90
0.38 0.78 0.71 0.57 0.66
0.48 0.35 0.16 0.22 0.08
0.11 0.29 0.79 0.75 0.82
0.30 0.23 0.01 0.41 0.09
5. Use the Kolmogorov-Smirnov test to test the hypothesis
that the 25 values given in Exercise 4 form a random
sample from the continuous distribution for which the
p.d.f. f (x) is as follows:
f (x) =
⎧⎪⎨
⎪⎩
3
2 for 0 < x ≤ 1
2 ,
1
2 for 1
2 < x <1,
0 otherwise.
6. Consider again the conditions of Exercise 4 and 5. Suppose
that the prior probability is 1/2 that the 25 values
given in Table 10.34 were obtained from the uniform distribution
on the interval [0, 1], and 1/2 that they were obtained
from the distribution for which the p.d.f. is as given
in Exercise 5. Find the posterior probability that they were
obtained from a uniform distribution.
7. Use the Kolmogorov-Smirnov test to test the hypothesis
that the 50 values in Table 10.35 form a random sample
from the normal distribution for which the mean is 26 and
the variance is 4.
Table 10.35 Data for Exercise 8
25.088 26.615 25.468 27.453 23.845
25.996 26.516 28.240 25.980 30.432
26.560 25.844 26.964 23.382 25.282
24.432 23.593 24.644 26.849 26.801
26.303 23.016 27.378 25.351 23.601
24.317 29.778 29.585 22.147 28.352
29.263 27.924 21.579 25.320 28.129
28.478 23.896 26.020 23.750 24.904
24.078 27.228 27.433 23.341 28.923
24.466 25.153 25.893 26.796 24.743
666 Chapter 10 Categorical Data and Nonparametric Methods
8. Use the Kolmogorov-Smirnov test to test the hypothesis
that the 50 values given in Table 10.35 form a random
sample from the normal distribution for which the mean
is 24 and the variance is 4.
9. Suppose that 25 observations are selected at random
from a distribution for which the c.d.f. F(x) is unknown,
and that the values given in Table 10.36 are obtained. Suppose
also that 20 observations are selected at random from
another distribution for which the c.d.f. G(x) is unknown,
and the values given in Table 10.37 are obtained. Use the
Kolmogorov-Smirnov test to test the hypothesis that F(x)
and G(x) are identical functions.
Table 10.36 First sample for Exercise 9
0.61 0.29 0.06 0.59 −1.73
−0.74 0.51 −0.56 −0.39 1.64
0.05 −0.06 0.64 −0.82 0.31
1.77 1.09 −1.28 2.36 1.31
1.05 −0.32 −0.40 1.06 −2.47
Table 10.37 Second sample for Exercise 9
2.20 1.66 1.38 0.20
0.36 0.00 0.96 1.56
0.44 1.50 −0.30 0.66
2.31 3.29 −0.27 −0.37
0.38 0.70 0.52 −0.71
10. Consider again the conditions of Exercise 9. Let X
denote a random variable for which the c.d.f. is F(x), and
let Y denote a random variable for which the c.d.f. is G(x).
Use the Kolmogorov-Smirnov test to test the hypothesis
that the random variables X + 2 and Y have the same
distribution.
11. Consider again the conditions of Exercises 9 and 10.
Use the Kolmogorov-Smirnov test to test the hypothesis
that the random variables X and 3Y have the same distribution.
12. In Example 9.6.3, we compared two samples of aluminum
oxide measurements taken from Roman-era pottery
that was found in two different locations in Britain.
The m = 14 measurements taken from the Llanederyn region
are
10.1, 10.9, 11.1, 11.5, 11.6, 12.4, 12.5, 12.7,
13.1, 13.4, 13.8, 13.8, 14.4, 14.6.
The n = 5 measurements from Ashley Rails are
14.8, 16.7, 17.7, 18.3, 19.1.
Use the Kolmogorov-Smirnov two-sample test to test the
null hypothesis that the two distributions from which these
samples are drawn are the same.
13. Suppose that X1, . . . , Xn form a random sample with
unknown c.d.f. F. Prove the claim made after Eq. (10.6.4)
that the distribution of the statistic D
∗
n, given that the null
hypothesis in (10.6.3) is true, is the same for all continuous
F
∗. Hint: Let Zi
= F
∗
(Xi) for i = 1, . . . , n, and consider
testing the null hypothesis that Z1, . . . , Zn have the
uniform distribution on the interval [0, 1]. Show that the
statistic D
∗
n for this modified problem is identical to the
original D
∗
n.
14. Perform the Kolmogorov-Smirnov test of the null hypothesis
in Example 10.6.1. Report the result of the test
by giving the p-value. The sample data appear in Example
10.1.6.
  10.7 Robust Estimation
In many statistical problems, we might not feel comfortable assuming that the
distribution of our data X is a member of a single parametric family. Suppose that
we consider using an estimator T = r(X) of some parameter θ. It might be that
T has good properties if X is a random sample from, say, a normal distribution.
On the other hand, we might be concerned about how T would behave if X were
actually a sample from a different distribution. In this section, we introduce a new
class of distributions and several new statistics. We then compare the behaviors
of these statistics (and some old ones) when the data arise from one of the new
distributions (and from some old ones). An estimator is called robust if it performs
well, compared to other estimators, regardless of the distribution that gives rise to
the data.
10.7 Robust Estimation 667
Estimating the Median
Example
10.7.1
Rain from Seeded Clouds. In Fig. 8.3, we presented the histogram of log-rainfalls from
26 seeded clouds, which is slightly asymmetric. A scientist might be uncomfortable
treating the log-rainfalls as normal random variables. Nevertheless, one may still wish
to estimate the median or some other feature of the distribution of log-rainfalls. One
might wish to use a method of estimation that does not rely for its justification on the
assumption that the data form a random sample from a normal distribution.  
Suppose that the random variables X1, . . . , Xn form a random sample from a
continuous distribution for which the p.d.f. f (x) is unknown, but may be assumed
to be a symmetric function with respect to some unknown point θ (−∞ < θ <∞).
Because of this symmetry, the point θ will be a median of the unknown distribution.
We shall estimate the value of θ from the observations X1, . . . , Xn.
If we know that the observations actually come from a normal distribution, then
the sample mean Xn will be the M.L.E. of θ. Without any strong prior information
indicating that the value of θ might be quite different from the observed value of Xn,
we may assume that Xn will be a reasonable estimator of θ. Suppose, however, that
the observations might come from a distribution for which the p.d.f. f (x) has much
thicker tails than the p.d.f. of a normal distribution; that is, suppose that as x→∞or
x→−∞, the p.d.f. f (x) might come down to 0 much more slowly than does the p.d.f.
of a normal distribution. In this case, the sample mean Xn may be a poor estimator of
θ because its M.S.E. may be much larger than that of some other possible estimator.
Example
10.7.2
Shifted Cauchy Sample. If the underlying distribution is the Cauchy distribution centered
at an unknown point θ, as defined in Example 7.6.5, then the M.S.E. of Xn will
be infinite. In this case, the M.L.E. of θ will have a finite M.S.E. and will be a much
better estimator than Xn. In fact, for a large value of n, the M.S.E. of the M.L.E.
is approximately 2/n, no matter what the true value of θ is. However, as pointed
out in Example 7.6.5, this estimator is very complicated and must be determined by
a numerical calculation for each given set of observations. A relatively simple and
reasonable estimator for this problem is the sample median, which was defined in Example
7.9.3. It can be shown that the M.S.E. of the sample median for a large value
of n is approximately 2.47/n when the data have the Cauchy distribution.  
It follows from Example 10.7.2 and the preceding discussion that if we could
assume that the underlying distribution is normal or nearly normal, then we might
use the sample mean as an estimator of θ. On the other hand, if we believe that the
underlying distribution is Cauchy or nearly Cauchy, then we might use the sample
median. However, we typically do not know whether the underlying distribution is
nearly normal, is nearly Cauchy, or does not correspond closely to either of these
types of distributions. For this reason, we should try to find an estimator of θ that will
have a small M.S.E. for several different possible types of distributions.An estimator
that performs well for several different types of distributions, even though it may not
be the best available estimator for any particular type of distribution, is called a robust
estimator. In this section, we shall define a class of distributions called contaminated
normals that we shall use for assessing the performance of various estimators. We
shall also introduce special types of robust estimators known as trimmed means and
M-estimators. The term robust was introduced by G. E. P. Box in 1953, and the term
trimmed meanwas introduced by J.W.Tukey in 1962. However, the first mathematical
treatment of trimmed means was given by P. Daniell in 1920. M-estimators were
introduced by Huber (1964).
668 Chapter 10 Categorical Data and Nonparametric Methods
Contaminated Normal Distributions
One reason that experimenters might be hesitant to behave as if their data were
sampled from a normal distribution is the possibility that random errors might occur
in the data. Once in a while, a data value is recorded incorrectly or is collected under
circumstances that are different from those under study. The one observation (or
possibly a few) will have a distribution that might be much different from that of the
majority of the observations. For example, suppose that the bulk of the data in which
we are interested comprise a sample from the normal distribution with unknown
mean μ and variance σ2. But suppose that, for each observation, there is a small
probability   that the observation actually comes from a different distribution with
p.d.f. g. That is, the p.d.f. of our observable data is actually
f (x) = (1−  )(2πσ2)
−1/2 exp


− 1
2σ2 [x − μ]2
 
+  g(x). (10.7.1)
Definition
10.7.1
Contaminated Normal Distributions. A distribution whose p.d.f. has the form of
Eq. (10.7.1) is called a contaminated normal, and the distribution with p.d.f. g is
called the contaminating distribution.
If the contaminating distribution in Eq. (10.7.1) has a high variance or has a
mean very different from μ, there is a good chance that the observations we obtain
from the contaminating distribution will be far away from the other observations.
In order for an estimator to perform well for a large class of contaminated normal
distributions, the estimator will have to be somewhat insensitive to one (or a few)
observation(s) not close to the bulk of the data. Obviously, if   ≥ 1/2, it becomes
difficult to tell which distribution is contaminating which. So we shall assume that
  < 1/2. A simple example of a contaminated normal distribution is one in which g
is the p.d.f. of a normal distribution with mean μ and variance 100σ2. In this case,
Eq. (10.7.1) becomes
f (x) = (1−  )(2πσ2)
−1/2 exp


− 1
2σ2 [x − μ]2
 
+  (200πσ2)
−1/2 exp


− 1
200σ2 [x − μ]2
 
. (10.7.2)
Figure 10.7 shows a standard normal p.d.f. together with the p.d.f. of a contaminated
normal of the form of Eq. (10.7.2) with μ = 0, σ2 = 1, and   = 0.05. The two
Figure 10.7 p.d.f.’s of
standard normal distribution
and   = 0.05 contaminated
normal with mean 0 and
variance 100.
26 24 22 2 4 6 x
Normal
Contaminated
0.1
0.2
0.4
p.d.f.
10.7 Robust Estimation 669
Figure 10.8 Sample size
times variances of sample
median and sample mean
for a random sample from
a contaminated normal distribution
with the p.d.f. in
Eq. (10.7.2) with σ = 1 as a
function of the amount of
contamination  . The line for
the median uses the asymptotic
result Eq. (10.7.3).
0 0.1 0.2 0.3 0.4 0.5
10
20
30
40
50
Variance
e
Sample median
Sample mean
p.d.f.’s are quite similar, but we shall see shortly how much effect the contamination
can have on the problem of estimation.
Two important properties of the distribution of an estimator of the median are its
mean and its variance. In the situation in which the data have the p.d.f. (10.7.2), both
the sample mean and the sample median have mean μ. Next, we shall compare the
variances of these two estimators when the data are a random sample with the p.d.f.
(10.7.2). The variance of the average of a sample of size n is (1+ 99 )σ2/n. (You can
prove this in Exercise 7.) The variance of the sample median is a bit more difficult
to compute. However, using the large-sample properties that will be introduced on
page 676, we can see that the variance is approximately
1
4nf 2(μ)
= σ2
n
50π
(10 − 9 )2
. (10.7.3)
Figure 10.8 shows a comparison of (50π)/(10 − 9 )2 and (1+ 99 ) for 0 ≤   ≤ 0.5.
Notice that the variance of the sample median is only slightly larger than the variance
of the sample mean for   < 0.0058, and it is substantially smaller for   in the range
of 0.01 to 0.5. For example, if   = 0.05 (as in Fig. 10.7), the variance of the sample
median is only about 29 percent of the variance of the sample mean.
Trimmed Means
Suppose that X1, . . . , Xn form a random sample from an unknown continuous distribution
for which the p.d.f. f (x) is assumed to be symmetric with respect to an
unknown point θ. For this discussion, we shall let Y1< Y2 < . . . < Yn denote the order
statistics of the sample. The sample mean Xn is simply the average of these n
order statistics. However, if we suspect that the p.d.f. f (x) might have thicker tails
than a normal distribution has, then we may wish to estimate θ by using a weighted
average of the order statistics, which assigns less weight to the extreme observations
such as Y1, Y2, Yn−1, and Yn, and assigns more weight to the middle observations. The
sample median is a special example of a weighted average.When n is odd, it assigns
zero weight to every observation except the middle one. When n is even, it assigns
the weight 1/2 to each of the two middle observations and zero weight to all other
observations.
The following class of estimators also consists of weighted averages of the order
statistics.
670 Chapter 10 Categorical Data and Nonparametric Methods
Definition
10.7.2
Trimmed Means. For each positive integer k such that k < n/2, ignore the k smallest
observations Y1, . . . , Yk and the k largest observations Yn, Yn−1, . . . , Yn−k+1 in the
sample. The average of the remaining n − 2k intermediate observations is called the
kth level trimmed mean.
Clearly, the kth level trimmed mean can be represented as a weighted average of the
order statistics having the form
1
n − 2k
 n−k
i=k+1
Yi . (10.7.4)
The sample median is an example of a trimmed mean.When n is odd, the sample
median is the [(n − 1)/2]th level trimmed mean.When n is even, it is the [(n − 2)/2]th
level trimmed mean. In either case, the sample median is the kth level trimmed mean,
where k =  (n − 1)/2
 is the largest integer less than or equal to (n − 1)/2.
Robust Estimation of Scale
In addition to the median of a distribution, there are other parameters that might
be worth estimating even when we are not willing to model our data as arising from
a particular parametric family. For example, scale parameters might be valuable for
giving an idea of how spread out a distribution is. The standard deviation, if it exists,
is one such measure. The general class of scale parameters is defined here.
Definition
10.7.3
Scale Parameters. An arbitrary parameter σ is a scale parameter for the distribution
of X if, for all a >0 and all real b, the corresponding parameter for the distribution
of aX + b is aσ.
Although the standard deviation is a scale parameter, there are many distributions
(such as the Cauchy) for which the standard deviation does not exist. There are
alternative measures of spread to the standard deviation that exist and are finite
for all distributions.
One scale parameter that exists for every distribution is the interquartile range
(IQR) as defined in Definition 4.3.2 on page 233. For example, if F is the normal
distribution with mean μ and variance σ2, then the IQR is 2 
−1(0.75)σ = 1.349σ (see
Exercise 15). The IQR of the Cauchy distribution is 2 (see Example 4.3.9). It is not
difficult to show (see Exercise 11) that if the IQR of X is σ and if a >0, then aX + b
has IQR equal to aσ. An estimator of the IQR is the sample IQR, the difference
between the 0.75 and 0.25 sample quantiles. (Sample quantiles are just quantiles of
the sample c.d.f.)
Another scale parameter that exists for every random variable X is the median
absolute deviation
Definition
10.7.4
Median Absolute Deviation. Themedian absolute deviation of a random variable X is
the median of the distribution of |X − m|, where m is the median of X.
If the distribution of X is symmetric around its median, then the median absolute
deviation is one-half of the IQR. For asymmetric distributions, the median absolute
deviation is the half-length of the symmetric interval around the median that contains
50 percent of the distribution, while the IQR is the length of the interval around
the median that contains half of the distribution below the median and half of the
distribution above the median. For example, if X has the χ2 distribution with five
10.7 Robust Estimation 671
degrees of freedom, the IQR is 3.95, while the median absolute deviation is 1.895, a
little less than one-half of the IQR. An estimator of the median absolute deviation is
the sample median absolute deviation. The sample median absolute deviation is the
sample median of the values |Xi
−Mn
|, whereMn is the sample median ofX1, . . . ,Xn.
Two other scale parameters that are useful are the IQR divided by 1.349 and the
median absolute deviation divided by 0.6745. These parameters were chosen to have
the property that if the data come a normal distribution, then these parameters equal
the standard deviation (see Exercise 15). Typical estimators of these parameters are
the sample IQR divided by 1.349 and the sample median absolute deviation divided
by 0.6745.
M-Estimators of the Median
The sample mean is heavily influenced by one extreme observation. For example, if
one observation x in a sample of size n is replaced by x + , the sample mean changes
by  /n. If is large, this will be a big change. The sample median, on the other hand,
is influenced very little, or not at all, by a change in one observation. However, the
sample median is inefficient in that it makes use of very few of the observed values.
Trimmed means are one attempt to compromise between the sample median and the
sample mean by forming estimators that make use of more than just the one or two
observations in the middle of the sample while maintaining insensitivity to extreme
observations. There are other estimators that also attempt to effect this same type of
compromise. These other estimators are M.L.E.’s of θ under different assumptions
about the p.d.f. of the observations.
The sample mean is the M.L.E. of θ if we assume that X1, . . . , Xn form a random
sample from a normal distribution with mean (and median) θ and arbitrary variance.
The sample median is also an M.L.E. It is the M.L.E. of θ if we assume thatX1, . . . , Xn
form a random sample from one of the following distributions.
Definition
10.7.5
Laplace Distributions. Letσ >0 and θ be real numbers. The distribution whose p.d.f. is
f (x|θ, σ) = 1
2σ
e
−|x−θ|/σ (10.7.5)
is called the Laplace distribution with parameters θ and σ.
See Exercise 9 to prove that the M.L.E. of θ is indeed the sample median when the
sample comes from a Laplace distribution.
In order to see why the M.L.E.’s for the Laplace and normal distributions are
so different, we can examine the two equations that the M.L.E.’s solve for those two
cases. These equations say that the derivatives with respect to θ of the logarithms of
the respective likelihoods must equal 0. In both cases, the derivative of the logarithm
of the likelihood is the sum of n terms, one for each observation. For the normal case,
the term corresponding to an observation xi is (xi
− θ)/σ 2. For the Laplace case, the
term corresponding to an observation xi equals 1/σ if θ <xi , and it equals −1/σ if
θ >xi . The derivative does not exist at θ = xi . We illustrate these two derivatives in
Fig. 10.9 for the cloud-seeding data introduced in Example 8.3.2. A change of size
  in a single observation will vertically shift the entire normal distribution line in
Fig. 10.9 by  /[nσ2]. The same-sized change in the same observation will only affect
the Laplace graph in Fig. 10.9 in the vicinity of the changed observation. The actual
values of the most extreme observations do not affect where the graph crosses 0.
It would be nice to have a compromise between these two types of behavior
without arbitrarily discarding a fixed amount of data. We would like the derivative
672 Chapter 10 Categorical Data and Nonparametric Methods
Figure 10.9 Derivatives of
the logarithms of the Laplace
and normal likelihoods (with
σ = 1) using the cloudseeding
data.
2 4 8 10
100
50
0
250
2100
u
Derivative of logarithm of likelihood
Laplace
Normal
Derivative 5 0
of the logarithm of the likelihood to be approximately proportional to
 
(xi
− θ)
for θ near the middle of the data, where the summation is only over the middle
observations. This will allow the estimator to make use of more data than just the very
middle observation. Also, we would like the derivative to flatten out like the Laplace
case for θ near the extremes so that the actual values of the extreme observations do
not affect the estimate. A p.d.f. with these properties is the following:
gk(x|θ, σ) = ckehk([x−θ]/σ ), (10.7.6)
where σ is a scale parameter,
hk(y) =
 
−0.5y2 if −k < y <k,
0.5k2 − k|y| otherwise,
and ck is a constant that makes the integral of g equal to 1. The number k must
be chosen somehow, usually to reflect some idea of how far from θ we think that
extreme observations are likely to be. The derivative of the logarithm of gk(x|θ, σ)
with respect to θ is linear in θ for |θ − x| < kσ, but it flattens out like the derivative of
the logarithm of the Laplace p.d.f. does when |θ − x| > kσ. Now, we see that k can be
chosen to reflect how many multiples of σ a data value can be away from θ before we
think that it starts to lose importance for estimating θ. Typical choices are 1≤ k ≤ 2.5.
If we suppose that X1, . . . , Xn form a random sample from a distribution with p.d.f.
gk(x|θ, σ), the M.L.E. of θ will be a compromise between the sample median and the
sample mean.
Definition
10.7.6
M-Estimators. The M.L.E. of θ under the assumption that the data have p.d.f. gk in
Eq. (10.7.6) is called an M-estimator.
M-estimators were proposed as robust estimators by Huber (1977).The name derives
from the fact that they are found by maximizing a function that might not be the
likelihood.
The M-estimator found by maximizing
"n
i=1 gk(xi
|θ, σ) cannot be obtained in
closed form, but there is a simple iterative algorithm for finding it if we can first
estimate σ. Typically, one replaces σ by ˆσ equal to one of the robust scale estimates
described earlier in this section. One popular choice is the sample median absolute
deviation divided by 0.6745. Treating
"n
i=1 gk(xi
|θ, ˆσ) as a function of θ, we can take
the derivative of the logarithm and set it equal to 0 to try to find the maximum. The
10.7 Robust Estimation 673
derivative of the logarithm is − n
i=1 ψk([xi
− θ]/ ˆσ)/ˆσ , where
ψk(y) =
⎧⎨
⎩
−k if y <−k,
y if −k ≤ y ≤ k,
k if y >k.
Typically, one solves
 n
i=1 ψk([xi
− θ]/ ˆσ) =   0 as follows: Rewrite the equation as n
i=1 wi(θ)(xi
− θ) = 0, where wi(θ) is defined as
wi(θ) =
⎧⎨
⎩
ψk([xi
− θ]/ ˆσ)
xi
− θ
if xi
 = θ,
1 if xi
= θ.
Then θ = n
i=1 wi(θ)xi/
 n
i=1 wi(θ) solves the equation. Clearly, we need to know θ
before we can compute wi(θ), but we can solve the equation iteratively using these
steps:
1. Pick a starting value θ0 such as the sample median and set j = 0.
2. Let
θj+1 =
 n
i=1 wi(θj)xi  n
i=1 wi(θj )
.
3. Increment j to j + 1, and return to step 2.
This procedure will typically converge in a small number of iterations to the Mestimate
˜ θ.
The iterative procedure actually makes it clear why ˜ θ is robust and why it is
a compromise between the sample mean and the sample median. Note that ˜ θ is a
weighted average of the values x1, . . . , xn. The weight on xi is proportional to wi( ˜ θ).
If |xi
− ˜ θ| ≤ kˆσ , then wi( ˜ θ) = 1/ˆσ . If |xi
− ˜ θ| > kˆσ , then wi( ˜ θ) = k/|xi
− ˜ θ|, which
decreases as xi becomes more extreme. If ˜ θ is near the middle of the distribution (as
we would hope it would be), then the observations near the middle of the distribution
get more weight in the estimate, and those far away get less weight.
Note:M-Estimators and Symmetric Distributions. At the start of this section, weassumed
that the unknown p.d.f. f of the data was symmetric about an unknown value
θ, which must be the median of the distribution. The M-estimator described above
can be calculated even if we do not assume that the data come from a symmetric distribution.
However, the M-estimator will not necessarily estimate the median of the
distribution if the distribution is not symmetric. Instead, the M-estimator estimates
the number γ such that
E
 
ψk


Xi
− γ
σ
  
= 0. (10.7.7)
If the distribution of Xi is symmetric around θ, then γ = θ will solve Eq. (10.7.7). If
the distribution of Xi is not symmetric, then some number other than the median
might solve Eq. (10.7.7).
Example
10.7.3
Rain from Seeded Clouds. Using the seeded cloud data again, we shall find the value
of theM-estimator with k = 1.5.We start with the sample median of the log-rainfalls,
θ0 = 5.396. We also use ˆσ equal to the median absolute deviation 0.7318 divided by
0.6745, that is, ˆσ = 1.085. The six smallest and three largest observations are not
within 1.5ˆσ of the sample median. These nine observations each get less weight
than the other 17 observations in the calculation of the next iteration. For example,
674 Chapter 10 Categorical Data and Nonparametric Methods
the smallest observation is 1.411, which gets weight 1.5/|1.411− 5.396| = 0.3764,
compared to weight 0.9217 for the 17 central observations. The weighted average
of the observations is then θ1 = 5.315. We repeat the weighting and averaging until
we get no change. After 10 more iterations, we get θ11 = 5.283, which agrees with θ10.
 
Note: SimultaneousM-Estimators Exist for the Median and Scale Parameters. It is
possible to estimate the median and a scale parameter simultaneously using a method
very similar to that described forM-estimators. That is, instead of just picking a value
for ˆσ in the M-estimator algorithm, we can construct a more complicated algorithm
that estimates both the median and a scale parameter. Readers interested in more
examples of robust procedures can read Huber (1981) and Hampel et al. (1986).
Comparison of the Estimators
We have mentioned the desirability of using a robust estimator in a situation in which
it is suspected that the observations X1, . . . , Xn may form a random sample from a
distribution for which the tails of the p.d.f. are thicker than the tails of the p.d.f. of
a normal distribution. The use of a robust estimator is also desirable when a few of
the observations in the sample appear to be unusually large or unusually small. In
this situation, a statistician might suspect that most of the observations in the sample
came from one normal distribution, whereas the few extreme observations may have
come from a different normal distribution with a much larger variance than the first
one. (This is the contaminated normal case.) The extreme observations, which are
called outliers, will substantially affect the value of Xn and make it an unreliable
estimator of θ. Since the values of these outliers would be given less weight in a
robust estimator, the robust estimator will usually be a more reliable estimator than
Xn.
It is acknowledged that a robust estimator will perform better than Xn in a
situation of the type just described. However, if X1, . . . , Xn actually do form a
random sample from a normal distribution, thenXn will perform better than a robust
estimator. Since we are typically not certain which situation obtains in a particular
problem, it is important to know how much larger the M.S.E. of a robust estimator
will be than the M.S.E. of Xn when the actual distribution is normal. In other words,
it is important to know how much is lost if we use a robust estimator when the actual
distribution is normal.We shall now consider this question.
WhenX1, . . . , Xn form a random sample from the normal distribution with mean
θ and variance σ2, the probability distribution of Xn and the probability distribution
of each of the robust estimators described in this chapter will be symmetric with
respect to the value θ. Therefore, the mean of each of these estimators will be θ,
the M.S.E. of each estimator will be equal to its variance, and this M.S.E. will have
a certain constant value for each estimator regardless of the true value of θ. The
values of several of these M.S.E.’s for a normal distribution when the sample size n
is 10 or 20 are presented in Table 10.38. The values in Table 10.38 are from Andrews
et al. (1972). They were computed using simulation methods that will be introduced
in Chapter 12. It should be noted that when n = 10, the trimmed mean for k = 4 and
the sample median are the same estimator.
It can be seen from Table 10.38 that when the underlying distribution is actually
a normal distribution, the M.S.E.’s of the M-estimator and the trimmed means are
not much larger than the M.S.E. ofXn. In fact, when n = 20, the M.S.E. of the secondlevel
trimmed mean (k = 2), in which four of the 20 observed values in the sample
10.7 Robust Estimation 675
Table 10.38 Comparison of M.S.E.’s for sample mean and
several robust estimators. The data have a normal
distribution with variance σ2. The M.S.E. is the
tabulated value times σ2/n. The M-estimator uses
k = 1.5 and ˆσ equal to the sample median absolute
deviation divided by 0.6745.
Estimator n = 10 n = 20
Sample mean Xn 1.00 1.00
Trimmed mean for k = 1 1.05 1.02
Trimmed mean for k = 2 1.12 1.06
Trimmed mean for k = 3 1.21 1.10
Trimmed mean for k = 4 1.37 1.14
Sample median 1.37 1.50
M-estimator 1.05 1.05
Table 10.39 Comparison of M.S.E.’s for sample mean and
several robust estimators. The data have a Cauchy
distribution. The M.S.E. is the tabulated value
divided by n. The M-estimator uses k = 1.5 and
ˆσ
equal to the sample median absolute deviation
divided by 0.6745.
Estimator n = 10 n = 20
Sample mean Xn
∞ ∞
Trimmed mean for k = 1 27.22 23.98
Trimmed mean for k = 2 8.57 7.32
Trimmed mean for k = 3 3.86 4.57
Trimmed mean for k = 4 3.66 3.58
Sample median 3.66 2.88
M-estimator 6.00 4.50
are omitted, is only 1.06 times as large as the M.S.E. of Xn. Even the M.S.E. of the
sample median is only 1.5 times that of Xn. These values illustrate the price of using
a robust estimator when one is not needed.
We shall now consider the improvement in the M.S.E. that can be achieved by
using a robust estimator when the underlying distribution is not normal. IfX1, . . . , Xn
form a random sample of size n from a Cauchy distribution, then the M.S.E. of Xn is
infinite. The M.S.E.’s of robust estimators for a Cauchy distribution when the sample
size n is 10 or 20 are given in Table 10.39. The values in Table 10.39 are from Andrews
et al. (1972).
Finally, the M.S.E.’s for two contaminated normal distributions are illustrated
in Table 10.40. The two distributions have p.d.f.’s as in Eq. (10.7.2) with   = 0.05 and
676 Chapter 10 Categorical Data and Nonparametric Methods
Table 10.40 Comparison of M.S.E.’s for sample mean and several
robust estimators. The data consist of n = 20 observations
from a contaminated normal distribution with
p.d.f. (10.7.2) using   = 0.05 and   = 0.10. The M.S.E.
is the tabulated value divided by n. The M-estimator
uses k = 1.5and ˆσ equal to the sample median absolute
deviation divided by 0.6745.
Estimator   = 0.05   = 0.1
Sample mean Xn 5.95 10.90
Trimmed mean for k = 1 1.87 3.92
Trimmed mean for k = 2 1.32 2.01
Trimmed mean for k = 3 1.27 1.57
Trimmed mean for k = 4 1.29 1.50
Sample median 1.62 1.81
M-estimator 1.27 1.58
  = 0.1.The values inTable 10.40 were computed using simulation methods described
in Chapter 12.
It can be seen from Tables 10.39 and 10.40 that the M.S.E. of a robust estimator
can be substantially smaller than that ofXn.When a trimmed mean or anM-estimator
is to be used as an estimator of θ, it is evident that a specific value of k must be chosen.
No general rule for choosing k will be best under all conditions. If there is reason to
believe that the p.d.f. f (x) is approximately normal, then θ might be estimated by
using a trimmed mean, which is obtained by omitting about 10 or 15 percent of the
observed values at each end of the ordered sample. Alternatively, an M-estimator
with k = 2 or 2.5 could be used. If the p.d.f. f (x) might be far from normal or if
several of the observations might be outliers, then the sample median might be used
to estimate θ, or one could use an M-estimator with k = 1 or 1.5.
We could also compare various scale estimators in a similar fashion. Such a comparison
is complicated by the fact that there are several choices of scale parameter to
estimate, such as standard deviation, IQR, and median absolute deviation.We shall
not present such a comparison here.
Large-Sample Properties of Sample Quantiles
Earlier in this section, we made use of the sample median as well as the sample
0.25 and 0.75 quantiles to estimate the median and scale features of a distribution.
The distributions of these, and other, sample quantiles are difficult to derive exactly.
Approximations are available to the distributions of sample quantiles if the sample
sizes are large. It can be shown that if X1, . . . , Xn form a large random sample from
a continuous distribution for which the p.d.f. is f (x) and for which there is a unique
p quantile θp, then the distribution of the sample p quantile will be approximately a
normal distribution. Specifically, it must be assumed that f (θp) > 0.
10.7 Robust Estimation 677
Theorem
10.7.1
Asymptotic Distribution of Sample Quantile. Under the conditions above, let ˜ θp,n
denote the sample p quantile. Then, as n→∞, the c.d.f. of n1/2( ˜ θp,n
− θp) will
converge to the c.d.f. of the normal distribution with mean 0 and variance p(1−
p)/f 2(θp).
In other words, when n is large, the distribution of the sample p quantile ˜ θp,n will be
approximately the normal distribution with mean θp and variance p(1− p)/[nf 2(θp)].
Also, suppose that ˜ θq,n denotes the sample q quantile for some q > p, and
suppose that θq is the unique q quantile of the distribution of the data. Then the joint
distribution of ( ˜ θp,n, ˜ θq,n) is approximately the bivariate normal distribution with
means θp and θq, variances p(1− p)/[nf 2(θp)]and q(1− q)/[nf 2(θq)], and covariance
p(1− q)/[nf (θp)f (θq)]. See Schervish (1995, section 7.2) for a rigorous derivation of
these results.
Summary
We have introduced a number of estimators of the median and scale parameters that
are more robust than the sample average and sample standard deviation. To say that
the new estimators are more robust, we mean that they perform well compared to
the old estimators, in terms of M.S.E., regardless of which distribution (in some large
class) gives rise to the data. The robust estimators of the median include trimmed
means, the sample median, and M-estimators obtained by maximizing a function
that is similar to a likelihood function. Robust estimators of scale include the sample
interquartile range (IQR), the sample median absolute deviation, and multiples of
these that are designed to estimate the standard deviation when the data come from
a normal distribution.
Exercises
1. Suppose that a sample comprises the 15 observed values
in Table 10.41. Calculate the values of (a) the sample
mean, (b) the trimmed means for k = 1, 2, 3, and 4, (c) the
sample median, and (d) the M-estimator with k = 1.5 and
ˆσ
equal to the sample median absolute deviation divided
by 0.6745.
Table 10.41 Data for Exercise 1
23.0 21.5 63.0
22.5 2.1 22.1
22.4 2.2 21.7
21.7 22.2 22.9
21.3 21.8 22.1
2. Suppose that a sample comprises the 14 observed values
in Table 10.42. Calculate the values of (a) the sample
mean, (b) the trimmed means for k = 1, 2, 3, and 4, (c) the
sample median, and (d) the M-estimator with k = 1.5 and
ˆσ
equal to the sample median absolute deviation divided
by 0.6745.
Table 10.42 Data for Exercise 2
1.24 0.36 0.23
0.24 1.78 −2.00
−0.11 0.69 0.24
0.10 0.03 0.00
−2.40 0.12
3. Suppose that a random sample of n = 100 observations
is taken from the normal distribution with unknown
mean θ and known variance 1, and let ˜ θ.5,n denote the
sample median. Determine (approximately) the value of
Pr(| ˜ θ.5,n
− θ| ≤ 0.1).
678 Chapter 10 Categorical Data and Nonparametric Methods
4. Suppose that a random sample of n = 100 observations
is taken from the Cauchy distribution centered at an unknown
point θ, and let ˜ θ.5,n denote the sample median.
Determine (approximately) the value of Pr(| ˜ θ.5,n
− θ| ≤
0.1).
5. Let f (x) denote the p.d.f. of the contaminated normal
distribution given in Eq. (10.7.1) with   = 1/2, σ2 = 1, and
g being the p.d.f. of a normal distribution with mean μ and
variance 4. Suppose that 100 observations are selected at
random from a distribution for which the p.d.f. is f (x).
Determine the M.S.E. of the sample mean and (approximately)
the M.S.E. of the sample median.
6. Use the data in Table 10.6 on page 640. We want an
estimate of the median of the logarithms of sulfur dioxide.
Find (a) the sample mean, (b) the trimmed means for
k = 1, 2, 3, and 4, (c) the sample median, and (d) the Mestimator
with k = 1.5 and ˆσ equal to the sample median
absolute deviation divided by 0.6745.
7. Suppose that X1, . . . , Xn are i.i.d. with a distribution
that has the p.d.f. in Eq. (10.7.2). Let Xn
= 1
n
 n
i=1 Xi .
a. Prove that E(Xn) = μ.
b. Prove that Var(Xn) = (1+ 99 )σ2/n.
8. If Fig. 10.8 were extended all the way to   = 1, the variance
of the sample median would rise above the variance
of the sample mean. Indeed, the ratio of the two variances
would be the same at   = 1 as it is at   = 0. Explain why
this should be true.
9. Assume that X1, . . . , Xn form a random sample from
the distribution with p.d.f. given in Eq. (10.7.5). Prove that
the M.L.E. of θ is the sample median. (Hint: Let X have
c.d.f. equal to the sample c.d.f. of X1, . . . , Xn. Then apply
Theorem 4.5.3.)
10. Let X1, . . . , Xn be i.i.d. with the p.d.f. in Eq. (10.7.5).
Assume that σ is known. Let θ be between two of the
observed values x1, . . . , xn. Prove that the derivative of
the logarithm of the likelihood at θ equals 1/σ times the
difference between the number of observations greater
than θ and the number of observations less than θ.
11. Let X be a random variable with a continuous distribution
such that the interquartile range (IQR) is σ. Prove
that the IQR of aX + b is aσ for all a >0 and all b.
12. Let X be a random variable with a continuous distribution
such that the median absolute deviation is σ. Prove
that the median absolute deviation of aX + b is aσ for all
a >0 and all b.
13. Find the median absolute deviation of the Cauchy
distribution.
14. Let X have the exponential distribution with parameter
λ. Prove that the median absolute deviation of X is
smaller than one-half of the IQR. (You can do this without
actually calculating the median absolute deviation.)
15. Let X have a normal distribution with standard deviation
σ.
a. Prove that the IQR is 2 
−1(0.75)σ .
b. Prove that the median absolute deviation is
 
−1(0.75)σ .
16. Darwin (1876, p. 16) reported the results of an experiment
in which he grew 15 pairs of Zea mays (corn)
plants. Each pair consisted of a self-fertilized and a crossfertilized
plant that were grown in the same pot. The numbers
below are the differences between heights (in eighths
of an inch) of the two plants in each pair (cross-fertilized
minus self-fertilized).
49, −67, 8, 16, 6, 23, 28, 41, 14, 29, 56, 24, 75, 60, −48
Find the (a) the sample mean, (b) the trimmed means for
k = 1, 2, 3, and 4, (c) the sample median, and (d) the Mestimator
with k = 1.5 and ˆσ equal to the sample median
absolute deviation divided by 0.6745.
17. Let X1, . . . , Xn be a large random sample from a distribution
with p.d.f. f . Assume that f is symmetric about
the median of the distribution. Find the large-sample distribution
of the sample IQR.
  10.8 Sign and Rank Tests
In this section, we describe some popular nonparametric tests for hypotheses about
the median of a distribution or about the difference between two distributions.
One-Sample Procedures
Example
10.8.1
Calorie Counts in Hot Dogs. Consider the n = 20 calorie counts for beef hot dogs given
in Exercise 7 in Sec. 8.5. Suppose that we are interested in testing hypotheses about
the median calorie count, but we are not willing to assume that the calorie counts
follow a normal distribution or any other familiar distribution. Are there methods
10.8 Sign and Rank Tests 679
that are appropriate when we are not willing to make assumptions about the form of
the distribution?  
Suppose that X1, . . . , Xn form a random sample from an unknown distribution.
In Chapter 9, we considered the case in which the form of the unknown distribution
was known, but there were some specific parameters that were still unknown. For
example, the distribution might be a normal distribution with unknown mean and/or
variance. Now we shall assume only that the distribution is continuous. Since we shall
not assume that the distribution of the data has a mean, then we cannot test hypotheses
about the mean of the distribution. However, every continuous distribution has
a median μ that satisfies Pr(Xi
≤ μ) = 0.5. The median is a popular measure of location
for general distributions, and we shall now present a test procedure for testing
hypotheses of the form
H0: μ ≤ μ0,
H1: μ>μ0.
(10.8.1)
The test is based on the following simple fact: μ ≤ μ0 if and only if Pr(Xi
≤ μ0) ≥ 0.5.
For i = 1, . . . , n, let Yi
= 1 if Xi
≤ μ0, and let Yi
= 0 otherwise. Define p = Pr(Yi
=
1). Then testing whether μ ≤ μ0 is equivalent to testing whether p ≥ 0.5. Since
X1, . . . ,Xn are independent, then so too are Y1, . . . , Yn. This makes Y1, . . . , Yn
a random sample from the Bernoulli distribution with parameter p. We already
know how to test the null hypothesis that p ≥ 0.5. (See Example 9.1.9.)We compute
W = Y1 + . . . + Yn and reject the null hypothesis if W is too small. To make the test
have level of significance α0, choose c so that
 c
w=0


n
w
 

1
2
 n
≤ α0 <
 c+1
w=0


n
w
 

1
2
 n
.
Then the test would reject H0 if W ≤ c.
The test that we have just described is called the sign test because it is based
on the number of observations for which Xi
− μ0 is negative. A similar test can be
constructed if we wish to test the hypotheses
H0: μ = μ0,
H1: μ  = μ0.
Once again, let p = Pr(Xi
≤ μ0). The null hypothesis H0 is now equivalent to p = 0.5.
To perform the test at level of significance α0, we would choose a number c such that
 c
w=0


n
w
 

1
2
 n
≤ α0
2
<
 c+1
w=0


n
w
 

1
2
 n
.
We would then rejectH0 if eitherW ≤ c orW ≥ n − c.We use the symmetric rejection
region because the binomial distribution with parameters n and 1/2 is symmetric
about n/2.
Example
10.8.2
Calorie Counts in Hot Dogs. Consider again the calorie counts for beef hot dogs in
Example 10.8.1. Let μ stand for the median of the distribution of calories in beef hot
dogs. Suppose that we are interested in testing the hypotheses H0 : μ = 150 versus
H1 : μ  = 150. Since 9 of the 20 calorie counts are below 150, we haveW = 9. The twosided
p-value for this observation is 0.8238, so we would not reject the null hypothesis
at level α0 unless α0 ≥ 0.8238.  
680 Chapter 10 Categorical Data and Nonparametric Methods
The power function of the sign test is easy to compute for each value of p =
Pr(Xi
≤ μ0). For example, for the one-sided test of the hypotheses (10.8.1), the
power is
Pr(W ≤ c) =
 c
w=0


n
w
 
pw(1− p)n−w.
Comparing Two Distributions
Example
10.8.3
Comparing Copper Ores. Consider again the comparison of copper ores in Example
9.6.5. Suppose that we are not comfortable assuming that the distributions of
copper ores are normal distributions. Can we still test hypotheses about whether the
distributions are the same or whether they have the same medians?  
Next, we shall consider a problem in which a random sample of m observations
X1, . . . , Xm is taken from a continuous distribution for which the c.d.f. F(x) is
unknown, and an independent random sample of n observations Y1, . . . , Yn is taken
from another continuous distribution for which the c.d.f. G(x) is also unknown. We
desire to test the hypotheses
H0: F = G
H1: F  = G.
(10.8.2)
One way to test the hypotheses (10.8.2) is to use the Kolmogorov-Smirnov test
for two samples described in Sec. 10.6. Furthermore, if we are willing to assume
that the two samples are actually drawn from normal distributions with the same
unknown variance, then testing the hypotheses (10.8.2) is the same as testing whether
two normal distributions have the same mean. Therefore, under this assumption, we
could use a two-sample t test as described in Sec. 9.6.
In this section we shall present another procedure for testing the hypotheses
(10.8.2). This procedure, which was introduced separately by F. Wilcoxon and by
H. B. Mann andD. R.Whitney in the 1940s, is known as theWilcoxon-Mann-Whitney
ranks test.
The Wilcoxon-Mann-Whitney Ranks Test In this procedure, we begin by arranging
the m + n observations in the two samples in a single sequence from the smallest
value that appears in the two samples to the largest value that appears. Since all the
observations come from continuous distributions, it may be assumed that no two of
the m + n observations have the same value. Thus, a total ordering of these m + n
values can be obtained. Each observation in this total ordering is then assigned a
rank from 1 to m + n corresponding to its position in the ordering.
The Wilcoxon-Mann-Whitney ranks test is based on the property that if the
null hypothesis H0 is true and the two samples are actually drawn from the same
distribution, then the observations X1, . . . , Xm will tend to be dispersed throughout
the ordering of allm + n observations, rather than be concentrated among the smaller
values or among the larger values. In fact, whenH0 is true, the ranks that are assigned
to the m observations X1, . . . , Xm will be the same as if they were a random sample
of m ranks drawn at random without replacement from a box containing the m + n
ranks 1, 2, . . . , m + n.
Let S denote the sum of the ranks that are assigned to the m observations
X1, . . . , Xm. Since the average of the ranks 1, 2, . . . , m + n is (1/2)(m + n + 1), it
10.8 Sign and Rank Tests 681
Table 10.43 Sorted data for Example 10.8.4
Observed Observed
Rank Value Sample Rank Value Sample
1 2.120 y 10 2.431 x
2 2.153 y 11 2.556 x
3 2.183 x 12 2.558 y
4 2.213 y 13 2.587 y
5 2.240 y 14 2.629 x
6 2.245 y 15 2.641 x
7 2.266 y 16 2.715 x
8 2.281 y 17 2.805 x
9 2.336 y 18 2.840 x
follows from the discussion just given that when H0 is true,
E(S) = m(m + n + 1)
2
. (10.8.3)
Also, it can be shown that when H0 is true,
Var(S) = mn(m + n + 1)
12
. (10.8.4)
Furthermore, when the sample sizes m and n are large and H0 is true, the distribution
of S will be approximately the normal distribution for which the mean and the variance
are given by Eqs. (10.8.3) and (10.8.4). TheWilcoxon-Mann-Whitney ranks test
rejectsH0 if the value of S deviates very far from its mean value given by Eq. (10.8.3).
In other words, the test specifies rejecting H0 if |S − (1/2)m(m + n + 1)| ≥ c, where
the constant c is chosen appropriately. In particular, when the approximate normal
distribution of S is used, the constant c = [Var(S)]1/2 
−1(1− α0/2) makes the test
have level of significance α0.
Example
10.8.4
Comparing Copper Ores. Consider again the comparison of copper ores in Example
10.8.3. Suppose that the m = 8 measurements in the first sample are
2.183, 2.431, 2.556, 2.629, 2.641, 2.715, 2.805, 2.840,
while the n = 10 measurements in the second sample are
2.120, 2.153, 2.213, 2.240, 2.245, 2.266, 2.281, 2.336, 2.558, 2.587.
The 18 values in the two samples are ordered from smallest to largest in Table 10.43.
Each observed value in the first sample is identified by the symbol x, and each
observed value in the second sample is identified by the symbol y. The sum S of
the ranks of the 10 observed values in the first sample is found to be 104.
Suppose that we use the normal distribution approximation. Then if H0 is true, S
has approximately the normal distribution with mean 76 and variance 126.67. The
standard deviation of S is therefore (126.67)1/2 = 11.25. Hence, if H0 is true, the
random variable Z = (S − 76)/(11.25) will have approximately the standard normal
distribution. Since S = 104 in this example, it follows that Z = 2.49. The p-value
682 Chapter 10 Categorical Data and Nonparametric Methods
corresponding to this value of Z is 0.0128. Hence, the null hypothesis would be
rejected at every level of significance α0 ≥ 0.0128.  
For small values of m and n, the normal approximation to the distribution of S
will not be appropriate. Tables of the exact distributions of S for small sample sizes
are given in many published collections of statistical tables. Many statistical software
packages also calculate the c.d.f. and quantiles of the exact distribution of S.
Note: Tests for Paired Data. Versions of the sign test and ranks test for paired data
are developed in Exercises 1 and 15.
Ties
The theory of the Wilcoxon-Mann-Whitney signed ranks test is based on the assumption
that all of the observed values of the Xi and Yj will be distinct. Since the
measurements in an actual experiment may be made with only limited precision,
however, there may actually be observed values that appear more than once. For
example, suppose that aWilcoxon-Mann-Whitney ranks test is to be performed, and
it is found that Xi
= Yj for one or more pairs (i, j ). In this case, the ranks test should
be carried out twice. In the first test, for each pair with Xi
= Yj , it should be assumed
that eachXi <Yj . In the second test, assume thatXi >Yj . If the tail areas found from
the two tests are roughly equal, then the ties are a relatively unimportant part of the
data. If, on the other hand, the tail areas are quite different, then the ties can seriously
affect the inferences that are to be made. In this case the data may be inconclusive.
Example
10.8.5
Calcium Supplements and Blood Pressure. Consider the data from Exercise 10 in
Sec. 9.6, which we used to illustrate the Kolmogorov-Smirnov test in Example 10.6.4.
The observed values −5 and −3 appear in both samples. First, we shall assign the
smaller ranks to those values in the group that received the calcium supplement (the
Xi ’s) and then assign the smaller rank to the placebo group (the Yj ’s). For example,
in the combined sample, the −3 values are the fifth, sixth, and seventh smallest. In
the first test, we shall assign rank 5 to the Xi that equals −3 and ranks 6 and 7 to
the two Yj ’s that equal −3. In the second test, we shall assign rank 7 to the Xi that
equals −3 and ranks 5 and 6 to the Yj ’s. For the first test, the sum of the X ranks is
123, and in the second test, the sum of the X ranks is 126. In this problem, m = 10 and
n = 11, so the mean and variance of S when the null hypothesis is true are 110 and
201.7, respectively. The two-sided tail areas corresponding to the two assignments
are 0.36 and 0.26. Neither of these would lead to rejecting the null hypothesis at level
α0 unless α0 ≥ 0.26.  
Other reasonable methods for handling ties have been proposed. When two or
more values are the same, one simple method is to consider the successive ranks that
are to be assigned to these values and then assign the average of these ranks to each
of the tied values. When this method is used, the value of Var(S) must be corrected
because of the ties.
Power of the Wilcoxon-Mann-Whitney Ranks Test
The Wilcoxon-Mann-Whitney ranks test rejects the null hypothesis that the two
distributions are the same when the sum S of the X ranks is either too large or too
small. This would be a sensible thing to do if one thought that the most important
10.8 Sign and Rank Tests 683
alternatives were those in which the Xi values tended to be larger than the Yj values
or those in which the Xi values tended to be smaller than the Yj values. However,
there are other situations in which F  = G, but S tends to be close to the mean in
Eq. (10.8.3). For example, suppose that all X1, . . . ,Xm have the uniform distribution
on the interval [0, 1] and Y1, . . . , Yn have the following p.d.f.:
g(y) =
 
0.5 if−1< y <0 or 1< y <2,
0 otherwise.
Then it is not difficult to show that E(S) is the same as Eq. (10.8.3) and Var(S) =
m2n/4. In such a case, the power of the test (the probability of rejecting H0) would
not be much larger than the level of significance α0. Indeed, if one were concerned
about alternatives of this sort, one would wish to reject H0 if the X ranks were too
closely clustered regardless of whether they were large or small.
TheWilcoxon-Mann-Whitney ranks test is designed to have high power when F
and G have a special relationship to each other, defined next.
Definition
10.8.1
Stochastically Larger. Let X be a random variable with c.d.f. F, and let Y be a random
variable with c.d.f. G. Let F
−1 and G
−1 denote the respective quantile functions.We
say that F is stochastically larger thanGor, equivalently, thatX is stochastically larger
than Y if F
−1(p) ≥ G
−1(p) for all 0<p <1; that is, every quantile of X is at least as
large as the corresponding quantile of Y .
It is easy to see that if Xi is stochastically larger than Yj , then the ranks of the Xi’s in
the combined sample will tend to be at least as large as the ranks of the Yj ’s. This will
make large values of S more likely than small values. Similarly, if Yj is stochastically
larger than Xi , S will tend to be small.
When neither Xi nor Yj is stochastically larger than the other, it is difficult to
make any general claim about the distribution of S. For large sample sizes, a normal
approximation still holds for the distribution of S, even when F  = G. However, the
mean and variance of S depend on the two c.d.f.’s F and G. For example, using the
result in Exercise 11, one can show that
E(S) = nm Pr(X1 ≥ Y1) + m(m + 1)
2
. (10.8.5)
Using this same approach, one can also show that
Var(S) = nm
3
Pr(X1 ≥ Y1) + (1+ m + n) Pr(X1 ≥ Y1)2 (10.8.6)
+ (m − 1) Pr(X1 ≥ Y1, X1 ≥ Y2) + (n − 1) Pr(X1 ≥ Y1, X2 ≥ Y2)
4
.
In principle, all of these probabilities could be computed for each specific choice
of F and G. For particular choices of F and G, one could use simulation methods
(see Chapter 12) to approximate the necessary probabilities. After computing or
approximating these probabilities, one can then approximate the power of the level
α0Wilcoxon-Mann-Whitney ranks test as follows: First, recall that the test rejects the
null hypothesis that F = G if S ≤ c1 or S ≥ c2, where
c1 = m(m + n + 1)
2
−  
−1


1− α0
2
   
mn(m + n + 1)
12
 1/2
,
c2 = m(m + n + 1)
2
+  
−1


1− α0
2
   
mn(m + n + 1)
12
 1/2
.
684 Chapter 10 Categorical Data and Nonparametric Methods
Then the power of the test is
 


c1 − E(S)
Var(S)1/2
 
+ 1−  


c2 − E(S)
Var(S)1/2
 
,
where E(S) and Var(S) are given by Eqs. (10.8.5) and (10.8.6), respectively.
Summary
The sign test was introduced as a nonparametric test for hypotheses about the median
of an unknown distribution. TheWilcoxon-Mann-Whitney ranks test was developed
as another nonparametric test for hypotheses about the equality of two c.d.f.’s. The
Wilcoxon-Mann-Whitney ranks test was designed to have large power function when
one of the two distributions is stochastically larger than the other.
Exercises
1. Suppose that (X1, Y1), . . . , (Xn, Yn) are i.i.d. pairs of
random variables with a continuous joint distribution. Let
p = Pr(Xi
≤ Yi), and suppose that we want to test the
hypotheses
H0: p ≤ 1/2,
H1: p >1/2.
(10.8.7)
Describe a version of the sign test to use for testing these
hypotheses.
2. Consider again the data in Example 10.8.4. Test the
hypotheses (10.8.2) by applying theKolmogorov-Smirnov
test for two samples.
3. Consider again the data in Example 10.8.4. Test the hypotheses
(10.8.2) by assuming that the observations are
taken from two normal distributions with the same variance,
and apply a t test of the type described in Sec. 9.6.
4. In an experiment to compare the effectiveness of two
drugs A and B in reducing blood glucose concentrations,
drug A was administered to 25 patients, and drug B was
administered to 15 patients. The reductions in blood glucose
concentrations for the 25 patients who received drug
A are given in Table 10.44. The reductions in concentrations
for the 15 patients who received drug B are given
in Table 10.45. Test the hypothesis that the two drugs are
equally effective in reducing blood glucose concentrations
by using theWilcoxon-Mann-Whitney ranks test.
Table 10.44 Data for patients who receive
drug A in Exercise 4
0.35 1.12 1.54 0.13 0.77
0.16 1.20 0.40 1.38 0.39
0.58 0.04 0.44 0.75 0.71
1.64 0.49 0.90 0.83 0.28
1.50 1.73 1.15 0.72 0.91
Table 10.45 Data for patients who receive
drug B in Exercise 4
1.78 1.25 1.01
1.82 1.95 1.81
0.68 1.48 1.59
0.89 0.86 1.63
1.26 1.07 1.31
5. Consider again the data in Exercise 4. Test the hypothesis
that the two drugs are equally effective by applying
the Kolmogorov-Smirnov test for two samples.
6. Consider again the data in Exercise 4. Test the hypothesis
that the two drugs are equally effective by assuming
that the observations are taken from two normal distributions
with the same variance and applying a t test of the
type described in Sec. 9.6.
7. Suppose that X1, . . . , Xm form a random sample of m
observations from a continuous distribution for which the
p.d.f. f (x) is unknown, and that Y1, . . . , Yn form an independent
random sample of n observations from another
continuous distribution for which the p.d.f. g(x) is also
unknown. Suppose also that f (x) = g(x − θ) for −∞ <
x <∞, where the value of the parameter θ is unknown
(−∞ < θ <∞). Let F
−1 be the quantile function of the
Xi ’s, and letG
−1 be the quantile function of the Yj ’s. Show
that F
−1(p) = θ + G
−1(p) for all 0<p <1.
8. Consider again the conditions of Exercise 7. Describe
how to carry out a one-sided Wilcoxon-Mann-Whitney
ranks test of the following hypotheses:
H0: θ ≤ 0,
H1: θ >0.
10.8 Sign and Rank Tests 685
9. Consider again the conditions of Exercise 7. Describe
how to carry out a two-sided Wilcoxon-Mann-Whitney
ranks test of the following hypotheses for a specified value
of θ0:
H0: θ = θ0,
H1: θ  = θ0.
10. Consider again the conditions of Exercise 9. Describe
how to use theWilcoxon-Mann-Whitney ranks test to determine
a confidence interval for θ with confidence coefficient
1− α0. Hint: For which values of θ0 would you accept
the null hypothesis H0 : θ = θ0 at level of significance α0?
11. Let X1, . . . , Xm and Y1, . . . , Yn be the observations in
two samples, and suppose that no two of these observations
are equal. Consider the mn pairs
(X1, Y1) . . . (X1, Yn),
(X2, Y1) . . . (X2, Yn),
...
(Xm, Y1) . . . (Xm, Yn).
LetU denote the number of these pairs for which the value
of the X component is greater than the value of the Y
component. Show that
U = S − 1
2
m(m + 1),
where S is the sum of the ranks assigned to X1, . . . , Xm,
as defined in this section.
12. Let X1, . . . ,Xm be i.i.d. with c.d.f. F independently of
Y1, . . . , Yn, which are i.i.d. with c.d.f.G. Let S be as defined
in this section. Prove that Eq. (10.8.5) gives the mean of
S.
13. Under the conditions of Exercise 12, prove that Eq.
(10.8.6) gives the variance of S.
14. Under the conditions of Exercises 12 and 13, suppose
further that F = G. Prove that Eqs. (10.8.5) and (10.8.6)
agree with Eqs. (10.8.3) and (10.8.4), respectively.
15. Consider again the conditions of Exercise 1. This time,
letDi
= Xi
− Yi .Wilcoxon (1945) developed the following
test of the hypotheses (10.8.7). Order the absolute values
|D1|, . . . , |Dn
| from smallest to largest, and assign ranks
from 1 to n to the values. Then SW is set equal to the
sum of all the ranks of those |Di
| such that Di > 0. If
p = Pr(Xi
≤ Yi) = 1/2, then the mean and variance of SW
are
E(SW) = n(n + 1)
4
, (10.8.8)
Var(SW) = n(n + 1)(2n + 1)
24
. (10.8.9)
The test rejects H0 if SW
≥ c, where c is chosen to make
the test have level of significance α0. This test is called
the Wilcoxon signed ranks test. If n is large, a normal
distribution approximation allows us to use c = E(SW) +
 
−1(1− α0) Var(SW)1/2.
a. Let Wi
= 1 if Xi
≤ Yi , and Wi
= 0 if not. Show that
SW
=
 n
i=1 iWi .
b. Prove that E(SW) is as stated in Eq. (10.8.8) under
the assumption that p = 1/2. Hint: You may wish to
use Eq. (4.7.13).
c. Prove that Var(SW) is as stated in Eq. (10.8.9) under
the assumption that p = 1/2. Hint: You may wish to
use Eq. (4.7.14).
16. In an experiment to compare two different materials
A and B that might be used for manufacturing the heels of
men’s dress shoes, 15 men were selected and fitted with a
new pair of shoes on which one heel was made of material
A and one heel was made of material B. At the beginning
of the experiment, each heel was 10 millimeters thick. After
the shoes had been worn for one month, the remaining
thickness of each heel was measured. The results are given
in Table 10.46. Test the null hypothesis that material A is
not more durable than material B against the alternative
that material A is more durable than material B, by using
(a) the sign test of Exercise 1, (b) the Wilcoxon signedranks
test of Exercise 15, and (c) the paired t test.
Table 10.46 Data for Exercise 16
Pair Material A Material B
1 6.6 7.4
2 7.0 5.4
3 8.3 8.8
4 8.2 8.0
5 5.2 6.8
6 9.3 9.1
7 7.9 6.3
8 8.5 7.5
9 7.8 7.0
10 7.5 6.6
11 6.1 4.4
12 8.9 7.7
13 6.1 4.2
14 9.4 9.4
15 9.1 9.1
686 Chapter 10 Categorical Data and Nonparametric Methods
10.9 Supplementary Exercises
1. Describe how to use the sign test to form a coefficient
1− α0 confidence interval for the median θ of an unknown
distribution. Use the data in Exercise 7 in Sec. 8.5 to construct
the observed coefficient 0.95 confidence interval.
Hint: For which values of θ0 would you fail to reject the
null hypothesis H0 : θ = θ0 at level of significance α0?
2. Suppose that 400 persons are chosen at random from a
large population, and that each person in the sample specifies
which one of five breakfast cereals she most prefers.
For i = 1, . . . , 5, let pi denote the proportion of the population
that prefers cereal i, and let Ni denote the number
of persons in the sample who prefer cereal i. It is
desired to test the following hypotheses at the level of
significance 0.01:
H0: p1 = p2 = . . . = p5,
H1: The hypothesis H0 is not true.
For what values of
 5
i=1 N2
i would H0 be rejected?
3. Consider a large population of families that have exactly
three children, and suppose that it is desired to test
the null hypothesis H0 that the distribution of the number
of boys in each family is a binomial distribution with parameters
n = 3 and p = 1/2 against the general alternative
H1 that H0 is not true. Suppose also that in a random sample
of 128 families it is found that 26 families have no boys,
32 families have one boy, 40 families have two boys, and
30 families have three boys. At what levels of significance
should H0 be rejected?
4. Consider again the conditions of Exercise 3, including
the observations in the random sample of 128 families, but
suppose now that it is desired to test the composite null hypothesis
H0 that the distribution of the number of boys in
each family is a binomial distribution for which n = 3, and
the value of p is not specified against the general alternative
H1 that H0 is not true. At what levels of significance
should H0 be rejected?
5. In order to study the genetic history of three different
large groups of Americans, a random sample of 50 persons
is drawn from group 1, a random sample of 100 persons is
drawn from group 2, and a random sample of 200 persons
is drawn from group 3. The blood type of each person in
the samples is classified as A, B, AB, or O, and the results
are as given in Table 10.47. Test the hypothesis that the
distribution of blood types is the same in all three groups
at the level of significance 0.1.
Table 10.47 Data for Exercises 5 and 6
A B AB O Total
Group 1 24 6 5 15 50
Group 2 43 24 7 26 100
Group 3 69 47 22 62 200
6. Consider again the conditions of Exercise 5. Explain
how to change the numbers in Table 10.47 in such a way
that each row total and each column total remains unchanged,
but the value of the χ2 test statistic is increased.
7. Consider a χ2 test of independence that is to be applied
to the elements of a 2 × 2 contingency table. Show that the
quantity (Nij
− ˆEij )2 has the same value for each of the
four cells of the table.
8. Consider again the conditions of Exercise 7. Show that
the χ2 statistic Q can be written in the form
Q = n(N11N22 − N12N21)2
N1+N2+N+1N+2
.
9. Suppose that a χ2 test of independence at the level of
significance 0.01 is to be applied to the elements of a 2 × 2
contingency table containing 4n observations, and that the
data have the form given in Table 10.48. For what values
of a would the null hypothesis be rejected?
Table 10.48 Form of the data for Exercise 9
n + a n − a
n − a n + a
10. Suppose that a χ2 test of independence at the level
of significance 0.005 is to be applied to the elements of a
2 × 2 contingency table containing 2n observations, and
that for some α ∈ (0, 1) the data have the form given in
Table 10.49. For what values of α would the null hypothesis
be rejected?
Table 10.49 Form of the data for Exercise 10
αn (1− α)n
(1− α)n αn
11. In a study of the health effects of air pollution, it was
found that the proportion of the total population of city A
that suffered from respiratory diseases was larger than the
proportion for city B. Since city A was generally regarded
as being less polluted and more healthful than city B, this
result was considered surprising. Therefore, separate investigations
were made for the younger population (under
age 40) and for the older population (age 40 or older). It
10.9 Supplementary Exercises 687
was found that the proportion of the younger population
suffering from respiratory diseases was smaller for city A
than for city B, and also that the proportion of the older
population suffering from respiratory diseases was smaller
for cityAthan for city B. Discuss and explain these results.
12. Suppose that an achievement test in mathematics was
given to students from two different high schools A and B.
When the results of the test were tabulated, it was found
that the average score for the freshmen at school A was
higher than the average for the freshmen at school B, and
that the same relationship existed for the sophomores, the
juniors, and the seniors at the two schools. On the other
hand, it was found also that the average score of all the
students at school A was lower than that of all the students
at school B. Discuss and explain these results. Give an
example of how this could happen.
13. A random sample of 100 hospital patients suffering
from depression received a particular treatment over a
period of three months. Prior to the beginning of the treatment,
each patient was classified as being at one of five
levels of depression, where level 1 represented the most
severe level of depression and level 5 represented the
mildest level. At the end of the treatment, each patient
was again classified according to the same five levels of
depression. The results are given in Table 10.50. Discuss
the use of this table for determining whether the treatment
has been helpful in alleviating depression.
Table 10.50 Data for Exercise 13
Level of depression
Level of depression after treatment
before treatment 1 2 3 4 5
1 7 3 0 0 0
2 1 27 14 2 0
3 0 0 19 8 2
4 0 1 2 12 0
5 0 0 1 1 0
14. Suppose that a random sample of three observations
is drawn from a distribution with the following p.d.f.:
f (x) =
 
θxθ−1 for 0 < x <1,
0 otherwise,
where θ >0. Determine the p.d.f. of the sample median.
15. Suppose that a random sample of n observations is
drawn from a distribution for which the p.d.f. is as given
in Exercise 14. Determine the asymptotic distribution of
the sample median.
16. Suppose that a random sample of n observations is
drawn from a t distribution with α >2 degrees of freedom.
Show that the asymptotic distributions of both the
sample mean Xn and the sample median ˜Xn are normal,
and determine the positive integers α for which the variance
of the asymptotic distribution is smaller for Xn than
for ˜Xn.
17. Suppose that X1, . . . , Xn form a large random sample
from a distribution for which the p.d.f. is h(x|θ) =
αf (x|θ) + (1− α)g(x|θ). Here f (x|θ) is the p.d.f. of the
normal distribution with unknown mean θ and variance
1, g(x|θ) is the p.d.f. of the normal distribution with the
same unknown mean θ and variance σ2, and 0 ≤ α ≤ 1.
Let Xn and ˜Xn denote the sample mean and the sample
median, respectively.
a. For σ2 = 100, determine the values of α for which the
M.S.E. of ˜Xn will be smaller than the M.S.E. of Xn.
b. For α = 1/2, determine the values of σ2 for which the
M.S.E. of ˜Xn will be smaller than the M.S.E. of Xn.
18. Suppose that X1, . . . , Xn form a random sample from
a distribution with p.d.f. f (x), and let Y1< Y2 < . . . < Yn
denote the order statistics of the sample. Prove that the
joint p.d.f. of Y1, . . . , Yn is as follows:
g(y1, . . . , yn) =
⎧⎨
⎩
n!f (y1) . . . f (yn) for y1< y2 <
. . . < yn
0 otherwise.
19. Let Y1< Y2 < Y3 denote the order statistics of a random
sample of three observations from the uniform distribution
on the interval [0, 1]. Determine the conditional
distribution of Y2 given that Y1 = y1 and Y3 = y3 (0 < y1 <
y3 < 1).
20. Suppose that a random sample of 20 observations is
drawn from an unknown continuous distribution, and let
Y1 < . . . < Y20 denote the order statistics of the sample.
Also, let θ denote the 0.3 quantile of the distribution, and
suppose that it is desired to present a confidence interval
for θ that has the form (Yr, Yr+3). Determine the value
of r(r = 1, 2, . . . , 17) for which this interval will have the
largest confidence coefficient γ , and determine the value
of γ .
21. Suppose thatX1, . . . , Xm form a random sample from
a continuous distribution for which the p.d.f. f (x) is unknown;
Y1, . . . , Yn form an independent random sample
from another continuous distribution for which the p.d.f.
g(x) also is unknown; and f (x) = g(x − θ) for −∞< x <
∞, where the value of the parameter θ is unknown (−∞<
θ <∞). Suppose that it is desired to carry out aWilcoxon-
Mann-Whitney ranks test of the following hypotheses at
a specified level of significance α (0 <α <1):
H0: θ = θ0,
H1: θ  = θ0.
Assume that no two of the observations are equal, and
688 Chapter 10 Categorical Data and Nonparametric Methods
let Uθ0 denote the number of pairs (Xi, Yj ) such that Xi
−
Yj > θ0, where i = 1, . . . , m and j = 1, . . . , n. Show that
for large values of m and n, the hypothesis H0 should not
be rejected if and only if
mn
2
−  
−1


1− α
2
   
mn(m + n + 1)
12
 1/2
<Uθ0 <
mn
2
+  
−1


1− α
2
   
mn(m + n + 1)
12
 1/2
,
where  
−1 is the quantile function of the standard normal
distribution. Hint: See Exercise 11 of Sec. 10.8.
22. Consider again the conditions of Exercise 21. Show
that a confidence interval for θ with confidence coefficient
1− α can be obtained by the following procedure: Let k
be the largest integer less than or equal to
mn
2
−  
−1


1− α
2
   
mn(m + n + 1)
12
 1/2
.
Also, let A be the kth smallest of the mn differences Xi
−
Yj , where i = 1, . . . , m and j = 1, . . . , n, and let B be
the kth largest of these mn differences. Then the interval
A < θ <B is a confidence interval of the required type.
23. The sign test can be extended to a test of hypotheses
about an arbitrary quantile of a distribution rather than
just the median. Let θp be the p quantile of a distribution,
and suppose that X1, . . . , Xn form an i.i.d. sample from
this distribution.
a. Let b be an arbitrary number. Explain how to construct
a version of the sign test for the hypotheses
H0: θp
= b,
H1: θp
 = b,
at level of significance α0. (Construct an equal-tailed
test if you wish.)
b. Show how to use this version of the sign test to form
a coefficient 1− α0 confidence interval for θp.
