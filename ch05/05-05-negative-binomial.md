(sec-5-5)=
# 5.5 The Negative Binomial Distributions

(sec-5-5-0)=
# Overview

*Earlier we learned that, in n Bernoulli trials with probability of success p, the number of successes has the binomial distribution with parameters n and p. Instead of counting successes in a fixed number of trials, it is often necessary to observe the trials until we see a fixed number of successes. For example, while monitoring a piece of equipment to see when it needs maintenance, we might let it run until it produces a fixed number of errors and then repair it. The number of failures until a fixed number of successes has a distribution in the family of negative binomial distributions.*

(sec-5-5-1)=
# 5.5.1 Definition and Interpretation

## Example 5.5.1: Defective Parts

Suppose that a machine produces parts that can be either good or
defective. Let Xi
= 1 if the ith part is defective and Xi
= 0 otherwise. Assume that
the parts are good or defective independently of each other with Pr(Xi
= 1) = p for
all i. An inspector observes the parts produced by this machine until she sees four
defectives. Let X be the number of good parts observed by the time that the fourth
defective is observed. What is the distribution of X?  
The problem described in Example 5.5.1 is typical of a general situation in which
a sequence of Bernoulli trials can be observed. Suppose that an infinite sequence
of Bernoulli trials is available. Call the two possible outcomes success and failure,
with p being the probability of success. In this section, we shall study the distribution
of the total number of failures that will occur before exactly r successes have been
obtained, where r is a fixed positive integer.

## Theorem 5.5.1: Sampling until a Fixed Number of Successes

Suppose that an infinite sequence of
Bernoulli trials with probability of success p are available. The number X of failures
that occur before the rth success has the following p.d.f.:
f (x|r, p) =
   
r + x − 1
x
 
pr(1− p)x for x = 0, 1, 2, . . . ,
0 otherwise.
(5.5.1)
Proof For n = r, r + 1, . . . , we shall let An denote the event that the total number of
trials required to obtain exactly r successes is n. As explained in Example 2.2.8, the
event An will occur if and only if exactly r − 1 successes occur among the first n − 1
298 Chapter 5 Special Distributions
trials and the rth success is obtained on the nth trial. Since all trials are independent,
it follows that
Pr(An) =


n − 1
r − 1
 
pr−1(1− p)(n−1)−(r−1) . p =


n − 1
r − 1
 
pr(1− p)n−r . (5.5.2)
For each value of x (x = 0, 1, 2, . . .), the event that exactly x failures are obtained
before the rth success is obtained is the same as the event that the total number
of trials required to obtain r successes is r + x. In other words, if X denotes the
number of failures that will occur before the rth success is obtained, then Pr(X =
x) = Pr(Ar+x). Eq. (5.5.1) now follows from Eq. (5.5.2).
Definition
5.5.1
Negative Binomial Distribution. A random variable X has the negative binomial distribution
with parameters r and p (r = 1, 2, . . . and 0 < p <1) if X has a discrete
distribution for which the p.f. f (x|r, p) is as specified by Eq. (5.5.1).
Example
5.5.2
Defective Parts. Example 5.5.1 is worded so that defective parts are successes and
good parts are failures. The distribution of the number X of good parts observed by
the time of the fourth defective is the negative binomial distribution with parameters
4 and p.  
The Geometric Distributions
The most common special case of a negative binomial random variable is one for
which r = 1. This would be the number of failures until the first success.
Definition
5.5.2
Geometric Distribution. A random variable X has the geometric distribution with
parameter p (0<p<1) if X has a discrete distribution for which the p.f. f (x|1, p) is
as follows:
f (x|1, p) =
 
p(1− p)x for x = 0, 1, 2, . . . ,
0 otherwise.
(5.5.3)
Example
5.5.3
Triples in the Lottery. A common daily lottery game involves the drawing of three
digits from 0 to 9 independently with replacement and independently from day to
day. Lottery watchers often get excited when all three digits are the same, an event
called triples. If p is the probability of obtaining triples, and if X is the number of
days without triples before the first triple is observed, then X has the geometric
distribution with parameter p. In this case, it is easy to see that p = 0.01, since there
are 10 different triples among the 1000 equally likely daily numbers.  
The relationship between geometric and negative binomial distributions goes
beyond the fact that the geometric distributions are special cases of negative binomial
distributions.
Theorem
5.5.2
IfX1, . . . , Xr are i.i.d. random variables and if eachXi has the geometric distribution
with parameter p, then the sum X1 + . . . + Xr has the negative binomial distribution
with parameters r and p.
Proof Consider an infinite sequence of Bernoulli trials with success probability p.
Let X1 denote the number of failures that occur before the first success is obtained;
then X1 will have the geometric distribution with parameter p.
Now continue observing the Bernoulli trials after the first success. For j =
2, 3, . . . , let Xj denote the number of failures that occur after j − 1 successes have
5.5 The Negative Binomial Distributions 299
been obtained but before the jth success is obtained. Since all the trials are independent
and the probability of obtaining a success on each trial is p, it follows that each
random variable Xj will have the geometric distribution with parameter p and that
the random variables X1, X2, . . . will be independent. Furthermore, for r = 1, 2, . . . ,
the sum X1 + . . . + Xr will be equal to the total number of failures that occur before
exactly r successes have been obtained. Therefore, this sum will have the negative
binomial distribution with parameters r and p.
Properties of Negative Binomial and Geometric Distributions
Theorem
5.5.3
Moment Generating Function. IfX has the negative binomial distribution with parameters
r and p, then the m.g.f. of X is as follows:
ψ(t) =


