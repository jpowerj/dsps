(sec-5-2)=
# 5.2 The Bernoulli and Binomial Distributions

The simplest type of experiment has only two possible outcomes, call them 0 and
1.

If $X$ equals the outcome from such an experiment, then $X$ has the simplest
type of nondegenerate distribution, which is a member of the family of Bernoulli distributions. If n independent random variables X1, . . . , Xn all have the same Bernoulli distribution, then their sum is equal to the number of the $X_i$'s that equal 1,
and the distribution of the sum is a member of the binomial family.

# 5.2.1 The Bernoulli Distributions

## Example 5.2.1: A Clinical Trial

The treatment given to a particular patient in a clinical trial can
either succeed or fail. Let X = 0 if the treatment fails, and let X = 1 if the treatment
succeeds. All that is needed to specify the distribution ofX is the value p = Pr(X = 1)
(or, equivalently, 1− p = Pr(X = 0)). Each different p corresponds to a different
distribution for X. The collection of all such distributions corresponding to all 0 ≤
p ≤ 1 form the family of Bernoulli distributions.  
An experiment of a particularly simple type is one in which there are only two
possible outcomes, such as head or tail, success or failure, defective or nondefective,
patient recovers or does not recover. It is convenient to designate the two possible
outcomes of such an experiment as 0 and 1, as in Example 5.2.1. The following recap
of Definition 3.1.5 can then be applied to every experiment of this type.

## Definition 5.2.1: Bernoulli Distribution

A random variable X has the Bernoulli distribution with parameter
p (0 ≤ p ≤ 1) if X can take only the values 0 and 1 and the probabilities
are
Pr(X = 1) = p and Pr(X = 0) = 1− p. (5.2.1)
The p.f. of X can be written as follows:
f (x|p) =
 
px(1− p)1−x for x = 0, 1,
0 otherwise.
(5.2.2)
To verify that this p.f. f (x|p) actually does represent the Bernoulli distribution
specified by the probabilities (5.2.1), it is simply necessary to note that f (1|p) = p
and f (0|p) = 1− p.
IfX has the Bernoulli distribution with parameter p, thenX2 andX are the same
random variable. It follows that
E(X) = 1 . p + 0 . (1− p) = p,
E(X2) = E(X) = p,
and
Var(X) = E(X2) − [E(X)]2 = p(1− p).
Furthermore, the m.g.f. of X is
ψ(t) = E(etX) = pet + (1− p) for −∞< t <∞.
Definition
5.2.2
Bernoulli Trials/Process. If the random variables in a finite or infinite sequence X1,
X2, . . . are i.i.d., and if each random variable Xi has the Bernoulli distribution with
parameter p, then it is said that X1, X2, . . . are Bernoulli trials with parameter p. An
infinite sequence of Bernoulli trials is also called a Bernoulli process.
Example
5.2.2
Tossing a Coin. Suppose that a fair coin is tossed repeatedly. Let Xi
= 1 if a head is
obtained on the ith toss, and let Xi
= 0 if a tail is obtained (i = 1, 2, . . .). Then the
random variables X1, X2, . . . are Bernoulli trials with parameter p = 1/2.  
5.2 The Bernoulli and Binomial Distributions 277
Example
5.2.3
Defective Parts. Suppose that 10 percent of the items produced by a certain machine
are defective and the parts are independent of each other.We will sample n items at
random and inspect them. Let Xi
= 1 if the ith item is defective, and let Xi
= 0 if it
is nondefective (i = 1, . . . , n). Then the variables X1, . . . , Xn form n Bernoulli trials
with parameter p = 1/10.  
Example
5.2.4
Clinical Trials. In the many clinical trial examples in earlier chapters (Example 4.7.8,
for instance), the random variables X1, X2, . . . , indicating whether each patient is a
success, were conditionally Bernoulli trials with parameter p given P = p, where P
is the unknown proportion of patients in a very large population who recover.  
The Binomial Distributions
Example
5.2.5
Defective Parts. In Example 5.2.3, let X = X1 + . . . + X10, which equals the number
of defective parts among the 10 sampled parts. What is the distribution of X?  
As derived after Example 3.1.9, the distribution of X in Example 5.2.5 is the
binomial distribution with parameters 10 and 1/10.We repeat the general definition
of binomial distributions here.
Definition
5.2.3
Binomial Distribution. A random variable X has the binomial distribution with parameters
n and p if X has a discrete distribution for which the p.f. is as follows:
f (x|n, p) =
   