p
1− (1− p)et
 r
for t < log


1
1− p
 
. (5.5.4)
The m.g.f. of the geometric distribution with parameter p is the special case of
Eq. (5.5.4) with r = 1.
Proof LetX1, . . . ,Xr be a random sample of r geometric random variables each with
parameter p. We shall find the m.g.f. of X1 and then apply Theorems 4.4.4 and 5.5.2
to find the m.g.f. of the negative binomial distribution with parameters r and p.
The m.g.f. ψ1(t) of X1 is
ψ1(t) = E(etX1) = p
∞ 
x=0
[(1− p)et ]x. (5.5.5)
The infinite series in Eq. (5.5.5) will have a finite sum for every value of t such that
0 < (1− p)et < 1, that is, for t < log(1/[1− p]). It is known from elementary calculus
that for every number α (0 <α <1),
∞ 
x=0
αx = 1
1− α
.
Therefore, fort < log(1/[1− p]), the m.g.f. of the geometric distribution with parameter
p is
ψ1(t) = p
1− (1− p)et
. (5.5.6)
Each of X1, . . . ,Xr has the same m.g.f., namely, ψ1. According to Theorem 4.4.4,
the m.g.f. of X = X1 + . . . + Xr is ψ(t) = [ψ1(t)]r . Theorem 5.5.2 says that X has the
negative binomial distribution with parameters r and p, and hence the m.g.f. of X is
[ψ1(t)]r , which is the same as Eq. (5.5.4).
Theorem
5.5.4
Mean and Variance. IfX has the negative binomial distribution with parameters r and
p, the mean and the variance of X must be
E(X) = r(1− p)
p
and Var(X) = r(1− p)
p2
. (5.5.7)
The mean and variance of the geometric distribution with parameter p are the special
case of Eq. (5.5.7) with r = 1.
300 Chapter 5 Special Distributions
Proof Let X1 have the geometric distribution with parameter p. We will find the
mean and variance by differentiating the m.g.f. Eq. (5.5.5):
E(X1) = ψ
 
1(0) = 1− p
p
, (5.5.8)
Var(X1) = ψ
  
1 (0) − [ψ
 
1(0)]2 = 1− p
p2
. (5.5.9)
If X has the negative binomial distribution with parameters r and p, represent it as
the sum X = X1 + . . . + Xr of r independent random variables, each having the same
distribution as X1. Eq. (5.5.7) now follows from Eqs. (5.5.8) and (5.5.9).
Example
5.5.4
Triples in the Lottery. In Example 5.5.3, the number X of daily draws without a triple
until we see a triple has the geometric distribution with parameter p = 0.01. The total
number of days until we see the first triple is then X + 1. So, the expected number of
days until we observe triples is E(X) + 1= 100.
Now suppose that a lottery player has been waiting 120 days for triples to occur.
Such a player might conclude from the preceeding calculation that triples are “due.”
The most straightforward way to address such a claim would be to start by calculating
the conditional distribution of X given that X ≥ 120.  
The next result says that the lottery player at the end of Example 5.5.4 couldn’t
be farther from correct. Regardless of how long he has waited for triples, the time
remaining until triples occur has the same geometric distribution (and the same
mean) as it had when he started waiting. The proof is simple and is left as Exercise 8.
Theorem
5.5.5
Memoryless Property of Geometric Distributions. LetXhave the geometric distribution
with parameter p, and let k ≥ 0. Then for every integer t ≥ 0,
Pr(X = k + t |X ≥ k) = Pr(X = t).
The intuition behind Theorem 5.5.5 is the following: Think of X as the number of
failures until the first success in a sequence of Bernoulli trials. Let Y be the number
of failures starting with the k + 1st trial until the next success. Then Y has the same
distribution as X and is independent of the first k trials. Hence, conditioning on
anything that happened on the first k trials, such as no successes yet, doesn’t affect
the distribution of Y —it is still the same geometric distribution. A formal proof can
be given in Exercise 8. In Exercise 13, you can prove that the geometric distributions
are the only discrete distributions that have the memoryless property.
Example
5.5.5
Triples in the Lottery. In Example 5.5.4, after the first 120 non-triples, the process
essentially starts over again and we still have to wait a geometric amount of time
until the first triple.
At the beginning of the experiment, the expected number of failures (nontriples)
that will occur before the first success (triples) is (1− p)/p, as given by
Eq. (5.5.8). If it is known that failures were obtained on the first 120 trials, then the
conditional expected total number of failures before the first success (given the 120
failures on the first 120 trials) is simply 120 + (1− p)/p.  
5.5 The Negative Binomial Distributions 301
Extension of Definition of Negative Binomial Distributon
By using the definition of binomial coefficients given in Eq. (5.3.14), the function
f (x|r, p) can be regarded as the p.f. of a discrete distribution for each number r >0
(not necessarily an integer) and each number p in the interval 0 <p <1. In other
words, it can be verified that for r > 0 and 0<p <1,
∞ 
x=0