n
x
 
px(1− p)n−x for x = 0, 1, 2, . . . , n,
0 otherwise.
(5.2.3)
In this distribution, n must be a positive integer, and p must lie in the interval
0 ≤ p ≤ 1.
Probabilities for various binomial distributions can be obtained from the table given
at the end of this book and from many statistical software programs.
The binomial distributions are of fundamental importance in probability and
statistics because of the following result, which was derived in Sec. 3.1 and which we
restate here in the terminology of this chapter.
Theorem
5.2.1
If the random variables X1, . . . , Xn form n Bernoulli trials with parameter p, and if
X = X1 + . . . + Xn, then X has the binomial distribution with parameters n and p.
When X is represented as the sum of n Bernoulli trials as in Theorem 5.2.1, the
values of the mean, variance, and m.g.f. of X can be derived very easily. These values,
which were already obtained in Example 4.2.5 and on pages 231 and 238, are
E(X) =
 n
i=1
E(Xi) = np,
Var(X) =
 n
i=1
Var(Xi) = np(1− p),
and
ψ(t) = E(etX) =
!n
i=1
E(etXi) = (pet + 1− p)n. (5.2.4)
278 Chapter 5 Special Distributions
The reader can use the m.g.f. in Eq. (5.2.4) to establish the following simple
extension of Theorem 4.4.6.
Theorem
5.2.2
If X1, . . . , Xk are independent random variables, and if Xi has the binomial distribution
with parameters ni and p (i = 1, . . . , k), then the sum X1 + . . . + Xk has the
binomial distribution with parameters n = n1 + . . . + nk and p.
Theorem 5.2.2 also follows easily if we represent each Xi as the sum of ni
Bernoulli trials with parameter p. If n = n1 + . . . + nk, and if all n trials are independent,
then the sum X1 + . . . + Xk will simply be the sum of n Bernoulli trials with
parameter p. Hence, this sum must have the binomial distribution with parameters
n and p.
Example
5.2.6
Castaneda v. Partida. Courts have used the binomial distributions to calculate probabilities
of jury compositions from populations with known racial and ethnic compositions.
In the case of Castaneda v. Partida, 430 U.S. 482 (1977), a local population was
79.1 percent Mexican American. During a 2.5-year period, there were 220 persons
called to serve on grand juries, but only 100 were Mexican Americans. The claim
was made that this was evidence of discrimination against Mexican Americans in the
grand jury selection process. The court did a calculation under the assumption that
grand jurors were drawn at random and independently from the population each
with probability 0.791 of being Mexican American. Since the claim was that 100 was
too small a number of Mexican Americans, the court calculated the probability that a
binomial random variable X with parameters 220 and 0.791 would be 100 or less. The
probability is very small (less than 10−25). Is this evidence of discrimination against
Mexican Americans? The small probability was calculated under the assumption that
X had the binomial distribution with parameters 220 and 0.791, which means that
the court was assuming that there was no discrimination against Mexican Americans
when performing the calculation. In other words, the small probability is the conditional
probability of observing X ≤ 100 given that there is no discrimination. What
should be more interesting to the court is the reverse conditional probability, namely,
the probability that there is no discrimination given that X = 100 (or given X ≤ 100).
This sounds like a case for Bayes’ theorem. After we introduce the beta distributions
in Sec. 5.8, we shall show how to use Bayes’ theorem to calculate this probability
(Examples 5.8.3 and 5.8.4).  
Note: Bernoulli and Binomial Distributions. Every random variable that takes only
the two values 0 and 1 must have a Bernoulli distribution. However, not every sum
of Bernoulli random variables has a binomial distribution. There are two conditions
needed to apply Theorem 5.2.1. The Bernoulli random variables must be mutually
independent, and they must all have the same parameter. If either of these conditions
fails, the distribution of the sum will not be a binomial distribution. When the court
did a binomial calculation in Example 5.2.6, it was defining “no discrimination” to
mean that jurors were selected independently and with the same probability 0.791
of being Mexican American. If the court had defined “no discrimination” some
other way, they would have needed to do a different, presumably more complicated,
probability calculation.
We conclude this section with an example that shows how Bernoulli and binomial
calculations can improve efficiency when data collection is costly.

## Example 5.2.7: Group Testing

Military and other large organizations are often faced with the need
to test large numbers of members for rare diseases. Suppose that each test requires
5.2 The Bernoulli and Binomial Distributions 279
a small amount of blood, and it is guaranteed to detect the disease if it is anywhere
in the blood. Suppose that 1000 people need to be tested for a disease that affects
1/5 of 1 percent of all people. Let Xj
= 1 if person j has the disease and Xj
= 0 if
not, for j = 1, . . . , 1000. We model the Xj as i.i.d. Bernoulli random variables with
parameter 0.002 for j = 1, . . . , 1000. The most na¨ıve approach would be to perform
1000 tests to see who has the disease. But if the tests are costly, there may be a more
economical way to test. For example, one could divide the 1000 people into 10 groups
of size 100 each. For each group, take a portion of the blood sample from each of
the 100 people in the group and combine them into one sample. Then test each of
the 10 combined samples. If none of the 10 combined samples has the disease, then
nobody has the disease, and we needed only 10 tests instead of 1000. If only one of
the combined samples has the disease, then we can test those 100 people separately,
and we needed only 110 tests.
In general, let Z1,i be the number of people in group i who have the disease for
i = 1, . . . , 10. Then each Z1,i has the binomial distribution with parameters 100 and
0.002. Let Y1,i
= 1 if Z1,i > 0 and Y1,i
= 0 if Z1,i
= 0. Then each Y1,i has the Bernoulli
distribution with parameter
Pr(Z1,i > 0) = 1− Pr(Z1,i
= 0) = 1− 0.998100 = 0.181,
and they are independent. Then Y1 = 10
i=1 Y1,i is the number of groups whose members
we have to test individually. Also, Y1 has the binomial distribution with parameters
10 and 0.181. The number of people that we need to test individually is 100Y1.
The mean of 100Y1 is 100 × 10 × 0.181= 181. So, the expected total number of tests is
10 + 181= 191, rather than 1000. One can compute the entire distribution of the total
number of tests, 100Y1 + 10. The maximum number of tests needed by this group
testing procedure is 1010, which would be the case if all 10 groups had at least one
person with the disease, but this has probability 3.84 × 10−8. In all other cases, group
testing requires fewer than 1000 tests.
There are multiple-stage versions of group testing in which each of the groups
that tests positive is split further into subgroups which are each tested together. If
each of those subgroups is sufficiently large, they can be further subdivided into
smaller sub-subgroups, etc. Finally, only the final-stage subgroups that have a positive
result are tested individually. This can further reduce the expected number of tests.
For example, consider the following two-stage version of the procedure described
earlier. We could divide each of the 10 groups of 100 people into 10 subgroups of
10 people each. Following the above notation, let Z2,i,k be the number of people in
subgroup k of group i who have the disease, for i = 1, . . . , 10 and k = 1, . . . , 10. Then
each Z2,i,k has the binomial distribution with parameters 10 and 0.002. Let Y2,i,k
= 1
if Z2,i,k > 0 and Y2,i,k
= 0 otherwise. Notice that Y2,i,k
= 0 for k = 1, . . . , 10 for every
i such that Y1,i
= 0. So, we only need to test individuals in those subgroups such that
Y2,i,k
= 1. Each Y2,i,k has the Bernoulli distribution with parameter
Pr(Z2,i,k > 0) = 1− Pr(Z2,i,k
= 0) = 1− 0.99810 = 0.0198,
and they are independent. Then Y2 = 10
i=1
 10
j=1 Y2,i,k is the number of groups whose
members we have to test individually. Also, Y2 has the binomial distribution with
parameters 100 and 0.0198. The number of people that we need to test individually is
10Y2. The mean of 10Y2 is 10 × 100 × 0.0198 = 19.82. The number of subgroups that
we need to test in the second stage is Y1, whose mean is 1.81. So, the expected total
number of tests is 10 + 1.81+ 19.82 = 31.63, which is even smaller than the 191 for
the one-stage procedure described earlier.  

# Summary

A random variable X has the Bernoulli distribution with parameter p if the p.f. of X
is f (x|p) = px(1− p)1−x for x = 0, 1 and 0 otherwise. If X1, . . . , Xn are i.i.d. random
variables all having the Bernoulli distribution with parameter p, then we refer to
X1, . . . , Xn as Bernoulli trials, and X = n
i=1 Xi has the binomial distribution with
parameters n and p. Also,X is the number of successes in the n Bernoulli trials, where
success on trial i corresponds to Xi
= 1 and failure corresponds to Xi
= 0.