r + x − 1
x
 
pr(1− p)x = 1. (5.5.10)
Summary
If we observe a sequence of independent Bernoulli trials with success probability p,
the number of failures until the rth success has the negative binomial distribution
with parameters r and p. The special case of r = 1 is the geometric distribution with
parameter p. The sum of independent negative binomial random variables with the
same second parameter p has a negative binomial distribution.
Exercises
1. Consider a daily lottery as described in Example 5.5.4.
a. Compute the probability that two particular days in
a row will both have triples.
b. Suppose that we observe triples on a particular day.
Compute the conditional probability that we observe
triples again the next day.
2. Suppose that a sequence of independent tosses are
made with a coin for which the probability of obtaining a
head on each given toss is 1/30.
a. What is the expected number of tails that will be
obtained before five heads have been obtained?
b. What is the variance of the number of tails that will
be obtained before five heads have been obtained?
3. Consider the sequence of coin tosses described in Exercise
2.
a. What is the expected number of tosses that will be
required in order to obtain five heads?
b. What is the variance of the number of tosses that will
be required in order to obtain five heads?
4. Suppose that two players A and B are trying to throw a
basketball through a hoop. The probability that player A
will succeed on any given throw is p, and he throws until
he has succeeded r times. The probability that player B
will succeed on any given throw is mp, where m is a given
integer (m = 2, 3, . . .) such that mp < 1, and she throws
until she has succeeded mr times.
a. For which player is the expected number of throws
smaller?
b. For which player is the variance of the number of
throws smaller?
5. Suppose that the random variables X1, . . . , Xk are independent
and that Xi has the negative binomial distribution
with parameters ri and p (i = 1 . . . k). Prove that the
sum X1 + . . . + Xk has the negative binomial distribution
with parameters r = r1 + . . . + rk and p.
6. Suppose that X has the geometric distribution with
parameter p. Determine the probability that the value of
X will be one of the even integers 0, 2, 4, . . . .
7. Suppose that X has the geometric distribution with
parameter p. Show that for every nonnegative integer k,
Pr(X ≥ k) = (1− p)k.
8. Prove Theorem 5.5.5.
9. Suppose that an electronic system contains n components
that function independently of each other, and suppose
that these components are connected in series, as
defined in Exercise 5 of Sec. 3.7. Suppose also that each
component will function properly for a certain number
of periods and then will fail. Finally, suppose that for i =
1, . . . , n, the number of periods for which component i
will function properly is a discrete random variable having
302 Chapter 5 Special Distributions
a geometric distribution with parameterpi . Determine the
distribution of the number of periods for which the system
will function properly.
10. Let f (x|r, p) denote the p.f. of the negative binomial
distribution with parameters r and p, and let f (x|λ) denote
the p.f. of the Poisson distribution with mean λ, as
defined by Eq. (5.4.2). Suppose r→∞and p→1 in such
a way that the value of r(1− p) remains constant and is
equal to λ throughout the process. Show that for each fixed
nonnegative integer x,
f (x|r, p)→f (x|λ).
11. Prove that the p.f. of the negative binomial distribution
can be written in the following alternative form:
f (x|r, p) =
   −r
x
 
pr(−[1− p])x for x = 0, 1, 2, . . . ,
0 otherwise.
Hint: Use Exercise 10 in Sec. 5.3.
12. Suppose that a machine produces parts that are defective
with probability P, but P is unknown. Suppose that
P has a continuous distribution with p.d.f.
f (p) =
 
10(1− p)9 if 0<p <1,
0 otherwise.
Conditional on P = p, assume that all parts are independent
of each other. Let X be the number of nondefective
parts observed until the first defective part. If we observe
X = 12, compute the conditional p.d.f. of P given X = 12.
13. Let F be the c.d.f. of a discrete distribution that has
the memoryless property stated in Theorem 5.5.5. Define
 (x) = log[1− F(x − 1)] for x = 1, 2, . . ..
a. Show that, for all integers t, h > 0,
1− F(h − 1) = 1− F(t + h − 1)
1− F(t − 1)
.
b. Prove that  (t + h) =  (t) +  (h) for all integers t, h >
0.
c. Prove that  (t) = t (1) for every integer t > 0.
d. Prove that F must be the c.d.f. of a geometric distribution.