# Exercises

1. Suppose that X is a random variable such that E(Xk) =
1/3 for k = 1, 2, . . . . Assuming that there cannot be more
than one distribution with this same sequence of moments
(see Exercise 14), determine the distribution of X.
2. Suppose that a random variable X can take only the
two values a and b with the following probabilities:
Pr(X = a) = p and Pr(X = b) = 1− p.
Express the p.f. of X in a form similar to that given in
Eq. (5.2.2).
3. Suppose that a fair coin (probability of heads equals
1/2) is tossed independently 10 times. Use the table of the
binomial distribution given at the end of this book to find
the probability that strictly more heads are obtained than
tails.
4. Suppose that the probability that a certain experiment
will be successful is 0.4, and let X denote the number
of successes that are obtained in 15 independent performances
of the experiment. Use the table of the binomial
distribution given at the end of this book to determine the
value of Pr(6 ≤ X ≤ 9).
5. Acoin for which the probability of heads is 0.6 is tossed
nine times. Use the table of the binomial distribution given
at the end of this book to find the probability of obtaining
an even number of heads.
6. Three men A, B, and C shoot at a target. Suppose that
A shoots three times and the probability that he will hit
the target on any given shot is 1/8, B shoots five times and
the probability that he will hit the target on any given shot
is 1/4, and C shoots twice and the probability that he will
hit the target on any given shot is 1/2.What is the expected
number of times that the target will be hit?
7. Under the conditions of Exercise 6, assume also that all
shots at the target are independent. What is the variance
of the number of times that the target will be hit?
8. A certain electronic system contains 10 components.
Suppose that the probability that each individual component
will fail is 0.2 and that the components fail independently
of each other. Given that at least one of the
components has failed, what is the probability that at least
two of the components have failed?
9. Suppose that the random variables X1, . . . , Xn form n
Bernoulli trials with parameter p. Determine the conditional
probability that X1 = 1, given that
 n
i=1
Xi
=k (k= 1, . . . , n).
10. The probability that each specific child in a given family
will inherit a certain disease is p. If it is known that at
least one child in a family of n children has inherited the
disease, what is the expected number of children in the
family who have inherited the disease?
11. For 0 ≤ p ≤ 1, and n = 2, 3, . . . , determine the value

12. If a random variable X has a discrete distribution
for which the p.f. is f (x), then the value of x for which
f (x) is maximum is called the mode of the distribution.
If this same maximum f (x) is attained at more than one
value of x, then all such values of x are called modes of
the distribution. Find the mode or modes of the binomial
distribution with parameters n and p. Hint: Study the ratio
f (x + 1|n, p)/f (x|n, p).

13. In a clinical trial with two treatment groups, the probability
of success in one treatment group is 0.5, and the
probability of success in the other is 0.6. Suppose that
there are five patients in each group. Assume that the
outcomes of all patients are independent. Calculate the
probability that the first group will have at least as many
successes as the second group.

14. In Exercise 1, we assumed that there could be at
most one distribution with moments E(Xk) = 1/3 for
k = 1, 2, . . . . In this exercise, we shall prove that there
can be only one such distribution. Prove the following facts and show that they imply that at most one distribution
has the given moments.

* a. Pr(|X| ≤ 1) = 1. (If not, show that limk→∞ E(X2k) =
∞.)
* b. Pr(X2 ∈ {0, 1}) = 1. (If not, prove that E(X4) <
E(X2).)
* c. Pr(X =−1) = 0. (If not, prove that E(X) < E(X2).)

15. In Example 5.2.7, suppose that we use the two-stage
version described at the end of the example. What is the
maximum number of tests that could possibly be needed
by this version?What is the probability that the maximum
number of tests would be required?

16. For the 1000 people in Example 5.2.7, suppose that
we use the following three-stage group testing procedure.
First, divide the 1000 people into five groups of size 200
each. For each group that tests positive, further divide it
into five subgroups of size 40 each. For each subgroup that
tests positive, further divide it into five sub-subgroups of
size 8 each. For each sub-subgroup that tests positive, test
all eight people. Find the expected number and maximum
number of tests.

