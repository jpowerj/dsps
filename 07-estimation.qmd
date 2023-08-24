# Estimation

## Statistical Inference

Recall our various clinical trial examples. What would we say is the probability that a future patient will respond successfully to treatment after we observe the results
from a collection of other patients? This is the kind of question that statistical
inference is designed to address. In general, statistical inference consists of making
probabilistic statements about unknown quantities. For example, we can compute
means, variances, quantiles, probabilities, and some other quantities yet to be
introduced concerning unobserved random variables and unknown parameters
of distributions. Our goal will be to say what we have learned about the unknown
quantities after observing some data that we believe contain relevant information.
Here are some other examples of questions that statistical inference can try to
answer. What can we say about whether a machine is functioning properly after we
observe some of its output? In a civil lawsuit, what can we say about whether there
was discrimination after observing how different ethnic groups were treated? The
methods of statistical inference, which we shall develop to address these questions,
are built upon the theory of probability covered in the earlier chapters of this text.
Probability and Statistical Models
In the earlier chapters of this book, we discussed the theory and methods of probability.
As new concepts in probability were introduced, we also introduced examples of
the use of these concepts in problems that we shall now recognize as statistical inference.
Before discussing statistical inference formally, it is useful to remind ourselves
of those probability concepts that will underlie inference.
Example
7.1.1
Lifetimes of Electronic Components. Acompany sells electronic components and they
are interested in knowing as much as they can about how long each component is
likely to last. They can collect data on components that have been used under typical
conditions. They choose to use the family of exponential distributions to model the
length of time (in years) from when a component is put into service until it fails.
They would like to model the components as all having the same failure rate θ,
but there is uncertainty about the specific numerical value of θ. To be more precise,
376
7.1 Statistical Inference 377
let X1, X2, . . . stand for a sequence of component lifetimes in years. The company
believes that if they knew the failure rate θ, then X1, X2, . . . would be i.i.d. random
variables having the exponential distribution with parameter θ. (See Sec. 5.7 for the
definition of exponential distributions.We are using the symbol θ for the parameter
of our exponential distributions rather than β to match the rest of the notation in this
chapter.) Suppose that the data that the company will observe consist of the values
of X1, . . . , Xm but that they are still interested in Xm+1, Xm+2, . . . . They are also
interested in θ because it is related to the average lifetime.As we saw in Eq. (5.7.17),
the mean of an exponential random variable with parameter θ is 1/θ, which is why
the company thinks of θ as the failure rate.
We imagine an experiment whose outcomes are sequences of lifetimes as described
above. As mentioned already, if we knew the value θ, then X1, X2, . . . would
be i.i.d. random variables. In this case, the law of large numbers (Theorem 6.2.4) says
that the average 1
n
 n
i=1 Xi converges in probability to the mean 1/θ. And Theorem
6.2.5 says that n/
 n
i=1 Xi converges in probability to θ. Because θ is a function
of the sequence of lifetimes that constitute each experimental outcome, it can be
treated as a random variable. Suppose that, before observing the data, the company
believes that the failure rate is probably around 0.5/year but there is quite a
bit of uncertainty about it. They model θ as a random variable having the gamma
distribution with parameters 1 and 2. To rephrase what was stated earlier, they also
model X1, X2, . . . as conditionally i.i.d. exponential random variables with parameter
θ given θ. They hope to learn more about θ from examining the sample data
X1, . . . , Xm. They can never learn θ precisely, because that would require observing
the entire infinite sequence X1, X2, . . . . For this reason, θ is only hypothetically
observable.  
Example 7.1.1 illustrates several features that will be common to most statistical
inference problems and which constitute what we call a statistical model.
Definition
7.1.1
Statistical Model. Astatistical model consists of an identification of random variables
of interest (both observable and only hypothetically observable), a specification of a
joint distribution or a family of possible joint distributions for the observable random
variables, the identification of any parameters of those distributions that are assumed
unknown and possibly hypothetically observable, and (if desired) a specification for
a (joint) distribution for the unknown parameter(s). When we treat the unknown
parameter(s) θ as random, then the joint distribution of the observable random
variables indexed by θ is understood as the conditional distribution of the observable
random variables given θ.
In Example 7.1.1, the observable random variables of interest form the sequence
X1, X2, . . . , while the failure rate θ is hypothetically observable. The family of
possible joint distributions of X1, X2, . . . is indexed by the parameter θ. The joint
distribution of the observables corresponding to the value θ is that X1, X2, . . . are
i.i.d. random variables each having the exponential distribution with parameter θ.
This is also the conditional distribution of X1, X2, . . . given θ because we are treating
θ as a radom variable.The distribution of θ is the gamma distribution with parameters
1 and 2.
Note: Redefining Old Ideas. The reader will notice that a statistical model is nothing
more than a formal identification of many features that we have been using in various
examples throughout the earlier chapters of this book. Some examples need only
a few of the features that make up a complete specification of a statistical model,
while other examples use the complete specification. In Sections 7.1–7.4, we shall
378 Chapter 7 Estimation
introduce a considerable amount of terminology, most of which is mere formalization
of concepts that have been introduced and used in several places earlier in the book.
The purpose of all of this formalism is to help us to keep the concepts organized so
that we can tell when we are applying the same ideas in new ways and when we are
introducing new ideas.
We are now ready formally to introduce statistical inference.
Definition
7.1.2
Statistical Inference. Astatistical inference is a procedure that produces a probabilistic
statement about some or all parts of a statistical model.
By a “probabilistic statement” we mean a statement that makes use of any of the
concepts of probability theory that were discussed earlier in the text or are yet to
be discussed later in the text. Some examples include a mean, a conditional mean, a
quantile, a variance, a conditional distribution for a random variable given another,
the probability of an event, a conditional probability of an event given something,
and so on. In Example 7.1.1, here are some examples of statistical inferences that
one might wish to make:
. Produce a random variable Y (a function of X1, . . . , Xm) such that Pr(Y ≥
θ|θ) = 0.9.
. Produce a random variable Y that we expect to be close to θ.
. Compute how likely it is that the average of the next 10 lifetimes, 1
10
 m+10
i=m+1 Xi ,
is at least 2.
. Say something about how confident we are that θ ≤ 0.4 after observingX1, . . . ,
Xm.
All of these types of inference and others will be discussed in more detail later in this
book.
In Definition 7.1.1, we distinguished between observable and hypothetically observable
random variables.We reserved the name observable for a random variable
that we are essentially certain that we could observe if we devoted the necessary effort
to observe it. The name hypothetically observable was used for a random variable
that would require infinite resources to observe, such as the limit (as n→∞) of the
sample averages of the first n observables. In this text, such hypothetically observable
random variables will correspond to the parameters of the joint distribution of
the observables as in Example 7.1.1. Because these parameters figure so prominently
in many of the types of inference problems that we will see, it pays to formalize the
concept of parameter.
Definition
7.1.3
Parameter/Parameter space. In a problem of statistical inference, a characteristic or
combination of characteristics that determine the joint distribution for the random
variables of interest is called a parameter of the distribution. The set   of all possible
values of a parameter θ or of a vector of parameters (θ1, . . . , θk) is called the
parameter space.
All of the families of distributions introduced earlier (and to be introduced later)
in this book have parameters that are included in the names of the individual members
of the family. For example, the family of binomial distributions has parameters
that we called n and p, the family of normal distributions is parameterized by the
mean μ and variance σ2 of each distribution, the family of uniform distributions on
intervals is parameterized by the endpoints of the intervals, the family of exponential
distributions is parameterized by the rate parameter θ, and so on.
7.1 Statistical Inference 379
In Example 7.1.1, the parameter θ (the failure rate) must be positive. Therefore,
unless certain positive values of θ can be explicitly ruled out as possible values of θ,
the parameter space   will be the set of all positive numbers. As another example,
suppose that the distribution of the heights of the individuals in a certain population
is assumed to be the normal distribution with mean μ and variance σ2, but that the
exact values of μ and σ2 are unknown. The mean μ and the variance σ2 determine
the particular normal distribution for the heights of individuals. So (μ, σ2) can be
considered a pair of parameters. In this example of heights, both μ and σ2 must be
positive. Therefore, the parameter space   can be taken as the set of all pairs (μ, σ2)
such thatμ>0 and σ2 > 0. If the normal distribution in this example represents the
distribution of the heights in inches of the individuals in some particular population,
we might be certain that 30<μ<100 and σ2 < 50. In this case, the parameter space 
could be taken as the smaller set of all pairs (μ, σ2) such that 30<μ<100 and
0 < σ2 < 50.
The important feature of the parameter space is that it must contain all possible
values of the parameters in a given problem, in order that we can be certain that the
actual value of the vector of parameters is a point in  .
Example
7.1.2
A Clinical Trial. Suppose that 40 patients are going to be given a treatment for a
condition and that we will observe for each patient whether or not they recover from
the condition. We are most likely also intersted in a large collection of additional
patients besides the 40 to be observed. To be specific, for each patient i = 1, 2, . . . ,
let Xi
= 1 if patient i recovers, and let Xi
= 0 if not. As a collection of possible
distributions for X1, X2, . . . , we could choose to say that the Xi are i.i.d. having
the Bernoulli distribution with parameter p for 0 ≤ p ≤ 1. In this case, the parameter
p is known to lie in the closed interval [0, 1], and this interval could be taken as the
parameter space. Notice also that the law of large numbers (Theorem 6.2.4) says that
p is the limit as n goes to infinity of the proportion of the first n patients who recover.
 
In most problems, there is a natural interpretation for the parameter as a feature
of the possible distributions of our data. In Example 7.1.2, the parameter p has a
natural interpretation as the proportion out of a large population of patients given
the treatment who recover from the condition. In Example 7.1.1, the parameter θ
has a natural interpretation as a failure rate, that is, one over the average lifetime
of a large population of lifetimes. In such cases, inference about parameters can
be interpreted as inference about the feature that the parameter represents. In
this text, all parameters will have such natural interpretations. In examples that
one encounters outside of an introductory course, interpretations may not be as
straightforward.
Examples of Statistical Inference
Here are some of the examples of statistical models and inferences that were introduced
earlier in the text.
Example
7.1.3
A Clinical Trial. The clinical trial introduced in Example 2.1.4 was concerned with
how likely patients are to avoid relapse while under various treatments. For each i,
let Xi
= 1 if patient i in the imipramine group avoids relapse and Xi
= 0 otherwise.
Let P stand for the proportion of patients who avoid relapse out of a large group
receiving imipramine treatment. If P is unknown, we can model X1, X2, . . . as i.i.d.
380 Chapter 7 Estimation
Bernoulli random variables with parameter p conditional on P = p. The patients in
the imipramine column of Table 2.1 should provide us with some information that
changes our uncertainty about P. A statistical inference would consist of making
a probability statement about the data and/or P, and what the data and P tell us
about each other. For instance, in Example 4.7.8, we assumed that P had the uniform
distribution on the interval [0, 1], andwefound the conditional distribution ofP given
the observed results of the study.We also computed the conditional mean of P given
the study results as well as the M.S.E. for trying to predict P both before and after
observing the results of the study.  
Example
7.1.4
Radioactive Particles. In Example 5.7.8, radioactive particles reach a target according
to a Poisson process with unknown rate β. In Exercise 22 of Sec. 5.7, you were asked
to find the conditional distribution of β after observing the Poisson process for a
certain amount of time.  
Example
7.1.5
Anthropometry of Flea Beetles. In Example 5.10.2, we plotted two physical measurements
from a sample of 31 flea beetles together with contours of a bivariate normal
distribution. The family of bivariate normal distributions is parameterized by five
quantities: the two means, the two variances, and the correlation. The choice of which
set of five parameters to use for the fitted distribution is a form of statistical inference
known as estimation.  
Example
7.1.6
Interval for Mean. Suppose that the heights of men in a certain population follow
the normal distribution with mean μ and variance 9, as in Example 5.6.7. This time,
assume thatwedo not know the value of the meanμ, but ratherwewish to learn about
it by sampling from the population. Suppose that we decide to sample n = 36 men and
letXn stand for the average of their heights.Then the interval
 
Xn
− 0.98, Xn
+ 0.98
 
computed in Example 5.6.8 has the property that it will contain the value of μ with
probability 0.95.  
Example
7.1.7
Discrimination in Jury Selection. In Example 5.8.4, we were interested in whether
there was evidence of discrimination against Mexican Americans in juror selection.
Figure 5.8 shows how people who came into the case with different opinions about
the extent of discrimination (if any) could alter their opinions in the light of learning
the numerical evidence presented in the case.  
Example
7.1.8
Service Times in a Queue. Suppose that customers in a queue must wait for service,
and that we get to observe the service times of several customers. Suppose that we
are interested in the rate at which customers are served. In Example 5.7.3, we let Z
stand for the service rate, and in Example 5.7.4, weshowedhowto find the conditional
distribution of Z given several observed service times.  
General Classes of Inference Problems
Prediction One form of inference is to try to predict random variables that have
not yet been observed. In Example 7.1.1, we might be interested in the average of
the next 10 lifetimes, 1
10
 m+10
i=m+1 Xi . In the clinical trial example (Example 7.1.3), we
might be interested in predicting how many patients from the next set of patients
in the imipramine group will have successful outcome. In virtually every statistical
inference problem, in which we have not observed all of the relevant data, prediction
7.1 Statistical Inference 381
is possible.When the unobserved quantity to be predicted is a parameter, prediction
is usually called estimation, as in Example 7.1.5.
Statistical Decision Problems In many statistical inference problems, after the experimental
data have been analyzed, we must choose a decision from some available
class of decisions with the property that the consequences of each available decision
depend on the unknown value of some parameter. For example, we might have to
estimate the unknown failure rate θ of our electronic components when the consequences
depend on how close our estimate is to the correct value θ. As another
example, we might have to decide whether the unknown proportion P of patients in
the imipramine group (Example 7.1.3) is larger or smaller than some specified constant
when the consequences depend on where P lies relative to the constant. This
last type of inference is closely related to hypothesis testing, the subject of Chapter 9.
Experimental Design In some statistical inference problems, we have some control
over the type or the amount of experimental data that will be collected. For example,
consider an experiment to determine the mean tensile strength of a certain type of
alloy as a function of the pressure and temperature at which the alloy is produced.
Within the limits of certain budgetary and time constraints, it may be possible for
the experimenter to choose the levels of pressure and temperature at which experimental
specimens of the alloy are to be produced, and also to specify the number of
specimens to be produced at each of these levels.
Such a problem, in which the experimenter can choose (at least to some extent)
the particular experiment that is to be carried out, is called a problem of experimental
design. Of course, the design of an experiment and the statistical analysis of the
experimental data are closely related. One cannot design an effective experiment
without considering the subsequent statistical analysis that is to be carried out on
the data that will be obtained. And one cannot carry out a meaningful statistical
analysis of experimental data without considering the particular type of experiment
from which the data were derived.
Other Inferences The general classes of problems described above, as well as the
more specific examples that appeared earlier, are intended as illustrations of types
of statistical inferences that we will be able to perform with the theory and methods
introduced in this text. The range of possible models, inferences, and methods that
can arise when data are observed in real research problems far exceeds what we can
introduce here. It is hoped that gaining an understanding of the problems that we
can cover here will give the reader an appreciation for what needs to be done when
a more challenging statistical problem arises.
Definition of a Statistic
Example
7.1.9
Failure Times of Ball Bearings. In Example 5.6.9, we had a sample of the numbers of
millions of revolutions before failure for 23 ball bearings. We modeled the lifetimes
as a random sample from a lognormal distribution. We might suppose that the
parameters μ and σ2 of that lognormal distribution are unknown and that we might
wish to make some inference about them. We would want to make use of the 23
observed values in making any such inference. But do we need to keep track of all
23 values or are there some summaries of the data on which our inference will be
based?  
382 Chapter 7 Estimation
Each statistical inference that we will learn how to perform in this book will be
based on one or a few summaries of the available data. Such data summaries arise
so often and are so fundamental to inference that they receive a special name.
Definition
7.1.4
Statistic. Suppose that the observable random variables of interest are X1, . . . , Xn.
Let r be an arbitrary real-valued function of n real variables. Then the random
variable T = r(X1, . . . , Xn) is called a statistic.
Three examples of statistics are the sample mean Xn, the maximum Yn of the
values of X1, . . . , Xn, and the function r(X1, . . . , Xn), which has the constant value
3 for all values of X1, . . . , Xn.
Example
7.1.10
Failure Times of Ball Bearings. In Example 7.1.9, suppose that we were interested in
making a statement about how farμis from 40.Then we might want to use the statistic
T =
     
1
36
 36
i=1
log(Xi) − 4
     
in our inference procedure. In this case, T is a na¨ıve measure of how far the data
suggest that μ is from 40.  
Example
7.1.11
Interval for Mean. In Example 7.1.6, we constructed an interval that has probability
0.95 of containing μ. The endpoints of that interval, namely, Xn
− 0.98 andXn
+ 0.98,
are statistics.  
Many inferences can proceed without explicitly constructing statistics as a preliminary
step. However, most inferences will involve the use of statistics that could
be identified in advance. And knowing which statistics are useful in which inferences
can greatly simplify the implementation of the inference. Expressing an inference in
terms of statistics can also help us to decide how well the inference meets out needs.
For instance, in Example 7.1.10, if we estimate |μ − 40| by T , we can use the distribution
of T to help determine how likely it is that T differs from |μ − 40| by a large
amount. As we construct specific inferences later in this book, we will draw attention
to those statistics that play important roles in the inference.
Parameters as Random Variables
There is some controversy over whether parameters should be treated as random
variables or merely as numbers that index a distribution. For instance, in Example
7.1.3, we let P stand for the proportion of the patients who avoid relapse from
a large group receiving imipramine. We then say that X1, X2, . . . are i.i.d. Bernoulli
random variables with parameter p conditional on P = p. Here, we are explicitly
thinking of P as a random variable, and we give it a distribution. An alternative
would be to say that X1, X2, . . . are i.i.d. Bernoulli random variables with parameter
p where p is unknown and leave it at that.
If we really want to compute something like the conditional probability that the
proportion P is greater than 0.5 given the observations of the first 40 patients, then
we need the conditional distribution of P given the first 40 patients, and we must
treat P as a random variable. On the other hand, if we are only interested in making
probability statements that are indexed by the value of p, then we do not need to
think about a random variable called P. For example, we might wish to find two
random variables Y1 and Y2 (functions of X1, . . . , X40) such that, no matter what p
7.1 Statistical Inference 383
equals, the probability that Y1 ≤ p ≤ Y2 is at least 0.9. Some of the inferences that
we shall discuss later in this book are of the former type that require treating P as a
random variable, and some are of the latter type in which p is merely an index for a
distribution.
Some statisticians believe that it is possible and useful to treat parameters as
random variables in every statistical inference problem. They believe that the distribution
of the parameter is a subjective probability distribution in the sense that
it represents an individual experimenter’s information and subjective beliefs about
where the true value of the parameter is likely to lie. Once they assign a distribution
for a parameter, that distribution is no different from any other probability distribution
used in the field of statistics, and all of the rules of probability theory apply
to every distribution. Indeed, in all of the cases described in this book, the parameters
can actually be identified as limits of functions of large collections of potential
observations. Here is a typical example.
Example
7.1.12
Parameter as a Limit of Random Variables. In Example 7.1.3, the parameter P can be
understood as follows: Imagine an infinite sequence of potential patients receiving
imipramine treatment. Assume that for every integer n, the outcomes of every ordered
subset of n patients from that infinite sequence has the same joint distribution
as the outcomes of every other ordered subset of n patients. In other words, assume
that the order in which the patients appear in the sequence is irrelevant to the joint
distribution of the patient outcomes. Let Pn be the proportion of patients who don’t
relapse out of the first n. It can be shown that the probability is 1 that Pn converges
to something as n→∞. That something can be thought of as P, which we have been
calling the proportion of successes in a very large population. In this sense, P is a random
variable because it is a function of other random variables. A similar argument
can be made in all of the statistical models in this book involving parameters, but
the mathematics needed to make these arguments precise is too advanced to present
here. (Chapter 1 of Schervish (1995) contains the necessary details.) Statisticians who
argue as in this example are said to adhere to the Bayesian philosophy of statistics
and are called Bayesians.  
There is another line of reasoning that leads naturally to treating P as a random
variable in Example 7.1.12 without relying on an infinite sequence of potential
patients. Suppose that the number of potential patients is enough larger than any sample
that we will see to make the approximation in Theorem 5.3.4 applicable. Then
P is just the proportion of successes among the large population of potential patients.
Conditional on P = p, the number of successes in a sample of n patients will
be approximately a binomial random variable with paramters n and p according to
Theorem 5.3.4. If the outcomes of the patients in the sample are random variables,
then it makes sense that the proportion of successes among those patients is also
random.
There is another group of statisticians who believe that in many problems it
is not appropriate to assign a distribution to a parameter but claim instead that
the true value of the parameter is a certain fixed number whose value happens to
be unknown to the experimenter. These statisticians would assign a distribution to
a parameter only when there is extensive previous information about the relative
frequencies with which similar parameters have taken each of their possible values
in past experiments. If two different scientists could agree on which past experiments
were similar to the present experiment, then they might agree on a distribution
to be assigned to the parameter. For example, suppose that the proportion θ of
defective items in a certain large manufactured lot is unknown. Suppose also that
384 Chapter 7 Estimation
the same manufacturer has produced many such lots of items in the past and that
detailed records have been kept about the proportions of defective items in past lots.
The relative frequencies for past lots could then be used to construct a distribution
for θ. Statisticians who would argue this way are said to adhere to the frequentist
philosophy of statistics and are called frequentists.
The frequentists rely on the assumption that there exist infinite sequences of
random variables in order to make sense of most of their probability statements. Once
one assumes the existence of such an infinite sequence, one finds that the parameters
of the distributions being used are limits of functions of the infinite sequences, just as
do the Bayesians described above. In this way, the parameters are random variables
because they are functions of random variables. The point of disagreement between
the two groups is whether it is useful or even possible to assign a distribution to such
parameters.
Both Bayesians and frequentists agree on the usefulness of families of distributions
for observations indexed by parameters. Bayesians refer to the distribution
indexed by parameter value θ as the conditional distribution of the observations
given that the parameter equals θ. Frequentists refer to the distribution indexed by
θ as the distribution of the observations when θ is the true value of the parameter.
The two groups agree that whenever a distribution can be assigned to a parameter,
the theory and methods to be described in this chapter are applicable and useful. In
Sections 7.2–7.4, we shall explicitly assume that each parameter is a random random
variable and we shall assign it a distribution that represents the probabilities that the
parameter lies in various subsets of the parameter space. Beginning in Sec. 7.5, we
shall consider techniques of estimation that are not based on assigning distributions
to parameters.
References
In the remainder of this book, we shall consider many different problems of statistical
inference, statistical decision, and experimental design. Some books that discuss
statistical theory and methods at about the same level as they will be discussed in
this book were mentioned at the end of Sec. 1.1. Some statistics books written at
a more advanced level are Bickel and Doksum (2000), Casella and Berger (2002),
Cram´er (1946), DeGroot (1970), Ferguson (1967), Lehmann (1997), Lehmann and
Casella (1998), Rao (1973), Rohatgi (1976), and Schervish (1995).
Exercises
1. Identify the components of the statistical model (as
defined in Definition 7.1.1) in Example 7.1.3.
2. Identify two statistical inferences mentioned in Example
7.1.3.
3. In Examples 7.1.4 and 5.7.8 (page 323), identify the
components of the statistical model as defined in Definition
7.1.1.
4. In Example 7.1.6, identify the components of the statistical
model as defined in Definition 7.1.1.
5. In Example 7.1.6, identify any statistical inference mentioned.
6. In Example 5.8.3 (page 328), identify the components
of the statistical model as defined in Definition 7.1.1.
7. In Example 5.4.7 (page 293), identify the components
of the statistical model as defined in Definition 7.1.1.
7.2 Prior and Posterior Distributions 385
7.2 Prior and Posterior Distributions
The distribution of a parameter before observing any data is called the prior
distribution of the parameter. The conditional distribution of the parameter given
the observed data is called the posterior distribution. If we plug the observed values
of the data into the conditional p.f. or p.d.f. of the data given the parameter, the
result is a function of the parameter alone, which is called the likelihood function.
The Prior Distribution
Example
7.2.1
Lifetimes of Electronic Components. In Example 7.1.1, lifetimes X1, X2, . . . of electronic
components were modeled as i.i.d. exponential random variables with parameter
θ conditional on θ, and θ was interpreted as the failure rate of the components.
Indeed, we noted that n/
 n
i=1 Xi should converge in probability to θ as n goes to
∞. We then said that θ had the gamma distribution with parameters 1 and 2.  
The distribution of θ mentioned at the end of Example 7.2.1 was assigned before observing
any of the component lifetimes. For this reason, we call it a prior distribution.
Definition
7.2.1
Prior Distribution/p.f./p.d.f. Suppose that one has a statistical model with parameter θ.
If one treats θ as random, then the distribution that one assigns to θ before observing
the other random variables of interest is called its prior distribution. If the parameter
space is at most countable, then the prior distribution is discrete and its p.f. is called
the prior p.f. of θ. If the prior distribution is a continuous distribution, then its p.d.f.
is called the prior p.d.f. of θ. We shall commonly use the symbol ξ(θ) to denote the
prior p.f. or p.d.f. as a function of θ.
When one treats the parameter as a random variable, the name “prior distribution”
is merely another name for the marginal distribution of the parameter.
Example
7.2.2
Fair or Two-Headed Coin. Let θ denote the probability of obtaining a head when a
certain coin is tossed, and suppose that it is known that the coin either is fair or has
a head on each side. Therefore, the only possible values of θ are θ = 1/2 and θ = 1. If
the prior probability that the coin is fair is 0.8, then the prior p.f. of θ is ξ(1/2) = 0.8
and ξ(1) = 0.2.  
Example
7.2.3
Proportion of Defective Items. Suppose that the proportion θ of defective items in a
large manufactured lot is unknown and that the prior distribution assigned to θ is the
uniform distribution on the interval [0, 1]. Then the prior p.d.f. of θ is
ξ(θ) =
 
1 for 0 < θ <1,
0 otherwise.
(7.2.1)
 
The prior distribution of a parameter θ must be a probability distribution over
the parameter space  .We assume that the experimenter or statistician will be able
to summarize his previous information and knowledge about where in   the value of
θ is likely to lie by constructing a probability distribution on the set . In other words,
before the experimental data have been collected or observed, the experimenter’s
past experience and knowledge will lead him to believe that θ is more likely to lie
in certain regions of   than in others. We shall assume that the relative likelihoods
386 Chapter 7 Estimation
of the different regions can be expressed in terms of a probability distribution on  ,
namely, the prior distribution of θ.
Example
7.2.4
Lifetimes of Fluorescent Lamps. Suppose that the lifetimes (in hours) of fluorescent
lamps of a certain type are to be observed and that the the lifetime of any particular
lamp has the exponential distribution with parameter θ. Suppose also that the exact
value of θ is unknown, and on the basis of previous experience the prior distribution
of θ is taken as the gamma distribution for which the mean is 0.0002 and the standard
deviation is 0.0001.We shall determine the prior p.d.f. of θ.
Suppose that the prior distribution of θ is the gamma distribution with parameters
α0 and β0. It was shown in Theorem 5.7.5 that the mean of this distribution
is α0/β0 and the variance is α0/β2
0 . Therefore, α0/β0 = 0.0002 and α
1/2
0 /β0 = 0.0001.
Solving these two equations gives α0 = 4 and β0 = 20,000. It follows from Eq. (5.7.13)
that the prior p.d.f. of θ for θ >0 is as follows:
ξ(θ) = (20,000)4
3!
θ3e
−20,000θ . (7.2.2)
Also, ξ(θ) = 0 for θ ≤ 0.  
In the remainder of this section and Sections 7.3 and 7.4, we shall focus on
statistical inference problems in which the parameter θ is a random variable of
interest and hence will need to be assigned a distribution. In such problems, we shall
refer to the distribution indexed by θ for the other random variables of interest
as the conditional distribution for those random variables given θ. For example,
this is precisely the language used in Example 7.2.1 where the parameter is θ, the
failure rate. In referring to the conditional p.f. or p.d.f. of random variables, such as
X1, X2, . . . in Example 7.2.1, we shall use the notation of conditional p.f.’s and p.d.f.’s.
For example, if we let X = (X1, . . . , Xm) in Example 7.2.1, the conditional p.d.f. of
X given θ is
fm(x|θ) =
 
θm exp(−θ[x1 + . . . + xm]) for all xi > 0,
0 otherwise.
(7.2.3)
In many problems, such as Example 7.2.1, the observable data X1, X2, . . . are
modeled as a random sample from a univariate distribution indexed by θ. In these
cases, let f (x|θ) denote the p.f. or p.d.f. of a single random variable under the
distribution indexed by θ. In such a case, using the above notation,
fm(x|θ) = f (x1|θ) . . . f (xm
|θ).
When we treat θ as a random variable, f (x|θ) is the conditional p.f. or p.d.f. of
each observation Xi given θ, and the observations are conditionally i.i.d. given θ.
In summary, the following two expressions are to be understood as equivalent:
. X1, . . . , Xn form a random sample with p.f. or p.d.f. f (x|θ).
. X1, . . . , Xn are conditionally i.i.d. given θ with conditional p.f. or p.d.f. f (x|θ).
Although we shall generally use the wording in the first bullet above for simplicity,
it is often useful to remember that the two wordings are equivalent when we treat θ
as a random variable.
Sensitivity Analysis and Improper Priors In Example 2.3.8 on page 84, we saw a
situation in which two very different sets of prior probabilities were used for a collection
of events. After we observed data, however, the posterior probabilities were
7.2 Prior and Posterior Distributions 387
quite similar. In Example 5.8.4 on page 330, we used a large collection of prior distributions
for a parameter in order to see how much impact the prior distribution
had on the posterior probability of a single important event. It is a common practice
to compare the posterior distributions that arise from several different prior distributions
in order to see how much effect the prior distribution has on the answers to
important questions. Such comparisons are called sensitivity analysis.
It is very often the case that different prior distributions do not make much
difference after the data have been observed.This is especially true if there are a lot of
data or if the prior distributions being compared are very spread out.This observation
has two important implications. First, the fact that different experimenters might not
agree on a prior distribution becomes less important if there are a lot of data. Second,
experimenters might be less inclined to spend time specifying a prior distribution if
it is not going to matter much which one is specified. Unfortunately, if one does not
specify some prior distribution, there is no way to calculate a conditional distribution
of the parameter given the data.
As an expedient, there are some calculations available that attempt to capture
the idea that the data contain much more information than is available a priori.
Usually, these calculations involve using a function ξ(θ) as if it were a prior p.d.f. for
the parameter θ but such that
 
ξ(θ) dθ =∞, which clearly violates the definition
of p.d.f. Such priors are called improper. We shall discuss improper priors in more
detail in Sec. 7.3.
The Posterior Distribution
Example
7.2.5
Lifetimes of Fluorescent Lamps. In Example 7.2.4, we constructed a prior distribution
for the parameter θ that specifies the exponential distribution for a collection of lifetimes
of fluorescent lamps. Suppose that we observe a collection of n such lifetimes.
How would we change the distribution of θ to take account of the observed data?
 
Definition
7.2.2
Posterior Distribution/p.f./p.d.f. Consider a statistical inference problem with parameter
θ and random variables X1, . . . , Xn to be observed. The conditional distribution
of θ given X1, . . . , Xn is called the posterior distribution of θ. The conditional p.f. or
p.d.f. of θ given X1 = x1, . . . , Xn
= xn is called the posterior p.f. or posterior p.d.f. of θ
and is typically denoted ξ(θ|x1, . . . , xn).
When one treats the parameter as a random variable, the name “posterior distribution”
is merely another name for the conditional distribution of the parameter
given the data. Bayes’ theorem for random variables (3.6.13) and for random vectors
(3.7.15) tells us how to compute the posterior p.d.f. or p.f. of θ after observing
data.We shall review the derivation of Bayes’ theorem here using the specific notation
of prior distributions and parameters.
Theorem
7.2.1
Suppose that the n random variables X1, . . . , Xn form a random sample from a
distribution for which the p.d.f. or the p.f. is f (x|θ). Suppose also that the value of
the parameter θ is unknown and the prior p.d.f. or p.f. of θ is ξ(θ). Then the posterior
p.d.f. or p.f. of θ is
ξ(θ|x) = f (x1|θ) . . . f (xn
|θ)ξ(θ)
gn(x)
for θ ∈  ,
where gn is the marginal joint p.d.f. or p.f. of X1, . . . , Xn.
388 Chapter 7 Estimation
Proof For simplicity, we shall assume that the parameter space is either an interval
of the real line or the entire real line and that ξ(θ) is a prior p.d.f. on  , rather than
a prior p.f. However, the proof that will be given here can be adapted easily to a
problem in which ξ(θ) is a p.f.
Since the random variables X1, . . . , Xn form a random sample from the distribution
for which the p.d.f. is f (x|θ), it follows from Sec. 3.7 that their conditional joint
p.d.f. or p.f. fn(x1, . . . , xn
|θ) given θ is
fn(x1, . . . , xn
|θ) = f (x1|θ) . . . f (xn
|θ). (7.2.4)
If we use the vector notation x = (x1, . . . , xn), then the joint p.d.f. in Eq. (7.2.4)
can be written more compactly as fn(x|θ). Eq. (7.2.4) merely expresses the fact that
X1, . . . , Xn are conditionally independent and identically distributed given θ, each
having p.d.f. or p.f. f (x|θ).
If we multiply the conditional joint p.d.f. or p.f. by the p.d.f. ξ(θ), we obtain the
(n + 1)-dimensional joint p.d.f. (or p.f./p.d.f.) of X1, . . . , Xn and θ in the form
f (x, θ) = fn(x|θ)ξ(θ). (7.2.5)
The marginal joint p.d.f. or p.f. of X1, . . . , Xn can now be obtained by integrating
the right-hand side of Eq. (7.2.5) over all values of θ. Therefore, the n-dimensional
marginal joint p.d.f. or p.f. gn(x) of X1, . . . , Xn can be written in the form
gn(x) =
 
 
fn(x|θ)ξ(θ) dθ. (7.2.6)
Eq. (7.2.6) is just an instance of the law of total probability for random vectors
(3.7.14).
Furthermore, the conditional p.d.f. of θ given that X1 = x1, . . . , Xn
= xn, namely,
ξ(θ|x), must be equal to f (x, θ) divided by gn(x). Thus, we have
ξ(θ|x) = fn(x|θ)ξ(θ)
gn(x)
for θ ∈  , (7.2.7)
which is Bayes’ theorem restated for parameters and random samples. If ξ(θ) is a
p.f., so that the prior distribution is discrete, just replace the integral in (7.2.6) by the
sum over all of the possible values of θ.
Example
7.2.6
Lifetimes of Fluorescent Lamps. Suppose again, as in Examples 7.2.4 and 7.2.5, that the
distribution of the lifetimes of fluorescent lamps of a certain type is the exponential
distribution with parameter θ, and the prior distribution of θ is a particular gamma
distribution for which the p.d.f. ξ(θ) is given by Eq. (7.2.2). Suppose also that the
lifetimes X1, . . . , Xn of a random sample of n lamps of this type are observed. We
shall determine the posterior p.d.f. of θ given that X1 = x1, . . . , Xn
= xn.
By Eq. (5.7.16), the p.d.f. of each observation Xi is
f (x|θ) =
 
θe
−θx for x >0,
0 otherwise.
The joint p.d.f. of X1, . . . , Xn can be written in the following form, for xi > 0 (i =
1, . . . , n):
fn(x|θ) =
!n
i=1
θe
−θxi = θne
−θy,
where y = n
i=1 xi. As fn(x|θ) will be used in constructing the posterior distribution
of θ, it is now apparent that the statistic Y = n
i=1 Xi will be used in any inference
that makes use of the posterior distribution.
7.2 Prior and Posterior Distributions 389
Since the prior p.d.f. ξ(θ) is given by Eq. (7.2.2), it follows that for θ >0,
fn(x|θ)ξ(θ) = θn+3e
−(y+20,000)θ . (7.2.8)
We need to compute gn(x), which is the integral of (7.2.8) over all θ:
gn(x) =
  ∞
0
θn+3e
−(y+20,000)θdθ =  (n + 4)
(y + 20,000)n+4
,
where the last equality follows from Theorem 5.7.3. Hence,
ξ(θ|x) = θn+3e
−(y+20,000)θ
 (n + 4)
(y + 20,000)n+4
= (y + 20,000)n+4
 (n + 4)
e
−(y+20,000)θ ,
(7.2.9)
for θ >0. When we compare this expression with Eq. (5.7.13), we can see that it is
the p.d.f. of the gamma distribution with parameters n + 4 and y + 20,000. Hence,
this gamma distribution is the posterior distribution of θ.
As a specific example, suppose that we observe the following n = 5 lifetimes
in hours: 2911, 3403, 3237, 3509, and 3118. Then y = 16,178, and the posterior
distribution of θ is the gamma distribution with parameters 9 and 36,178. The top
panel of Fig. 7.1 displays both the prior and posterior p.d.f.’s in this example. It is
clear that the data have caused the distribution of θ to change somewhat from the
prior to the posterior.
At this point, it might be appropriate to perform a sensitivity analysis. For
example, how would the posterior distribution change if we had chosen a different
prior distribution? To be specific, consider the gamma prior with parameters 1 and
1000. This prior has the same standard deviation as the original prior, but the mean
is five times as big. The posterior distribution would then be the gamma distribution
with parameters 6 and 17,178.The p.d.f.’s of this pair of prior and posterior are plotted
in the lower panel of Fig. 7.1. One can see that both the prior and the posterior in
the bottom panel are more spread out than their counterparts in the upper panel. It
Figure 7.1 Prior and posterior
p.d.f.’s in Example 7.2.6.
The top panel is based on the
original prior. The bottom
panel is based on the alternative
prior that was part of the
sensitivity analysis.
0.0005 p.d.f.'s
2000
0
4000
0.0010 0.0015
Prior
Posterior
u
Original prior distribution
0.0005
p.d.f.'s
2000
0
4000
0.0010 0.0015
Prior
Posterior
u
Alternative prior distribution
390 Chapter 7 Estimation
is clear that the choice of prior distribution is going to make a difference with this
small data set.  
The names “prior” and “posterior” derive from the Latin words for “former”
and “coming after.” The prior distribution is the distribution of θ that comes before
observing the data, and posterior distribution comes after observing the data.
The Likelihood Function
The denominator on the right side of Eq. (7.2.7) is simply the integral of the numerator
over all possible values of θ. Although the value of this integral depends on
the observed values x1, . . . , xn, it does not depend on θ and it may be treated as a
constant when the right-hand side of Eq. (7.2.7) is regarded as a p.d.f. of θ. We may
therefore replace Eq. (7.2.7) with the following relation:
ξ(θ|x) ∝ fn(x|θ)ξ(θ). (7.2.10)
The proportionality symbol ∝ is used here to indicate that the left side is equal to the
right side except possibly for a constant factor, the value of which may depend on
the observed values x1, . . . , xn but does not depend on θ. The appropriate constant
factor that will establish the equality of the two sides in the relation (7.2.10) can be
determined at any time by using the fact that
 
  ξ(θ|x) dθ = 1, because ξ(θ|x) is a
p.d.f. of θ.
One of the two functions on the right-hand side of Eq. (7.2.10) is the prior p.d.f.
of θ. The other function has a special name also.
Definition
7.2.3
Likelihood Function. When the joint p.d.f. or the joint p.f. fn(x|θ) of the observations
in a random sample is regarded as a function of θ for given values of x1, . . . , xn, it is
called the likelihood function.
The relation (7.2.10) states that the posterior p.d.f. of θ is proportional to the product
of the likelihood function and the prior p.d.f. of θ.
By using the proportionality relation (7.2.10), it is often possible to determine
the posterior p.d.f. of θ without explicitly performing the integration in Eq. (7.2.6).
If we can recognize the right side of the relation (7.2.10) as being equal to one of the
standard p.d.f.’s introduced in Chapter 5 or elsewhere in this book, except possibly
for a constant factor, then we can easily determine the appropriate factor that will
convert the right side of (7.2.10) into a proper p.d.f. of θ. We shall illustrate these
ideas by considering again Example 7.2.3.
Example
7.2.7
Proportion of Defective Items. Suppose again, as in Example 7.2.3, that the proportion
θ of defective items in a large manufactured lot is unknown and that the prior
distribution of θ is a uniform distribution on the interval [0, 1]. Suppose also that
a random sample of n items is taken from the lot, and for i = 1, . . . , n, let Xi
= 1 if
the ith item is defective, and let Xi
= 0 otherwise. Then X1, . . . , Xn form n Bernoulli
trials with parameter θ. We shall determine the posterior p.d.f. of θ.
It follows from Eq. (5.2.2) that the p.f. of each observation Xi is
f (x|θ) =
 
θx(1− θ)1−x for x = 0, 1,
0 otherwise.
Hence, if we let y = n
i=1 xi , then the joint p.f. of X1, . . . , Xn can be written in the
following form for xi
= 0 or 1 (i = 1, . . . , n):
fn(x|θ) = θy(1− θ)n−y. (7.2.11)
7.2 Prior and Posterior Distributions 391
Since the prior p.d.f. ξ(θ) is given by Eq. (7.2.1), it follows that for 0 < θ <1,
fn(x|θ)ξ(θ) = θy(1− θ)n−y. (7.2.12)
When we compare this expression with Eq. (5.8.3), we can see that, except for
a constant factor, it is the p.d.f. of the beta distribution with parameters α = y + 1
and β = n − y + 1. Since the posterior p.d.f. ξ(θ|x) is proportional to the right side
of Eq. (7.2.12), it follows that ξ(θ|x) must be the p.d.f. of the beta distribution with
parameters α = y + 1 and β = n − y + 1. Therefore, for 0 < θ <1,
ξ(θ|x) =  (n + 2)
 (y + 1) (n − y + 1)
θy(1− θ)n−y. (7.2.13)
In this example, the statistic Y = n
i=1 Xi is being used to construct the posterior
distribution, and hence will be used in any inference that is based on the posterior
distribution.  
Note: Normalizing Constant for Posterior p.d.f. The steps that got us from (7.2.12)
to (7.2.13) are an example of a very common technique for determining a posterior
p.d.f.We can drop any inconvenient constant factor from the prior p.d.f. and from the
likelihood function before we multiply them together as in (7.2.10). Then we look at
the resulting product, call it g(θ), to see if we recognize it as looking like part of a
p.d.f. that we have seen elsewhere. If indeed we find a named distribution with p.d.f.
equal to cg(θ), then our posterior p.d.f. is also cg(θ), and our posterior distribution
has the corresponding name, just as in Example 7.2.7.
Sequential Observations and Prediction
In many experiments, the observations X1, . . . , Xn, which form the random sample,
must be obtained sequentially, that is, one at a time. In such an experiment, the
value of X1 is observed first, the value of X2 is observed next, the value of X3 is then
observed, and so on. Suppose that the prior p.d.f. of the parameter θ is ξ(θ). After
the value x1 of X1 has been observed, the posterior p.d.f. ξ(θ|x1) can be calculated in
the usual way from the relation
ξ(θ|x1) ∝ f (x1|θ)ξ(θ). (7.2.14)
Since X1 and X2 are conditionally independent given θ, the conditional p.f. or
p.d.f. of X2 given θ and X1 = x1 is the same as that given θ alone, namely, f (x2|θ).
Hence, the posterior p.d.f. of θ in Eq. (7.2.14) serves as the prior p.d.f. of θ when the
value of X2 is to be observed. Thus, after the value x2 of X2 has been observed, the
posterior p.d.f. ξ(θ|x1, x2) can be calculated from the relation
ξ(θ|x1, x2) ∝ f (x2|θ)ξ(θ|x1). (7.2.15)
We can continue in this way, calculating an updated posterior p.d.f. of θ after each
observation and using that p.d.f. as the prior p.d.f. of θ for the next observation. The
posterior p.d.f. ξ(θ|x1, . . . , xn−1) after the values x1, . . . , xn−1 have been observed will
ultimately be the prior p.d.f. of θ for the final observed value of Xn. The posterior
p.d.f. after all n values x1, . . . , xn have been observed will therefore be specified by
the relation
ξ(θ|x) ∝ f (xn
|θ)ξ(θ|x1, . . . , xn−1). (7.2.16)
Alternatively, after all n values x1, . . . , xn have been observed, we could calculate
the posterior p.d.f. ξ(θ|x) in the usual way by combining the joint p.d.f. fn(x|θ)
with the original prior p.d.f. ξ(θ), as indicated in Eq. (7.2.7). It can be shown (see
392 Chapter 7 Estimation
Exercise 8) that the posterior p.d.f. ξ(θ|x) will be the same regardless of whether it is
calculated directly by using Eq. (7.2.7) or sequentially by using Eqs. (7.2.14), (7.2.15),
and (7.2.16). This property was illustrated in Sec. 2.3 (see page 80) for a coin that is
known either to be fair or to have a head on each side. After each toss of the coin,
the posterior probability that the coin is fair is updated.
The proportionality constants in Eqs. (7.2.14)–(7.2.16) have a useful interpretation.
For example, in (7.2.16) the proportionality constant is 1 over the integral of
the right side with respect to θ. But this integral is the conditional p.d.f. or p.f. of Xn
given X1 = x1, . . . ,Xn−1 = xn−1, according to the conditional version of the law of
total probability (3.7.16). For example, if θ has a continuous distribution,
f (xn
|x1, . . . , xn−1) =
 
f (xn
|θ)ξ(θ|x1, . . . , xn−1)dθ. (7.2.17)
The proportionality constant in (7.2.16) is 1 over (7.2.17). So, if we are interested in
predicting the nth observation in a sequence after observing the first n − 1, we can
use (7.2.17), which is also 1 over the proportionality constant in Eq. (7.2.16), as the
conditional p.f. or p.d.f. of Xn given the first n − 1 observations.
Example
7.2.8
Lifetimes of Fluorescent Lamps. In Example 7.2.6, conditional on θ, the lifetimes of
fluorescent lamps are independent exponential random variables with parameter θ.
We also observed the lifetimes of five lamps, and the posterior distribution of θ was
found to be the gamma distribution with parameters 9 and 36,178. Suppose that we
want to predict the lifetime X6 of the next lamp.
The conditional p.d.f. of X6, the lifetime of the next lamp, given the first five
lifetimes equals the integral of ξ(θ|x)f (x6|θ) with respect to θ. The posterior p.d.f. of
θ is ξ(θ|x) = 2.633 × 1036θ8e
−36,178θ for θ >0. So, for x6 > 0
f (x6|x) =
  ∞
0
2.633 × 1036θ8e
−36,178θθe
−x6θ dθ
= 2.633 × 1036
  ∞
0
θ9e
−(x6+36,178)θ dθ
= 2.633 × 1036  (10)
(x6 + 36,178)10
= 9.555 × 1041
(x6 + 36,178)10
.
(7.2.18)
We can use this p.d.f. to perform any calculation we wish concerning the distribution
of X6 given the observed lifetimes. For example, the probability that the sixth lamp
lasts more than 3000 hours equals
Pr(X6 > 3000|x) =
  ∞
3000
9.555 × 1041
(x6 + 36,178)10
dx6 = 9.555 × 1041
9 × 39,1789
= 0.4882.
Finally, we can continue the sensitivity analysis that was started in Example 7.2.6.
If it is important to know the probability that the next lifetime is at least 3000, we can
see how much influence the choice of prior distribution has made on this calculation.
Using the second prior distribution (gamma with parameters 1 and 1000), we found
that the posterior distribution of θ was the gamma distribution with parameters 6
and 17,178. We could compute the conditional p.d.f. of X6 given the observed data
in the same way as we did with the original posterior, and it would be
f (x6|x) = 1.542 × 1026
(x6 + 17,178)7
, for x6 > 0. (7.2.19)
With this p.d.f., the probability that X6 > 3000 is
7.2 Prior and Posterior Distributions 393
Figure 7.2 Two possible
conditional p.d.f.’s,
Eqs. (7.2.18) and (7.2.19)
for X6 given the observed
data in Example 7.2.8. The
two p.d.f.’s were computed
using the two different posterior
distributions that were
derived from the two different
prior distributions in
Example 7.2.6.
x6
Original prior
Alternative prior
5000
0.00010
0
0.00020
0.00030
10,000 15,000 20,000
Comparison of conditional distributions of next observation
25,000 30,000
p.d.f.'s
Pr(X6 > 3000|x) =
  ∞
3000
1.542 × 1026
(x6 + 17,178)7
dx6 = 1.542 × 1026
6 × 20,1786
= 0.3807.
As we noted at the end of Example 7.2.6, the different priors make a considerable
difference in the inferences that we can make. If it is important to have a precise value
of Pr(X6 > 3000|x), we need a larger sample. The two different p.d.f.’s of X6 given x
can be compared in Fig. 7.2. The p.d.f. from Eq. (7.2.18) is higher for intermediate
values of x6, while the one from Eq. (7.2.19) is higher for the extreme values of x6.
 
Summary
The prior distribution of a parameter describes our uncertainty about the parameter
before observing any data. The likelihood function is the conditional p.d.f. or p.f. of
the data given the parameter when regarded as a function of the parameter with the
observed data plugged in. The likelihood tells us how much the data will alter our
uncertainty. Large values of the likelihood correspond to parameter values where the
posterior p.d.f. or p.f. will be higher than the prior. Low values of the likelihood occur
at parameter values where the posterior will be lower than the prior. The posterior
distribution of the parameter is the conditional distribution of the parameter given
the data. It is obtained using Bayes’ theorem for random variables, which we first saw
on page 148.We can predict future observations that are conditionally independent
of the observed data given θ by using the conditional version of the law of total
probability that we saw on page 163.
Exercises
1. Consider again the situation described in Example
7.2.8. This time, suppose that the experimenter believes
that the prior distribution of θ is the gamma distribution
with parameters 1 and 5000. What would this experimenter
compute as the value of Pr(X6 > 3000|x)?
2. Suppose that the proportion θ of defective items in a
large manufactured lot is known to be either 0.1 or 0.2,
and the prior p.f. of θ is as follows:
ξ(0.1) = 0.7 and ξ(0.2) = 0.3.
Suppose also that when eight items are selected at random
from the lot, it is found that exactly two of them are
defective. Determine the posterior p.f. of θ.
3. Suppose that the number of defects on a roll of magnetic
recording tape has a Poisson distribution for which
the mean λ is either 1.0 or 1.5, and the prior p.f. of λ is as
394 Chapter 7 Estimation
follows:
ξ(1.0) = 0.4 and ξ(1.5) = 0.6.
If a roll of tape selected at random is found to have three
defects, what is the posterior p.f. of λ?
4. Suppose that the prior distribution of some parameter
θ is a gamma distribution for which the mean is 10 and the
variance is 5. Determine the prior p.d.f. of θ.
5. Suppose that the prior distribution of some parameter
θ is a beta distribution for which the mean is 1/3 and the
variance is 1/45. Determine the prior p.d.f. of θ.
6. Suppose that the proportion θ of defective items in a
large manufactured lot is unknown, and the prior distribution
of θ is the uniform distribution on the interval [0, 1].
When eight items are selected at random from the lot, it is
found that exactly three of them are defective. Determine
the posterior distribution of θ.
7. Consider again the problem described in Exercise 6,
but suppose now that the prior p.d.f. of θ is as follows:
ξ(θ) =
 
2(1− θ) for 0 < θ <1,
0 otherwise.
As in Exercise 6, suppose that in a random sample of eight
items exactly three are found to be defective. Determine
the posterior distribution of θ.
8. Suppose that X1, . . . , Xn form a random sample from
a distribution for which the p.d.f. is f (x|θ), the value of θ
is unknown, and the prior p.d.f. of θ is ξ(θ). Show that the
posterior p.d.f. ξ(θ|x) is the same regardless of whether it
is calculated directly by using Eq. (7.2.7) or sequentially
by using Eqs. (7.2.14), (7.2.15), and (7.2.16).
9. Consider again the problem described in Exercise 6,
and assume the same prior distribution of θ. Suppose now,
however, that instead of selecting a random sample of
eight items from the lot, we perform the following experiment:
Items from the lot are selected at random one by
one until exactly three defectives have been found. If we
find that we must select a total of eight items in this experiment,
what is the posterior distribution of θ at the end of
the experiment?
10. Suppose that a single observation X is to be taken
from the uniform distribution on the interval [θ − 1
2 ,
θ + 1
2 ], the value of θ is unknown, and the prior distribution
of θ is the uniform distribution on the interval [10, 20].
If the observed value of X is 12, what is the posterior distribution
of θ?
11. Consider again the conditions of Exercise 10, and
assume the same prior distribution of θ. Suppose now,
however, that six observations are selected at random
from the uniform distribution on the interval [θ − 1
2 ,
θ + 1
2 ], and their values are 11.0, 11.5, 11.7, 11.1, 11.4, and
10.9. Determine the posterior distribution of θ.
7.3 Conjugate Prior Distributions
For each of the most popular statistical models, there exists a family of distributions
for the parameter with a very special property. If the prior distribution is chosen to
be a member of that family, then the posterior distribution will also be a member of
that family. Such a family of distributions is called a conjugate family. Choosing a
prior distribution from a conjugate family will typically make it particularly simple
to calculate the posterior distribution.
Sampling from a Bernoulli Distribution
Example
7.3.1
A Clinical Trial. In Example 5.8.5 (page 330), we were observing patients in a clinical
trial. The proportion P of successful outcomes among all possible patients was
a random variable for which we chose a distribution from the family of beta distributions.
This choice made the calculation of the conditional distribution of P given
the observed data very simple at the end of that example. Indeed, the conditional
distribution of P given the data was another member of the beta family.  
That the result in Example 7.3.1 occurs in general is the subject of the next theorem.
Theorem
7.3.1
Suppose that X1, . . . , Xn form a random sample from the Bernoulli distribution with
parameter θ, which is unknown (0 < θ <1). Suppose also that the prior distribution
7.3 Conjugate Prior Distributions 395
of θ is the beta distribution with parametersα >0 andβ >0. Then the posterior distribution
of θ given thatXi
= xi (i = 1, . . . , n) is the beta distribution with parameters
α + n
i=1 xi and β + n − n
i=1 xi .
Theorem 7.3.1 is just a restatement of Theorem 5.8.2 (page 329), and its proof is
essentially the calculation in Example 5.8.3.
Updating the Posterior Distribution One implication of Theorem 7.3.1 is the following:
Suppose that the proportion θ of defective items in a large shipment is unknown,
the prior distribution of θ is the beta distribution with parameters α and β,
and n items are selected one at a time at random from the shipment and inspected.
Assume that the items are conditionally independent given θ. If the first item inspected
is defective, the posterior distribution of θ will be the beta distribution with
parameters α + 1 and β. If the first item is nondefective, the posterior distribution
will be the beta distribution with parameters α and β + 1. The process can be continued
in the following way: Each time an item is inspected, the current posterior beta
distribution of θ is changed to a new beta distribution in which the value of either the
parameter α or the parameter β is increased by one unit. The value of α is increased
by one unit each time a defective item is found, and the value of β is increased by
one unit each time a nondefective item is found.
Definition
7.3.1
Conjugate Family/Hyperparameters. Let X1, X2, . . . be conditionally i.i.d. given θ with
common p.f. or p.d.f. f (x|θ). Let   be a family of possible distributions over the
parameter space  . Suppose that, no matter which prior distribution ξ we choose
from  , no matter how many observations X = (X1, . . . , Xn) we observe, and no
matter what are their observed values x = (x1, . . . , xn), the posterior distribution
ξ(θ|x) is a member of  . Then   is called a conjugate family of prior distributions
for samples from the distributions f (x|θ). It is also said that the family   is closed
under sampling from the distributions f (x|θ). Finally, if the distributions in   are
parametrized by further parameters, then the associated parameters for the prior
distribution are called the prior hyperparameters and the associated parameters of
the posterior distribution are called the posterior hyperparameters.
Theorem 7.3.1 says that the family of beta distributions is a conjugate family of prior
distributions for samples from a Bernoulli distribution. If the prior distribution of θ
is a beta distribution, then the posterior distribution at each stage of sampling will
also be a beta distribution, regardless of the observed values in the sample. Also, the
family of beta distributions is closed under sampling from Bernoulli distributions.
The parameters α and β in Theorem 7.3.1 are the prior hyperparameters. The corresponding
parameters of the posterior distributions (α + n
i=1 xi and β + n − n
i=1 xi)
are the posterior hyperparameters. The statistic
 n
i=1 Xi is needed to compute the
posterior distribution, hence it will be needed to perform any inference based on the
posterior distribution. Exercises 23 and 24 introduce a general collection of p.d.f.’s
f (x|θ) for which conjugate families of priors exist. Most of the familiar named distributions
are covered by these exercises. The various uniform distributions are notable
exceptions.
Example
7.3.2
The Variance of the Posterior Beta Distribution. Suppose that the proportion θ of
defective items in a large shipment is unknown, the prior distribution of θ is the
uniform distribution on the interval [0, 1], and items are to be selected at random
from the shipment and inspected until the variance of the posterior distribution of θ
396 Chapter 7 Estimation
has been reduced to the value 0.01 or less. We shall determine the total number of
defective and nondefective items that must be obtained before the sampling process
is stopped.
As stated in Sec. 5.8, the uniform distribution on the interval [0, 1] is the beta
distribution with parameters 1 and 1. Therefore, after y defective items and z nondefective
items have been obtained, the posterior distribution of θ will be the beta
distribution with α = y + 1and β = z + 1. It was shown in Theorem 5.8.3 that the variance
of the beta distribution with parameters α and β is αβ/[(α + β)2(α + β + 1)].
Therefore, the variance V of the posterior distribution of θ will be
V = (y + 1)(z + 1)
(y + z + 2)2(y + z + 3)
.
Sampling is to stop as soon as the number of defectives y and the number of nondefectives
z that have been obtained are such that V ≤ 0.01. It can be shown (see
Exercise 2) that it will not be necessary to select more than 22 items, but it is necessary
to select at least seven items.  
Example
7.3.3
Glove Use by Nurses. Friedland et al. (1992) studied 23 nurses in an inner-city hospital
before and after an educational program on the importance of wearing gloves.
They recorded whether or not the nurses wore gloves during procedures in which
they might come in contact with bodily fluids. Before the educational program the
nurses were observed during 51 procedures, and they wore gloves in only 13 of them.
Let θ be the probability that a nurse will wear gloves two months after the educational
program. We might be interested in how θ compares to 13/51, the observed
proportion before the program.
We shall consider two different prior distributions for θ in order to see how
sensitive the posterior distribution of θ is to the choice of prior distribution. The
first prior distribution will be uniform on the interval [0, 1], which is also the beta
distribution with parameters 1 and 1. The second prior distribution will be the beta
distribution with parameters 13 and 38. This second prior distribution has much
smaller variance than the first and has its mean at 13/51. Someone holding the second
prior distribution believes fairly strongly that the educational program will have no
noticeable effect.
Two months after the educational program, 56 procedures were observed with
the nurses wearing gloves in 50 of them. The posterior distribution of θ, based
on the first prior, would then be the beta distribution with parameters 1+ 50 = 51
and 1+ 6 = 7. In particular, the posterior mean of θ is 51/(51+ 7) = 0.88, and the
posterior probability thatθ >2 × 13/51is essentially 1. Based on the second prior, the
posterior distribution would be the beta distribution with parameters 13 + 50 = 63
and 38 + 6 = 44. The posterior mean would be 0.59, and the posterior probability that
θ >2 × 13/51 is 0.95. So, even to someone who was initially skeptical, the educational
program seems to have been quite effective. The probability is quite high that nurses
are at least twice as likely to wear gloves after the program as they were before.
Figure 7.3 shows the p.d.f.’s of both of the posterior distributions computed
above. The distributions are clearly very different. For example, the first posterior
gives probability greater than 0.99 that θ >0.7, while the second gives probability
less than 0.001 to θ >0.7. However, since we are only interested in the probability
thatθ >2 × 13/51= 0.5098, we see that both posteriors agree that this probability is
quite large.  
7.3 Conjugate Prior Distributions 397
Figure 7.3 Posterior p.d.f.’s
in Example 7.2.6. The curves
are labeled by the prior that
led to the corresponding
posterior.
0.2
2
0
4
6
8
10
0.4 0.6 0.8 1.0 u
Uniform prior
Beta (13, 38) prior
Posterior p.d.f.'s
Sampling from a Poisson Distribution
Example
7.3.4
Customer Arrivals. Astore owner models customer arrivals as a Poisson process with
unknown rate θ per hour. She assigns θ a gamma prior distribution with parameters
3 and 2. Let X be the number of customers that arrive in a specific one-hour period.
If X = 3 is observed, the store owner wants to update the distribution of θ.  
When samples are taken from a Poisson distribution, the family of gamma
distributions is a conjugate family of prior distributions. This relationship is shown
in the next theorem.
Theorem
7.3.2
Suppose that X1, . . . , Xn form a random sample from the Poisson distribution with
mean θ >0, and θ is unknown. Suppose also that the prior distribution of θ is the
gamma distribution with parametersα >0 andβ >0. Then the posterior distribution
of θ, given that Xi
= xi (i = 1, . . . , n), is the gamma distribution with parameters
α + n
i=1 xi and β + n.
Proof Let y = n
i=1 xi . Then the likelihood function fn(x|θ) satisfies the relation
fn(x|θ) ∝ e
−nθθy.
In this relation, a factor that involves x but does not depend on θ has been dropped
from the right side. Furthermore, the prior p.d.f. of θ has the form
ξ(θ) ∝ θα−1e
−βθ for θ >0.
Since the posterior p.d.f. ξ(θ|x) is proportional to fn(x|θ)ξ(θ), it follows that
ξ(θ|x) ∝ θα+y−1e
−(β+n)θ for θ >0.
The right side of this relation can be recognized as being, except for a constant factor,
the p.d.f. of the gamma distribution with parameters α + y and β + n. Therefore, the
posterior distribution of θ is as specified in the theorem.
In Theorem 7.3.2, the numbers α and β are the prior hyperparameters, while α +  n
i=1 xi and β + n are the posterior hyperparameters. Note that the statistic Y =
 n
i=1 Xi is used to compute the posterior distribution of θ, and hence it will be part
of any inference based on the posterior.
398 Chapter 7 Estimation
Example
7.3.5
Customer Arrivals. In Example 7.3.4, we can apply Theorem 7.3.2 with n = 1, α = 3,
β = 2, and x1 = 3. The posterior distribution of θ given X = 3 is the gamma distribution
with parameters 6 and 3.  
Example
7.3.6
The Variance of the Posterior Gamma Distribution. Consider a Poisson distribution for
which the mean θ is unknown, and suppose that the prior p.d.f. of θ is as follows:
ξ(θ) =
 
2e
−2θ for θ >0,
0 for θ ≤ 0.
Suppose also that observations are to be taken at random from the given Poisson
distribution until the variance of the posterior distribution of θ has been reduced to
the value 0.01 or less. We shall determine the number of observations that must be
taken before the sampling process is stopped.
The given prior p.d.f. ξ(θ) is the p.d.f. of the gamma distribution with prior
hyperparameters α = 1 and β = 2. Therefore, after we have obtained n observed
values x1, . . . , xn, the sum of which is y = n
i=1 xi , the posterior distribution of θ will
be the gamma distribution with posterior hyperparameters y + 1 and n + 2. It was
shown in Theorem 5.4.2 that the variance of the gamma distribution with parameters
α and β is α/β2. Therefore, the variance V of the posterior distribution of θ will be
V = y + 1
(n + 2)2
.
Sampling is to stop as soon as the sequence of observed values x1, . . . , xn is such that
V ≤ 0.01. Unlike Example 7.3.2, there is no uniform bound on how large n needs to
be because y can be arbitrarily large no matter what n is. Clearly, it takes at least
n = 8 observations before V ≤ 0.01.  
Sampling from a Normal Distribution
Example
7.3.7
Automobile Emissions. Consider again the sampling of automobile emissions, in particular
oxides of nitrogen, described in Example 5.6.1 on page 302. Prior to observing
the data, suppose that an engineer believed that each emissions measurement had the
normal distribution with mean θ and standard deviation 0.5 but that θ was unknown.
The engineer’s uncertainty about θ might be described by another normal distribution
with mean 2.0 and standard deviation 1.0. After seeing the data in Fig. 5.1, how
would this engineer describe her uncertainty about θ?  
When samples are taken from a normal distribution for which the value of the
mean θ is unknown but the value of the variance σ2 is known, the family of normal
distributions is itself a conjugate family of prior distributions, as is shown in the next
theorem.
Theorem
7.3.3
Suppose thatX1, . . . , Xn form a random sample from a normal distribution for which
the value of the mean θ is unknown and the value of the variance σ2 > 0 is known.
Suppose also that the prior distribution of θ is the normal distribution with mean μ0
and variance v2
0. Then the posterior distribution of θ given that Xi
= xi (i = 1, . . . , n)
is the normal distribution with mean μ1 and variance v2
1 where
μ1 =
σ2μ0 + nv2
0xn
σ2 + nv2
0
(7.3.1)
7.3 Conjugate Prior Distributions 399
and
v2
1
=
σ2v2
0
σ2 + nv2
0
. (7.3.2)
Proof The likelihood function. fn(x|θ) has the form
fn(x|θ) ∝ exp
 
− 1
2σ2
 n
i=1
(xi
− θ)2
 
.
Here a constant factor has been dropped from the right side. The method of completing
the square (see Exercise 24 in Sec. 5.6) tells us that
 n
i=1
(xi
− θ)2 = n(θ − xn)2 +
 n
i=1
(xi
− xn)2.
Byomitting a factor that involves x1, . . . , xn but does not depend on θ,wemayrewrite
fn(x|θ) in the following form:
fn(x|θ) ∝ exp
 
− n
2σ2
(θ − xn)2
 
.
Since the prior p.d.f. ξ(θ) has the form
ξ(θ) ∝ exp
 
− 1
2v2
0
(θ − μ0)2
 
,
it follows that the posterior p.d.f. ξ(θ|x) satisfies the relation
ξ(θ|x) ∝ exp
 
−1
2
 
n
σ2
(θ − xn)2 + 1
v2
0
(θ − μ0)2
 0
.
If μ1 and v2
1 are as specified in Eqs. (7.3.1) and (7.3.2), completing the square
again establishes the following identity:
n
σ2
(θ − xn)2 + 1
v2
0
(θ − μ0)2 = 1
v2
1
(θ − μ1)2 + n
σ2 + nv2
0
(xn
− μ0)2.
Since the final term on the right side of this equation does not involve θ, it can be
absorbed in the proportionality factor, and we obtain the relation
ξ(θ|x) ∝ exp
 
− 1
2v2
1
(θ − μ1)2
 
.
The right side of this relation can be recognized as being, except for a constant factor,
the p.d.f. of the normal distribution with mean μ1 and variance v2
1. Therefore, the
posterior distribution of θ is as specified in the theorem.
In Theorem 7.3.3, the numbers μ0 and v2
0 are the prior hyperparameters, while μ1
and v2
1 are the posterior hyperparameters. Notice that the statistic Xn is used in the
construction of the posterior distribution, and hence will play a role in any inference
based on the posterior.
Example
7.3.8
Automobile Emissions. We can apply Theorem 7.3.3 to answer the question at the end
of Example 7.3.7. In the notation of the theorem, we have n = 46, σ2 = 0.52 = 0.25,
400 Chapter 7 Estimation
μ0 = 2, and v2 = 1.0. The average of the 46 measurements is xn
= 1.329. The posterior
distribution of θ is then the normal distribution with mean and variance given by
μ1 = 0.25 × 2 + 46 × 1× 1.329
0.25 + 46 × 1
= 1.333,
v2
1
= 0.25 × 1
0.25 + 46 × 1
= 0.0054.  
The mean μ1 of the posterior distribution of θ, as given in Eq. (7.3.1), can be
rewritten as follows:
μ1 = σ2
σ2 + nv2
0
μ0 +
nv2
0
σ2 + nv2
0
xn. (7.3.3)
It can be seen from Eq. (7.3.3) thatμ1 is a weighted average of the meanμ0 of the prior
distribution and the sample mean xn. Furthermore, it can be seen that the relative
weight given to xn satisfies the following three properties: (1) For fixed values of v2
0
and σ2, the larger the sample size n, the greater will be the relative weight that is given
to xn. (2) For fixed values of v2
0 and n, the larger the variance σ2 of each observation
in the sample, the smaller will be the relative weight that is given to xn. (3) For fixed
values of σ2 and n, the larger the variance v2
0 of the prior distribution, the larger will
be the relative weight that is given to xn.
Moreover, it can be seen from Eq. (7.3.2) that the variance v2
1 of the posterior
distribution of θ depends on the number n of observations that have been taken
but does not depend on the magnitudes of the observed values. Suppose, therefore,
that a random sample of n observations is to be taken from a normal distribution
for which the value of the mean θ is unknown, the value of the variance is known,
and the prior distribution of θ is a specified normal distribution. Then, before any
observations have been taken, we can use Eq. (7.3.2) to calculate the actual value
of the variance v2
1 of the posterior distribution. However, the value of the mean μ1
of the posterior distribution will depend on the observed values that are obtained
in the sample. The fact that the variance of the posterior distribution depends only
on the number of observations is due to the assumption that the variance σ2 of the
individual observations is known. In Sec. 8.6, we shall relax this assumption.
Example
7.3.9
The Variance of the Posterior Normal Distribution. Suppose that observations are to
be taken at random from the normal distribution with mean θ and variance 1, and
that θ is unknown. Assume that the prior distribution of θ is a normal distribution
with variance 4. Also, observations are to be taken until the variance of the posterior
distribution of θ has been reduced to the value 0.01 or less. We shall determine the
number of observations that must be taken before the sampling process is stopped.
It follows from Eq. (7.3.2) that after n observations have been taken, the variance
v2
1 of the posterior distribution of θ will be
v2
1
= 4
4n + 1
.
Therefore, the relation v2
1
≤ 0.01 will be satisfied if and only if n ≥ 99.75. Hence, the
relation v2
1
≤ 0.01 will be satisfied after 100 observations have been taken and not
before then.  
Example
7.3.10
Calorie Counts on Food Labels. Allison, Heshka, Sepulveda, and Heymsfield (1993)
sampled 20 nationally prepared foods and compared the stated calorie contents per
7.3 Conjugate Prior Distributions 401
Figure 7.4 Histogram of
percentage differences between
observed and advertised
calories in Example
7.3.10.
230 220 210 10
2
4
6
8
0 20
Laboratory calories minus label calories
Number of foods
gram from the labels to calorie contents determined in the laboratory. Figure 7.4 is
a histogram of the percentage differences between the observed laboratory calorie
measurements and the advertised calorie contents on the labels of the foods. Suppose
that we model the conditional distribution of the differences given θ as the normal
distribution with mean θ and variance 100. (In this section, we assume that the
variance is known. In Sec. 8.6, we will be able to deal with the case in which the
mean and the variance are treated as random variables with a joint distribution.)We
will use a prior distribution for θ that is the normal distribution with mean 0 and a
variance of 60. The data X comprise the collection of 20 differences in Fig. 7.4, whose
average is 0.125.The posterior distribution of θ would then be the normal distribution
with mean
μ1 = 100 × 0 + 20 × 60 × 0.125
100 + 20 × 60
= 0.1154,
and variance
v2
1
= 100 × 60
100 + 20 × 60
= 4.62.
For example, we might be interested in whether or not the packagers are systematically
understating the calories in their food by at least 1 percent. This would
correspond to θ >1. Using Theorem 5.6.6, we can find
Pr(θ > 1|x) = 1−  


1−√0.1154)
4.62
 
= 1−  (1.12) = 0.3403.
There is a nonnegligible, but not overwhelming, chance that the packagers are
shaving a percent or more off of their labels.  
Sampling from an Exponential Distribution
Example
7.3.11
Lifetimes of Electronic Components. In Example 7.2.1, suppose that we observe the
lifetimes of three components, X1 = 3, X2 = 1.5, and X3 = 2.1. These were modeled
as i.i.d. exponential random variables given θ. Our prior distribution for θ was the
gamma distribution with parameters 1 and 2. What is the posterior distribution of θ
given these observed lifetimes?  
402 Chapter 7 Estimation
When sampling from an exponential distribution for which the value of the
parameter θ is unknown, the family of gamma distributions serves as a conjugate
family of prior distributions, as shown in the next theorem.
Theorem
7.3.4
Suppose that X1, . . . , Xn form a random sample from the exponential distribution
with parameter θ >0 that is unknown. Suppose also that the prior distribution of
θ is the gamma distribution with parameters α >0 and β >0. Then the posterior
distribution of θ given that Xi
= xi (i = 1, . . . , n) is the gamma distribution with
parameters α + n and β + n
i=1 xi .
Proof Again, let y = n
i=1 xi . Then the likelihood function fn(x|θ) is
fn(x|θ) = θne
−θy.
Also, the prior p.d.f. ξ(θ) has the form
ξ(θ) ∝ θα−1e
−βθ for θ >0.
It follows, therefore, that the posterior p.d.f. ξ(θ|x) has the form
ξ(θ|x) ∝ θα+n−1e
−(β+y)θ for θ >0.
The right side of this relation can be recognized as being, except for a constant factor,
the p.d.f. of the gamma distribution with parameters α + n and β + y. Therefore, the
posterior distribution of θ is as specified in the theorem.
The posterior distribution of θ in Theorem 7.3.4 depends on the observed value
of the statistic Y = n
i=1 Xi ; hence, every inference about θ based on the posterior
distribution will depend on the observed value of Y .
Example
7.3.12
Lifetimes of Electronic Components. In Example 7.3.11, we can apply Theorem 7.3.4
to find the posterior distribution. In the notation of the theorem and its proof, we
have n = 3, α = 1, β = 2, and
y =
 n
i=1
xi
= 3 + 1.5 + 2.1= 6.6.
The posterior distribution of θ is then the gamma distribution with parameters
α = 1+ 3 = 4 and β = 2 + 6.6 = 8.6.  
The reader should note that Theorem 7.3.4 would have greatly shortened the
derivation of the posterior distribution in Example 7.2.6.
Improper Prior Distributions
In Sec. 7.2, we mentioned improper priors as expedients that try to capture the
idea that there is much more information in the data than is captured in our prior
distribution. Each of the conjugate families that we have seen in this section has an
improper prior as a limiting case.
Example
7.3.13
A Clinical Trial. What we illustrate here will apply to all examples in which the data
comprise a conditionally i.i.d. sample (given θ) from the Bernoulli distribution with
parameter θ. Consider the subjects in the imipramine group in Example 2.1.4. The
proportion of successes among all patients who might get imipramine had been called
P in earlier examples, but let us call it θ this time in keeping with the general notation
7.3 Conjugate Prior Distributions 403
Figure 7.5 The posterior
probabilities from Examples
2.3.7 (X) and 2.3.8 (bars)
together with the posterior
p.d.f. from Example 7.3.13
(solid line).
0.1
0.4
0.5
0.3
0.2
0 B1 B2 B3 B4 B5 B6 B7 B8 B9 B10 B11
X X X X
X
X X
X
X X X
of this chapter. Suppose that θ has the beta distribution with parameters α and β,
a general conjugate prior. There are n = 40 patients in the imipramine group, and
22 of them are successes. The posterior distribution of θ is the beta distribution with
parameters α + 22 and β + 18, as we saw in Theorem 7.3.1. The mean of the posterior
distribution is (α + 22)/(α + β + 40). If α and β are small, then the posterior mean
is close to 22/40, which is the observed proportion of successes. Indeed, if α = β = 0,
which does not correspond to a real beta distribution, then the posterior mean is
exactly 22/40. However, we can look at what happens as α and β get close to 0.
The beta p.d.f. (ignoring the constant factor) is θα−1(1− θ)β−1.We can set α = β = 0
and pretend that ξ(θ) ∝ θ
−1(1− θ)
−1 is the prior p.d.f. of θ. The likelihood function
is f40(x|θ) =
 40
22
 
θ22(1− θ)18. We can ignore the constant factor
 40
22
 
and obtain the
product
ξ(θ|x) ∝ θ21(1− θ)17, for 0 < θ <1.
This is easily recognized as being the same as the p.d.f. of the beta distribution with
parameters 22 and 18 except for a constant factor. So, if we use the improper “beta
distribution” prior with prior hyperparameters 0 and 0, we get the beta posterior distribution
for θ with posterior hyperparameters 22 and 18. Notice that Theorem 7.3.1
yields the correct posterior distribution even in this improper prior case. Figure 7.5
adds the p.d.f. of the posterior beta distribution calculated here to Fig. 2.4 which depicted
the posterior probabilities for two different discrete prior distributions. All
three posteriors are pretty close.  
Definition
7.3.2
Improper Prior. Let ξ be a nonnegative function whose domain includes the parameter
space of a statistical model. Suppose that
 
ξ(θ)dθ =∞. If we pretend as if ξ(θ) is
the prior p.d.f. of θ, then we are using an improper prior for θ.
Definition 7.3.2 is not of much use in determining an improper prior to use in a
particular application. There are many methods for choosing an improper prior, and
the hope is that they all lead to similar posterior distributions so that it does not much
matter which of them one chooses. The most straightforward method for choosing
an improper prior is to start with the family of conjugate prior distributions, if there
is such a family. In most cases, if the parameterization of the conjugate family (prior
hyperparameters) is chosen carefully, the posterior hyperparameters will each equal
the corresponding prior hyperparameter plus a statistic. One would then replace each
of those prior hyperparameters by 0 in the formula for the prior p.d.f. This generally
results in a function that satisfies Definition 7.3.2. In Example 7.3.13, each of the
posterior hyperparameters were equal to the corresponding prior hyperparameters
plus some statistic. In that example, we replaced both prior hyperparameters by
0 to obtain the improper prior. Here are some more examples. The method just
404 Chapter 7 Estimation
described needs to be modified if one chooses an “inconvenient” parameterization
of the conjugate prior, as in Example 7.3.15 below.
Example
7.3.14
Prussian Army Deaths. Bortkiewicz (1898) counted the numbers of Prussian soldiers
killed by horsekick (a more serious problem in the nineteenth century than it is today)
in 14 army units for each of 20 years, a total of 280 counts. The 280 counts have
the following values: 144 counts are 0, 91 counts are 1, 32 counts are 2, 11 counts are
3, and 2 counts are 4. No unit suffered more than four deaths by horsekick during
any one year. (These data were reported and analyzed by Winsor, 1947.) Suppose
that we were going to model the 280 counts as a random sample of Poisson random
variables X1, . . . , X280 with mean θ conditional on the parameter θ. A conjugate
prior would be a member of the gamma family with prior hyperparameters α and
β. Theorem 7.3.2 says that the posterior distribution of θ would be the gamma distribution
with posterior hyperparameters α + 196 and β + 280, since the sum of the
280 counts equals 196. Unless either α or β is very large, the posterior gamma distribution
is nearly the same as the gamma distribution with posterior hyperparameters
196 and 280. This posterior distribution would seem to be the result of using a conjugate
prior with prior hyperparameters 0 and 0. Ignoring the constant factor, the
p.d.f. of the gamma distribution with parameters α and β is θα−1eβθ for θ >0. If we
let α = 0 and β = 0 in this formula, we get the improper prior “p.d.f.” ξ(θ) = θ
−1 for
θ >0. Pretending as if this really were a prior p.d.f. and applying Bayes’ theorem for
random variables (Theorem 3.6.4) would yield
ξ(θ|x) ∝ θ195e
−280θ , for θ >0.
This is easily recognized as being the p.d.f. of the gamma distribution with parameters
196 and 280, except for a constant factor. The result in this example applies to all
cases in which we model data with Poisson distributions. The improper “gamma
distribution” with prior hyperparameters 0 and 0 can be used in Theorem 7.3.2, and
the conclusion will still hold.  
Example
7.3.15
Failure Times of Ball Bearings. Suppose thatwemodel the 23 logarithms of failure times
of ball bearings from Example 5.6.9 as normal random variables X1, . . . , X23 with
mean θ and variance 0.25. A conjugate prior for θ would be the normal distribution
with mean μ0 and variance v2
0 for some μ0 and v2
0. The average of the 23 log-failure
times is 4.15, so the posterior distribution of θ would be the normal distribution with
mean μ1 = (0.25μ0 + 23 × 4.15v2
0)/(0.25 + 23v2
0) and variance v2
1
= (0.25v2
0)/(0.25 +
23v2
0). If we let v2
0
→∞in the formulas for μ1 and v2
1, we get μ1→4.15 and v2
1
→
0.25/23. Having infinite variance for the prior distribution of θ is like saying that θ
is equally likely to be anywhere on the real number line. This same thing happens
in every example in which we model data X1, . . . , Xn as a random sample from the
normal distribution with mean θ and known variance σ2 conditional on θ. If we use
an improper “normal distribution” prior with variance ∞ (the prior mean does not
matter), the calculation in Theorem 7.3.3 would yield a posterior distribution that is
the normal distribution with mean xn and variance σ2/n. The improper prior “p.d.f.”
in this case is ξ(θ) equal to a constant.
This example would be an application of the method described after Definition
7.3.2 if we had described the conjugate prior distribution in terms of the following
“more convenient” hyperparameters: 1 over the variance u0 = 1/v2
0 and the mean
over the variance t0 = μ0/v2
0. In terms of these hyperparameters, the posterior distribution
has 1 over its variance equal to u1 = u0 + n/0.25 and mean over variance
equal to t1 = μ1/v2
1
= t0 + 23 × 4.15/0.25. Each of u1 and t1 has the form of the cor7.3
Conjugate Prior Distributions 405
responding prior hyperparamter plus a statistic. The improper prior with u0 = t0 = 0
also has ξ(θ) equal to a constant.  
There are improper priors for other sampling models, also. The reader can verify
(in Exercise 21) that the “gamma distribution” with parameters 0 and 0 leads to
results similar to those in Example 7.3.14 when the data are a random sample from
an exponential distribution. Exercises 23 and 24 introduce a general collection of
p.d.f.’s f (x|θ) for which it is easy to construct improper priors.
Improper priors were introduced for cases in which the observed data contain
much more information than is represented by our prior distribution. Implicitly, we
are assuming that the data are rather informative. When the data do not contain
much information, improper priors may be higly inappropriate.
Example
7.3.16
Very Rare Events. In Example 5.4.7, we discussed a drinking water contaminant
known as cryptosporidium that generally occurs in very low concentrations. Suppose
that a water authority models the oocysts of cryptosporidium in the water supply as
a Poisson process with rate of θ oocysts per liter. They decide to sample 25 liters of
water to learn about θ. Suppose that they use the improper gamma prior with “p.d.f.”
θ
−1. (This is the same improper prior used in Example 7.3.14.) If the 25-liter sample
contains no oocysts, the water authority would be led to a posterior distribution
for θ that was the gamma distribution with parameters 0 and 5, which is not a real
distribution. No matter how many liters are sampled, the posterior distribution will
not be a real distribution until at least one oocyst is observed.When sampling for rare
events, one might be forced to quantify prior information in the form a proper prior
distribution in order to be able to make inferences based on the posterior distribution.
 
Summary
For each of several different statistical models for data given the parameter, we
found a conjugate family of distributions for the parameter. These families have the
property that if the prior distribution is chosen from the family, then the posterior
distribution is a member of the family. For data with distributions related to the
Bernoulli, such as binomial, geometric, and negative binomial, the conjugate family
for the success probability parameter is the family of beta distributions. For data with
distributions related to the Poisson process, such as Poisson, gamma (with known first
parameter), and exponential, the conjugate family for the rate parameter is the family
of gamma distributions. For data having a normal distribution with known variance,
the conjugate family for the mean is the normal family. We also described the use
of improper priors. Improper priors are not true probability distributions, but if we
pretend that they are, we will compute posterior distributions that approximate the
posteriors that we would have obtained using proper conjugate priors with extreme
values of the prior hyperparameters.
Exercises
1. Consider again the situation described in Example
7.3.10. Once again, suppose that the prior distribution of
θ is a normal distribution with mean 0, but this time let
the prior variance be v2 > 0. If the posterior mean of θ is
0.12, what value of v2 was used?
2. Show that in Example 7.3.2 it must be true that V ≤ 0.01
after 22 items have been selected. Also show thatV >0.01
until at least seven items have been selected.
3. Suppose that the proportion θ of defective items in a
large shipment is unknown and that the prior distribution
406 Chapter 7 Estimation
of θ is the beta distribution with parameters 2 and 200. If
100 items are selected at random from the shipment and
if three of these items are found to be defective, what is
the posterior distribution of θ?
4. Consider again the conditions of Exercise 3. Suppose
that after a certain statistician has observed that there
were three defective items among the 100 items selected
at random, the posterior distribution that she assigns to θ
is a beta distribution for which the mean is 2/51 and the
variance is 98/[(51)2(103)]. What prior distribution had
the statistician assigned to θ?
5. Suppose that the number of defects in a 1200-foot roll
of magnetic recording tape has a Poisson distribution for
which the value of the mean θ is unknown and that the
prior distribution of θ is the gamma distribution with parameters
α = 3 and β = 1. When five rolls of this tape are
selected at random and inspected, the numbers of defects
found on the rolls are 2, 2, 6, 0, and 3. Determine the posterior
distribution of θ.
6. Let θ denote the average number of defects per 100
feet of a certain type of magnetic tape. Suppose that the
value of θ is unknown and that the prior distribution of
θ is the gamma distribution with parameters α = 2 and
β = 10. When a 1200-foot roll of this tape is inspected,
exactly four defects are found. Determine the posterior
distribution of θ.
7. Suppose that the heights of the individuals in a certain
population have a normal distribution for which the value
of the mean θ is unknown and the standard deviation is
2 inches. Suppose also that the prior distribution of θ is a
normal distribution for which the mean is 68 inches and
the standard deviation is 1 inch. If 10 people are selected
at random from the population, and their average height is
found to be 69.5 inches, what is the posterior distribution
of θ?
8. Consider again the problem described in Exercise 7.
a. Which interval 1-inch long had the highest prior
probability of containing the value of θ?
b. Which interval 1-inch long has the highest posterior
probability of containing the value of θ?
c. Find the values of the probabilities in parts (a) and
(b).
9. Suppose that a random sample of 20 observations is
taken from a normal distribution for which the value of the
mean θ is unknown and the variance is 1. After the sample
values have been observed, it is found that Xn
= 10, and
that the posterior distribution of θ is a normal distribution
for which the mean is 8 and the variance is 1/25.What was
the prior distribution of θ?
10. Suppose that a random sample is to be taken from
a normal distribution for which the value of the mean
θ is unknown and the standard deviation is 2, and the
prior distribution of θ is a normal distribution for which
the standard deviation is 1. What is the smallest number
of observations that must be included in the sample in
order to reduce the standard deviation of the posterior
distribution of θ to the value 0.1?
11. Suppose that a random sample of 100 observations is
to be taken from a normal distribution for which the value
of the mean θ is unknown and the standard deviation is
2, and the prior distribution of θ is a normal distribution.
Show that no matter how large the standard deviation
of the prior distribution is, the standard deviation of the
posterior distribution will be less than 1/5.
12. Suppose that the time in minutes required to serve a
customer at a certain facility has an exponential distribution
for which the value of the parameter θ is unknown
and that the prior distribution of θ is a gamma distribution
for which the mean is 0.2 and the standard deviation
is 1. If the average time required to serve a random sample
of 20 customers is observed to be 3.8 minutes, what is
the posterior distribution of θ?
13. For a distribution with mean μ  = 0 and standard deviationσ
>0, the coefficient of variation of the distribution
is defined as σ/|μ|. Consider again the problem described
in Exercise 12, and suppose that the coefficient of variation
of the prior gamma distribution of θ is 2.What is the
smallest number of customers that must be observed in order
to reduce the coefficient of variation of the posterior
distribution to 0.1?
14. Show that the family of beta distributions is a conjugate
family of prior distributions for samples from a
negative binomial distribution with a known value of the
parameter r and an unknown value of the parameter p
(0<p <1).
15. Let ξ(θ) be a p.d.f. that is defined as follows for constants
α >0 and β >0:
ξ(θ) =
  βα
 (α) θ
−(α+1)e
−β/θ for θ >0,
0 for θ ≤ 0.
A distribution with this p.d.f. is called an inverse gamma
distribution.
a.  Verify that ξ(θ) is actually a p.d.f. by verifying that ∞
0 ξ(θ) dθ = 1.
b. Consider the family of probability distributions that
can be represented by a p.d.f. ξ(θ) having the given
form for all possible pairs of constantsα >0 andβ >
0. Show that this family is a conjugate family of prior
distributions for samples from a normal distribution
with a known value of the mean μ and an unknown
value of the variance θ.
16. Suppose that in Exercise 15 the parameter is taken as
the standard deviation of the normal distribution, rather
than the variance. Determine a conjugate family of prior
distributions for samples from a normal distribution with
7.3 Conjugate Prior Distributions 407
a known value of the mean μ and an unknown value of
the standard deviation σ.
17. Suppose that the number of minutes a person must
wait for a bus each morning has the uniform distribution
on the interval [0, θ], where the value of the endpoint θ
is unknown. Suppose also that the prior p.d.f. of θ is as
follows:
ξ(θ) =
 
192
θ4 for θ ≥ 4,
0 otherwise.
If the observed waiting times on three successive mornings
are 5, 3, and 8 minutes, what is the posterior p.d.f. of θ?
18. The Pareto distribution with parameters x0 and α
(x0 > 0 and α >0) is defined in Exercise 16 of Sec. 5.7.
Show that the family of Pareto distributions is a conjugate
family of prior distributions for samples from a uniform
distribution on the interval [0, θ], where the value of the
endpoint θ is unknown.
19. Suppose that X1, . . . , Xn form a random sample from
a distribution for which the p.d.f. f (x|θ) is as follows:
f (x|θ) =
 
θxθ−1 for 0 < x <1,
0 otherwise.
Suppose also that the value of the parameter θ is unknown
(θ > 0), and the prior distribution of θ is the gamma distribution
with parameters α and β (α >0 andβ >0). Determine
the mean and the variance of the posterior distribution
of θ.
20. Suppose that we model the lifetimes (in months) of
electronic components as independent exponential random
variables with unknown parameter β. We model β
as having the gamma distribution with parameters a and
b.We believe that the mean lifetime is four months before
we see any data. If we were to observe 10 components with
an average observed lifetime of six months, we would then
claim that the mean lifetime is five months. Determine a
and b. Hint: Use Exercise 21 in Sec. 5.7.
21. Suppose that X1, . . . , Xn form a random sample from
the exponential distribution with parameter θ. Let the
prior distribution of θ be improper with “p.d.f.” 1/θ for
θ >0. Find the posterior distribution of θ and show that
the posterior mean of θ is 1/xn.
22. Consider the data in Example 7.3.10. This time, suppose
that we use the improper prior “p.d.f.” ξ(θ) = 1 (for
all θ). Find the posterior distribution of θ and the posterior
probability that θ >1.
23. Consider a distribution for which the p.d.f. or the p.f.
is f (x|θ), where θ belongs to some parameter space  . It
is said that the family of distributions obtained by letting
θ vary over all values in   is an exponential family, or
a Koopman-Darmois family, if f (x|θ) can be written as
follows for θ ∈   and all values of x:
f (x|θ) = a(θ)b(x) exp[c(θ) d(x)].
Here a(θ) and c(θ) are arbitrary functions of θ, and b(x)
and d(x) are arbitrary functions of x. Let
H =
 
(α, β) :
 
 
a(θ)α exp[c(θ) β]dθ <∞
1
.
For each (α, β) ∈ H, let
ξα,β(θ) = a(θ)α exp[c(θ) β]  
  a(η)α exp[c(η) β]dη
,
and let   be the set of all probability distributions that
have p.d.f.’s of the form ξα,β(θ) for some (α, β) ∈ H.
a. Show that   is a conjugate family of prior distributions
for samples from f (x|θ).
b. Suppose that we observe a random sample of size n
from the distribution with p.d.f. f (x|θ). If the prior
p.d.f. of θ is ξα0,β0, show that the posterior hyperparameters
are
α1 = α0 + n, β1 = β0 +
 n
i=1
d(xi).
24. Show that each of the following families of distributions
is an exponential family, as defined in Exercise 23:
a. The family of Bernoulli distributions with an unknown
value of the parameter p
b. The family of Poisson distributions with an unknown
mean
c. The family of negative binomial distributions for
which the value of r is known and the value of p
is unknown
d. The family of normal distributions with an unknown
mean and a known variance
e. The family of normal distributions with an unknown
variance and a known mean
f. The family of gamma distributions for which the
value of α is unknown and the value of β is known
g. The family of gamma distributions for which the
value of α is known and the value of β is unknown
h. The family of beta distributions for which the value
of α is unknown and the value of β is known
i. The family of beta distributions for which the value
of α is known and the value of β is unknown
25. Show that the family of uniform distributions on the
intervals [0, θ] for θ >0 is not an exponential family as
defined in Exercise 23. Hint: Look at the support of each
uniform distribution.
26. Show that the family of discrete uniform distributions
on the sets of integers {0, 1, . . . , θ} for θ a nonnegative
integer is not an exponential family as defined in Exercise
23.
408 Chapter 7 Estimation
7.4 Bayes Estimators
An estimator of a parameter is some function of the data that we hope is close to
the parameter. A Bayes estimator is an estimator that is chosen to minimize the
posterior mean of some measure of how far the estimator is from the parameter,
such as squared error or absolute error.
Nature of an Estimation Problem
Example
7.4.1
Calorie Counts on Food Labels. In Example 7.3.10, we found the posterior distribution
of θ, the mean percentage difference between measured and advertised calorie
counts. A consumer group might wish to report a single number as an estimate of θ
without specifying the entire distribution for θ. How to choose such a single-number
estimate in general is the subject of this section.  
We begin with a definition that is appropriate for a real-valued parameter such
as in Example 7.4.1. A more general definition will follow after we become more
familiar with the concept of estimation.
Definition
7.4.1
Estimator/Estimate. Let X1, . . . , Xn be observable data whose joint distribution is
indexed by a parameter θ taking values in a subset   of the real line. An estimator
of the parameter θ is a real-valued function δ(X1, . . . , Xn). If X1 = x1, . . . , Xn
= xn
are observed, then δ(x1, . . . , xn) is called the estimate of θ.
Notice that every estimator is, by nature of being a function of data, a statistic in the
sense of Definition 7.1.4.
Because the value of θ must belong to the set  , it might seem reasonable to
require that every possible value of an estimator δ(X1, . . . , Xn) must also belong
to  . We shall not require this restriction, however. If an estimator can take values
outside of the parameter space , the experimenter will need to decide in the specific
problem whether that seems appropriate or not. It may turn out that every estimator
that takes values only inside   has other even less desirable properties.
In Definition 7.4.1, we distinguished between the terms estimator and estimate.
Because an estimator δ(X1, . . . , Xn) is a function of the random variablesX1, . . . , Xn,
the estimator itself is a random variable, and its probability distribution can be
derived from the joint distribution of X1, . . . , Xn, if desired. On the other hand, an
estimate is a specific value δ(x1, . . . , xn) of the estimator that is determined by using
specific observed values x1, . . . , xn. If we use the vector notation X = (X1, . . . , Xn)
and x = (x1, . . . , xn), then an estimator is a function δ(X) of the random vectorX, and
an estimate is a specific value δ(x). It will often be convenient to denote an estimator
δ(X) simply by the symbol δ.
Loss Functions
Example
7.4.2
Calorie Counts on Food Labels. In Example 7.4.1, the consumer group may feel that the
farther their estimate δ(x) is from the true mean difference θ, the more embarassment
and possible legal action they will encounter. Ideally, they would like to quantify the
amount of negative repercussions as a function of θ and the estimate δ(x). Then they
could have some idea how likely it is that they will encounter various levels of hassle
as a result of their estimation.  
7.4 Bayes Estimators 409
The foremost requirement of a good estimator δ is that it yield an estimate of
θ that is close to the actual value of θ. In other words, a good estimator is one for
which it is highly probable that the error δ(X) − θ will be close to 0.We shall assume
that for each possible value of θ ∈   and each possible estimate a, there is a number
L(θ, a) that measures the loss or cost to the statistician when the true value of the
parameter is θ and her estimate is a. Typically, the greater the distance between a
and θ, the larger will be the value of L(θ, a).
Definition
7.4.2
Loss Function. A loss function is a real-valued function of two variables, L(θ, a),
where θ ∈   and a is a real number. The interpretation is that the statistician loses
L(θ, a) if the parameter equals θ and the estimate equals a.
As before, let ξ(θ) denote the prior p.d.f. of θ on the set , and consider a problem
in which the statistician must estimate the value of θ without being able to observe
the values in a random sample. If the statistician chooses a particular estimate a, then
her expected loss will be
E[L(θ, a)]=
 
 
L(θ, a)ξ(θ) dθ. (7.4.1)
We shall assume that the statistician wishes to choose an estimate a for which the
expected loss in Eq. (7.4.1) is a minimum.
Definition of a Bayes Estimator
Suppose now that the statistician can observe the value x of the random vector X
before estimating θ, and let ξ(θ|x) denote the posterior p.d.f. of θ on  . (The case of
a discrete parameter can be handled in similar fashion.) For each estimate a that the
statistician might use, her expected loss in this case will be
E[L(θ, a)|x]=
 
 
L(θ, a)ξ(θ|x) dθ. (7.4.2)
Hence, the statistician should now choose an estimate a for which the expectation in
Eq. (7.4.2) is a minimum.
For each possible value x of the random vector X, let δ
∗
(x) denote a value of
the estimate a for which the expected loss in Eq. (7.4.2) is a minimum. Then the
function δ
∗
(X) for which the values are specified in this way will be an estimator of
θ.
Definition
7.4.3
Bayes Estimator/Estimate. Let L(θ, a) be a loss function. For each possible value x of
X, let δ
∗
(x) be a value of a such that E[L(θ, a)|x] is minimized. Then δ
∗ is called a
Bayes estimator of θ. Once X = x is observed, δ
∗
(x) is called a Bayes estimate of θ.
Another way to describe a Bayes estimator δ
∗ is to note that, for each possible value
x of X, the value δ
∗
(x) is chosen so that
E[L(θ, δ
∗
(x))|x]= min
All a
E[L(θ, a)|x]. (7.4.3)
In summary, we have considered an estimation problem in which a random sample
X = (X1, . . . , Xn) is to be taken from a distribution involving a parameter θ that
has an unknown value in some specified set  . For every given loss function L(θ, a)
and every prior p.d.f. ξ(θ), the Bayes estimator of θ is the estimator δ
∗
(X) for which
Eq. (7.4.3) is satisfied for every possible value x of X. It should be emphasized that
the form of the Bayes estimator will depend on both the loss function that is used
410 Chapter 7 Estimation
in the problem and the prior distribution that is assigned to θ. In the problems described
in this text, Bayes estimators will exist. However, there are more complicated
situations in which no function δ
∗ satisfies (7.4.3).
Different Loss Functions
By far, the most commonly used loss function in estimation problems is the squared
error loss function.
Definition
7.4.4
Squared Error Loss Function. The loss function
L(θ, a) = (θ − a)2 (7.4.4)
is called squared error loss.
When the squared error loss function is used, the Bayes estimate δ
∗
(x) for each
observed value of x will be the value of a for which the expectation E[(θ − a)2|x] is a
minimum. Theorem 4.7.3 states that, when the expectation of (θ − a)2 is calculated
with respect to the posterior distribution of θ, this expectation will be a minimum
when a is chosen to be equal to the mean E(θ|x) of the posterior distribution, if that
posterior mean is finite. If the posterior mean of θ is not finite, then the expected loss
is infinite for every possible estimate a. Hence, we have the following corollary to
Theorem 4.7.3.
Corollary
7.4.1
Let θ be a real-valued parameter. Suppose that the squared error loss function (7.4.4)
is used and that the posterior mean of θ, E(θ|X), is finite. Then, a Bayes estimator
of θ is δ
∗
(X) = E(θ|X).
Example
7.4.3
Estimating the Parameter of a Bernoulli Distribution. Let the random sampleX1, . . . ,Xn
be taken from the Bernoulli distribution with parameter θ, which is unknown and
must be estimated. Let the prior distribution of θ be the beta distribution with
parameters α >0 and β >0. Suppose that the squared error loss function is used,
as specified by Eq. (7.4.4), for 0 < θ <1 and 0 < a <1.We shall determine the Bayes
estimator of θ.
For observed values x1, . . . , xn, let y = n
i=1 xi . Then it follows from Theorem
7.3.1 that the posterior distribution of θ will be the beta distribution with parameters
α1 = α + y and β1 = β + n − y. Since the mean of the beta distribution with
parameters α1 and β1 is α1/(α1 + β1), the mean of this posterior distribution of θ will
be (α + y)/(α + β + n). The Bayes estimate δ(x) will be equal to this value for each
observed vector x. Therefore, the Bayes estimator δ
∗
(X) is specified as follows:
δ
∗
(X) =
α + n
i=1 Xi
α + β + n
. (7.4.5)
 
Example
7.4.4
Estimating the Mean of a Normal Distribution. Suppose that a random sample X1, . . . ,
Xn is to be taken from a normal distribution for which the value of the mean θ is
unknown and the value of the variance σ2 is known. Suppose also that the prior
distribution of θ is the normal distribution with mean μ0 and variance v2
0. Suppose,
finally, that the squared error loss function is to be used, as specified in Eq. (7.4.4),
for −∞< θ <∞and −∞< a <∞. We shall determine the Bayes estimator of θ.
It follows from Theorem 7.3.3 that for all observed values x1, . . . , xn, the posterior
distribution of θ will be a normal distribution with mean μ1 specified by
7.4 Bayes Estimators 411
Eq. (7.3.1). Therefore, the Bayes estimator δ
∗
(X) is specified as follows:
δ
∗
(X) =
σ2μ0 + nv2
0Xn
σ2 + nv2
0
. (7.4.6)
The posterior variance of θ does not enter into this calculation.  
Another commonly used loss function in estimation problems is the absolute
error loss function.
Definition
7.4.5
Absolute Error Loss Function. The loss function
L(θ, a) = |θ − a| (7.4.7)
is called absolute error loss.
For every observed value of x, the Bayes estimate δ
∗
(x) will now be the value of a
for which the expectation E(|θ − a||x) is a minimum. It was shown in Theorem 4.5.3
that for every given probability distribution of θ, the expectation of |θ − a| will be a
minimum when a is chosen to be equal to a median of the distribution of θ. Therefore,
when the expectation of |θ − a| is calculated with respect to the posterior distribution
of θ, this expectation will be a minimum when a is chosen to be a median of the
posterior distribution of θ.
Corollary
7.4.2
When the absolute error loss function (7.4.7) is used, a Bayes estimator of a realvalued
parameter is δ
∗
(X) equal to a median of the posterior distribution of θ.
We shall now reconsider Examples 7.4.3 and 7.4.4, but we shall use the absolute
error loss function instead of the squared error loss function.
Example
7.4.5
Estimating the Parameter of a Bernoulli Distribution. Consider again the conditions
of Example 7.4.3, but suppose now that the absolute error loss function is used,
as specified by Eq. (7.4.7). For all observed values x1, . . . , xn, the Bayes estimate
δ
∗
(x) will be equal to the median of the posterior distribution of θ, which is the beta
distribution with parameters α + y and β + n − y. There is no simple expression for
this median. It must be determined by numerical approximations for each given set
of observed values. Most statistical computer software can compute the median of
an arbitrary beta distribution.
As a specific example, consider the situation described in Example 7.3.13 in
which an improper prior was used. The posterior distribution of θ in that example was
the beta distribution with parameters 22 and 18. The mean of this beta distribution
is 22/40 = 0.55. The median is 0.5508.  
Example
7.4.6
Estimating the Mean of a Normal Distribution. Consider again the conditions of Example
7.4.4, but suppose now that the absolute error loss function is used, as specified
by Eq. (7.4.7). For all observed values x1, . . . , xn, the Bayes estimate δ
∗
(x) will be
equal to the median of the posterior normal distribution of θ. However, since the
mean and the median of each normal distribution are equal, δ
∗
(x) is also equal to
the mean of the posterior distribution. Therefore, the Bayes estimator with respect
to the absolute error loss function is the same as the Bayes estimator with respect to
the squared error loss function, and it is again given by Eq. (7.4.6).  
412 Chapter 7 Estimation
Other Loss Functions Although the squared error loss function and, to a lesser
extent, the absolute error loss function are the most commonly used ones in estimation
problems, neither of these loss functions may be appropriate in a particular
problem. In some problems, it might be appropriate to use a loss function having the
form L(θ, a) = |θ − a|k, where k is some positive number other than 1 or 2. In other
problems, the loss that results when the error |θ − a| has a given magnitude might
depend on the actual value of θ. In such a problem, it might be appropriate to use a
loss function having the form L(θ, a) = λ(θ)(θ − a)2 or L(θ, a) = λ(θ)|θ − a|, where
λ(θ) is a given positive function of θ. In still other problems, it might be more costly
to overestimate the value of θ by a certain amount than to underestimate it by the
same amount. One specific loss function that reflects this property is as follows:
L(θ, a) =
 
3(θ − a)2 for θ ≤ a,
(θ − a)2 for θ >a.
Various other types of loss functions might be relevant in specific estimation
problems. However, in this book we shall give most of our attention to the squared
error and absolute error loss functions.
The Bayes Estimate for Large Samples
Effect of Different Prior Distributions Suppose that the proportion θ of defective
items in a large shipment is unknown and that the prior distribution of θ is the uniform
distribution on the interval [0, 1]. Suppose also that the value of θ must be estimated,
and that the squared error loss function is used. Suppose, finally, that in a random
sample of 100 items from the shipment, exactly 10 items are found to be defective.
Since the uniform distribution is the beta distribution with parameters α = 1 and
β = 1, and since n = 100 and y = 10 for the given sample, it follows from Eq. (7.4.5)
that the Bayes estimate is δ
∗
(x) = 11/102 = 0.108.
Next, suppose that the prior p.d.f. of θ has the form ξ(θ) = 2(1− θ) for 0 < θ <1,
instead of being a uniform distribution, and that again in a random sample of 100
items, exactly 10 items are found to be defective. Since ξ(θ) is the p.d.f. of the beta
distribution with parameters α = 1 and β = 2, it follows from Eq. (7.4.5) that in this
case the Bayes estimate of θ is δ(x) = 11/103 = 0.107.
The two prior distributions considered here are quite different. The mean of the
uniform prior distribution is 1/2, and the mean of the other beta prior distribution
is 1/3. Nevertheless, because the number of observations in the sample is so large
(n = 100), the Bayes estimates with respect to the two different prior distributions
are almost the same. Furthermore, the values of both estimates are very close to the
observed proportion of defective items in the sample, which is xn
= 0.1.
Example
7.4.7
Chest Measurements of Scottish Soldiers. Quetelet (1846) reported (with some errors)
data on the chest measurements (in inches) of 5732 Scottish militiamen. These data
appeared earlier in an 1817 medical journal and are discussed by Stigler (1986). Figure
7.6 shows a histogram of the data. Suppose that we were to model the individual
chest measurements as a random sample (given θ) of normal random variables with
mean θ and variance 4. The average chest measurement is xn
= 39.85. If θ had the
normal prior distribution with mean μ0 and variance v2
0, then using Eq. (7.3.1) the
posterior distribution of θ would be normal with mean
μ1 =
4μ0 + 5732 × v2
0
× 39.85
4 + 5732 × v2
0
,
7.4 Bayes Estimators 413
Figure 7.6 Histogram
of chest measurements
of Scottish militiamen in
Example 7.4.7.
35 40 45
1000
800
600
400
200
0
Chest measurement
Count
and variance
v2
1
=
4v2
0
4 + 5732v2
0
.
The Bayes estimate will then be δ(x) = μ1. Notice that, unless μ0 is incredibly large or
v2
0 is very small, we will have μ1 nearly equal to 39.85 and v2
1 nearly equal to 4/5732.
Indeed, if the prior p.d.f. of θ is any continuous function that is positive around
θ = 39.85 and is not extremely large when θ is far from 39.85, then the posterior
p.d.f. of θ will very nearly be the normal p.d.f. with mean 39.85 and variance 4/5732.
The mean and median of the posterior distribution are nearly xn regardless of the
prior distribution.  
Consistency of the Bayes Estimator Let X1, . . . , Xn be a random sample (given θ)
from the Bernoulli distribution with parameter θ. Suppose that we use a conjugate
prior for θ. Since θ is the mean of the distribution from which the sample is being
taken, it follows from the law of large numbers discussed in Sec. 6.2 thatXn converges
in probability to θ as n→∞. Since the difference between the Bayes estimator δ
∗
(X)
and Xn converges in probability to 0 as n→∞, it can also be concluded that δ
∗
(X)
converges in probability to the unknown value of θ as n→∞.
Definition
7.4.6
Consistent Estimator. A sequence of estimators that converges in probability to the
unknown value of the parameter being estimated, as n→∞, is called a consistent
sequence of estimators.
Thus, we have shown that the Bayes estimators δ
∗
(X) form a consistent sequence of
estimators in the problem considered here. The practical interpretation of this result
is as follows:When large numbers of observations are taken, there is high probability
that the Bayes estimator will be very close to the unknown value of θ.
The results that have just been presented for estimating the parameter of a
Bernoulli distribution are also true for other estimation problems. Under fairly
general conditions and for a wide class of loss functions, the Bayes estimators of
some parameters θ will form a consistent sequence of estimators as the sample size
n→∞. In particular, for random samples from any one of the various families of
distributions discussed in Sec. 7.3, if a conjugate prior distribution is assigned to the
parameters and the squared error loss function is used, the Bayes estimators will
form a consistent sequence of estimators.
For example, consider again the conditions of Example 7.4.4. In that example, a
random sample is taken from a normal distribution for which the value of the mean
414 Chapter 7 Estimation
θ is unknown, and the Bayes estimator δ
∗
(X) is specified by Eq. (7.4.6). By the law
of large numbers, Xn will converge to the unknown value of the mean θ as n→∞. It
can now be seen from Eq. (7.4.6) that δ
∗
(X) will also converge to θ as n→∞. Thus,
the Bayes estimators again form a consistent sequence of estimators. Other examples
are given in Exercises 7 and 11 at the end of this section.
More General Parameters and Estimators
So far in this section, we have considered only real-valued parameters and estimators
of those parameters. There are two very common generalizations of this situation
that are easy to handle with the same techniques described above. The first generalization
is to multidimensional parameters such as the two-dimensional parameter of
a normal distribution with unknown mean and variance. The second generalization
is to functions of the parameter rather than the parameter itself. For example, if θ is
the failure rate in Example 7.1.1, we might be interested in estimating 1/θ, the mean
time to failure.As another example, if our data arise from a normal distribution with
unknown mean and variance, we might wish to estimate the mean only rather than
the entire parameter.
The necessary changes to Definition 7.4.1 in order to handle both of the generalizations
just mentioned are given in Definition 7.4.7.
Definition
7.4.7
Estimator/Estimate. Let X1, . . . ,Xn be observable data whose joint distribution is
indexed by a parameter θ taking values in a subset   of k-dimensional space. Let
h be a function from   into d-dimensional space. Define ψ = h(θ). An estimator
of ψ is a function δ(X1, . . . , Xn) that takes values in d-dimensional space. If X1 =
x1, . . . , Xn
= xn are observed, then δ(x1, . . . , xn) is called the estimate of ψ.
When h in Definition 7.4.7 is the identity function h(θ) = θ, then ψ = θ and we are
estimating the original parameter θ. When h(θ) is one coordinate of θ, then the ψ
that we are estimating is just that one coordinate.
There will be a number of examples of multidimensional parameters in later
sections and chapters of this book. Here is an example of estimating a function of a
parameter.
Example
7.4.8
Lifetimes of Electronic Components. In Example 7.3.12, suppose that we want to estimate
ψ = 1/θ, the mean time to failure of the electronic components. The posterior
distribution of θ is the gamma distribution with parameters 4 and 8.6. If we use the
squared error loss L(θ, a) = (ψ − a)2, Theorem 4.7.3 says that the Bayes estimate is
the mean of the posterior distribution of ψ. That is,
δ
∗
(x) = E(ψ|x) = E


1
θ
    
x
 
=
  ∞
0
1
θ
ξ(θ|x)dθ
=
  ∞
0
1
θ
8.64
6
θ3e
−8.6θdθ
= 8.64
6
  ∞
0
θ2e
−8.6θdθ
= 8.64
6
2
8.63
= 2.867,
7.4 Bayes Estimators 415
where the final equality follows fromTheorem 5.7.3.The mean of 1/θ is slightly higher
than 1/E(θ|x) = 8.6/4 = 2.15.  
Note: Loss Functions and Utility. In Sec. 4.8, we introduced the concept of utility
to measure the values to a decision maker of various random outcomes. The concept
of loss function is closely related to that of utility. In a sense, a loss function is like
the negative of a utility. Indeed, Example 4.8.8 shows how to convert absolute error
loss into a utility. In that example, Y plays the role of the parameter and d(W) plays
the role of the estimator. In a similar manner, one can convert other loss functions
into utilities. Hence, it is not surprising that the goal of maximizing expected utility
in Sec. 4.8 has been replaced by the goal of minimizing expected loss in the present
section.
Limitations of Bayes Estimators
The theory of Bayes estimators, as described in this section, provides a satisfactory
and coherent theory for the estimation of parameters. Indeed, according to statisticians
who adhere to the Bayesian philosophy, it provides the only coherent theory of
estimation that can possibly be developed. Nevertheless, there are certain limitations
to the applicability of this theory in practical statistical problems. To apply the theory,
it is necessary to specify a particular loss function, such as the squared error or
absolute error function, and also a prior distribution for the parameter. Meaningful
specifications may exist, in principle, but it may be very difficult and time-consuming
to determine them. In some problems, the statistician must determine the specifications
that would be appropriate for clients or employers who are unavailable or
otherwise unable to communicate their preferences and knowledge. In other problems,
it may be necessary for an estimate to be made jointly by members of a group or
committee, and it may be difficult for the members of the group to reach agreement
about an appropriate loss function and prior distribution.
Another possible difficulty is that in a particular problem the parameter θ may
actually be a vector of real-valued parameters for which all the values are unknown.
The theory of Bayes estimation, which has been developed in the preceding sections,
can easily be generalized to include the estimation of a vector parameter θ. However,
to apply this theory in such a problem it is necessary to specify a multivariate prior
distribution for the vector θ and also to specify a loss function L(θ, a) that is a function
of the vector θ and the vector a, which will be used to estimate θ. Even though
the statistician may be interested in estimating only one or two components of the
vector θ in a given problem, he must still assign a multivariate prior distribution to
the entire vector θ. In many important statistical problems, some of which will be
discussed later in this book, θ may have a large number of components. In such a
problem, it is especially difficult to specify a meaningful prior distribution on the
multidimensional parameter space  .
It should be emphasized that there is no simple way to resolve these difficulties.
Other methods of estimation that are not based on prior distributions and loss
functions typically have practical limitations, also. These other methods also typically
have serious defects in their theoretical structure as well.
Summary
An estimator of a parameter θ is a function δ of the data X. If X = x is observed, the
value δ(x) is called our estimate, the observed value of the estimator δ(X). A loss
416 Chapter 7 Estimation
function L(θ, a) is designed to measure how costly it is to use the value a to estimate
θ. A Bayes estimator δ
∗
(X) is chosen so that a = δ
∗
(x) provides the minimum value
of the posterior mean of L(θ, a). That is,
E[L(θ, δ
∗
(x))|x]= min
a
E[L(θ, a)|x].
If the loss is squared error, L(θ, a) = (θ − a)2, then δ
∗
(x) is the posterior mean of
θ, E(θ|x). If the loss is absolute error, L(θ, a) = |θ − a|, then δ
∗
(x) is a median of
the posterior distribution of θ. For other loss functions, locating the minimum might
have to be done numerically.
Exercises
1. In a clinical trial, let the probability of successful outcome
θ have a prior distribution that is the uniform distribution
on the interval [0, 1], which is also the beta distribution
with parameters 1 and 1. Suppose that the first
patient has a successful outcome. Find the Bayes estimates
of θ that would be obtained for both the squared error and
absolute error loss functions.
2. Suppose that the proportion θ of defective items in a
large shipment is unknown, and the prior distribution of
θ is the beta distribution for which the parameters are
α = 5and β = 10. Suppose also that 20 items are selected at
random from the shipment, and that exactly one of these
items is found to be defective. If the squared error loss
function is used, what is the Bayes estimate of θ?
3. Consider again the conditions of Exercise 2. Suppose
that the prior distribution of θ is as given in Exercise 2,
and suppose again that 20 items are selected at random
from the shipment.
a. For what number of defective items in the sample
will the mean squared error of the Bayes estimate be
a maximum?
b. For what number will the mean squared error of the
Bayes estimate be a minimum?
4. Suppose that a random sample of size n is taken from
the Bernoulli distribution with parameter θ, which is unknown,
and that the prior distribution of θ is a beta distribution
for which the mean is μ0. Show that the mean of
the posterior distribution of θ will be a weighted average
having the form γnXn
+ (1− γn)μ0, and show that γn
→1
as n→∞.
5. Suppose that the number of defects in a 1200-foot roll
of magnetic recording tape has a Poisson distribution for
which the value of the mean θ is unknown, and the prior
distribution of θ is the gamma distribution with parameters
α = 3 and β = 1. When five rolls of this tape are
selected at random and inspected, the numbers of defects
found on the rolls are 2, 2, 6, 0, and 3. If the squared error
loss function is used, what is the Bayes estimate of θ? (See
Exercise 5 of Sec. 7.3.)
6. Suppose that a random sample of size n is taken from
a Poisson distribution for which the value of the mean θ is
unknown, and the prior distribution of θ is a gamma distribution
for which the mean is μ0. Show that the mean of
the posterior distribution of θ will be a weighted average
having the form γnXn
+ (1− γn)μ0, and show that γn
→1
as n→∞.
7. Consider again the conditions of Exercise 6, and suppose
that the value of θ must be estimated by using the
squared error loss function. Show that the Bayes estimators,
for n = 1, 2, . . . , form a consistent sequence of estimators
of θ.
8. Suppose that the heights of the individuals in a certain
population have a normal distribution for which the value
of the mean θ is unknown and the standard deviation is
2 inches. Suppose also that the prior distribution of θ is a
normal distribution for which the mean is 68 inches and
the standard deviation is 1 inch. Suppose finally that 10
people are selected at random from the population, and
their average height is found to be 69.5 inches.
a. If the squared error loss function is used, what is the
Bayes estimate of θ?
b. If the absolute error loss function is used, what is the
Bayes estimate of θ? (See Exercise 7 of Sec. 7.3).
9. Suppose that a random sample is to be taken from a
normal distribution for which the value of the mean θ is
unknown and the standard deviation is 2, the prior distribution
of θ is a normal distribution for which the standard
deviation is 1, and the value of θ must be estimated by using
the squared error loss function. What is the smallest
random sample that must be taken in order for the mean
squared error of the Bayes estimator of θ to be 0.01 or
less? (See Exercise 10 of Sec. 7.3.)
10. Suppose that the time in minutes required to serve a
customer at a certain facility has an exponential distribution
for which the value of the parameter θ is unknown,
7.5 Maximum Likelihood Estimators 417
the prior distribution of θ is a gamma distribution for
which the mean is 0.2 and the standard deviation is 1, and
the average time required to serve a random sample of
20 customers is observed to be 3.8 minutes. If the squared
error loss function is used, what is the Bayes estimate of
θ? (See Exercise 12 of Sec. 7.3.)
11. Suppose that a random sample of size n is taken from
an exponential distribution for which the value of the
parameter θ is unknown, the prior distribution of θ is
a specified gamma distribution, and the value of θ must
be estimated by using the squared error loss function.
Show that the Bayes estimators, for n = 1, 2, . . . , form a
consistent sequence of estimators of θ.
12. Let θ denote the proportion of registered voters in a
large city who are in favor of a certain proposition. Suppose
that the value of θ is unknown, and two statisticians
A and B assign to θ the following different prior p.d.f.’s
ξA(θ) and ξB(θ), respectively:
ξA(θ) = 2θ for 0 < θ <1,
ξB(θ) = 4θ3 for 0 < θ <1.
In a random sample of 1000 registered voters from the city,
it is found that 710 are in favor of the proposition.
a. Find the posterior distribution that each statistician
assigns to θ.
b. Find the Bayes estimate for each statistician based
on the squared error loss function.
c. Show that after the opinions of the 1000 registered
voters in the random sample had been obtained, the
Bayes estimates for the two statisticians could not
possibly differ by more than 0.002, regardless of the
number in the sample who were in favor of the proposition.
13. Suppose that X1, . . . , Xn form a random sample from
the uniform distribution on the interval [0, θ], where the
value of the parameter θ is unknown. Suppose also that
the prior distribution of θ is the Pareto distribution with
parameters x0 and α (x0 > 0 and α > 0), as defined in
Exercise 16 of Sec. 5.7. If the value of θ is to be estimated
by using the squared error loss function, what is the Bayes
estimator of θ? (See Exercise 18 of Sec. 7.3.)
14. Suppose that X1, . . . , Xn form a random sample from
an exponential distribution for which the value of the
parameter θ is unknown (θ > 0). Let ξ(θ) denote the prior
p.d.f. of θ, and let ˆ θ denote the Bayes estimator of θ with
respect to the prior p.d.f. ξ(θ) when the squared error loss
function is used. Let ψ = θ2, and suppose that instead of
estimating θ, it is desired to estimate the value ofψ subject
to the following squared error loss function:
L(ψ, a) = (ψ − a)2 forψ >0 and a >0.
Let ˆψ denote the Bayes estimator of ψ. Explain why ˆ ψ >
ˆ θ2. Hint: Look at Exercise 4 in Sec. 4.4.
15. Let c > 0 and consider the loss function
L(θ, a) =
 
c|θ − a| if θ <a,
|θ − a| if θ ≥ a.
Assume that θ has a continuous distribution. Prove that a
Bayes estimator of θ will be any 1/(1+ c) quantile of the
posterior distribution of θ. Hint: The proof is a lot like the
proof of Theorem 4.5.3. The result holds even if θ does
not have a continuous distribution, but the proof is more
cumbersome.
7.5 Maximum Likelihood Estimators
Maximum likelihood estimation is a method for choosing estimators of parameters
that avoids using prior distributions and loss functions. It chooses as the estimate
of θ the value of θ that provides the largest value of the likelihood function.
Introduction
Example
7.5.1
Lifetimes of Electronic Components. Suppose that we observe the data in Example
7.3.11 consisting of the lifetimes of three electronic components. Is there a method
for estimating the failure rate θ without first constructing a prior distribution and a
loss function?  
In this section, we shall develop a relatively simple method of constructing an
estimator without having to specify a loss function and a prior distribution. It is called
the method of maximum likelihood, and it was introduced by R. A. Fisher in 1912.
Maximum likelihood estimation can be applied in most problems, it has a strong
418 Chapter 7 Estimation
intuitive appeal, and it will often yield a reasonable estimator of θ. Furthermore, if
the sample is large, the method will typically yield an excellent estimator of θ. For
these reasons, the method of maximum likelihood is probably the most widely used
method of estimation in statistics.
Note: Terminology. Because maximum likelihood estimation, as well as many other
procedures to be introduced later in the text, do not involve the specification of a prior
distribution of the parameter, some different terminology is often used in describing
the statistical models to which these procedures are applied. Rather than saying that
X1, . . . , Xn are i.i.d. with p.f. or p.d.f. f (x|θ) conditional on θ, we might say that
X1, . . . , Xn form a random sample from a distribution with p.f. or p.d.f. f (x|θ) where
θ is unknown. More specifically, in Example 7.5.1, we could say that the lifetimes form
a random sample from the exponential distribution with unknown parameter θ.
Definition of a Maximum Likelihood Estimator
Let the random variables X1, . . . , Xn form a random sample from a discrete distribution
or a continuous distribution for which the p.f. or the p.d.f. is f (x|θ), where the
parameter θ belongs to some parameter space  . Here, θ can be either a real-valued
parameter or a vector. For every observed vector x = (x1, . . . , xn) in the sample, the
value of the joint p.f. or joint p.d.f. will, as usual, be denoted by fn(x|θ). Because of
its importance in this section, we repeat Definition 7.2.3.
Definition
7.5.1
Likelihood Function. When the joint p.d.f. or the joint p.f. fn(x|θ) of the observations
in a random sample is regarded as a function of θ for given values of x1, . . . , xn, it is
called the likelihood function.
Consider first, the case in which the observed vector x came from a discrete
distribution. If an estimate of θ must be selected, we would certainly not consider
any value of θ ∈   for which it would be impossible to obtain the vector x that was
actually observed. Furthermore, suppose that the probability fn(x|θ) of obtaining the
actual observed vector x is very high when θ has a particular value, say, θ = θ0, and is
very small for every other value of θ ∈  . Then we would naturally estimate the value
of θ to be θ0 (unless we had strong prior information that outweighed the evidence in
the sample and pointed toward some other value). When the sample comes from a
continuous distribution, it would again be natural to try to find a value of θ for which
the probability density fn(x|θ) is large and to use this value as an estimate of θ. For
each possible observed vector x, we are led by this reasoning to consider a value of
θ for which the likelihood function fn(x|θ) is a maximum and to use this value as an
estimate of θ. This concept is formalized in the following definition.
Definition
7.5.2
Maximum Likelihood Estimator/Estimate. For each possible observed vector x, let
δ(x) ∈   denote a value of θ ∈   for which the likelihood function fn(x|θ) is a maximum,
and let ˆ θ = δ(X) be the estimator of θ defined in this way. The estimator ˆ θ is
called a maximum likelihood estimator of θ. After X = x is observed, the value δ(x)
is called a maximum likelihood estimate of θ.
The expressions maximum likelihood estimator and maximum likelihood estimate are
abbreviated M.L.E. One must rely on context to determine whether the abbreviation
refers to an estimator or to an estimate. Note that the M.L.E. is required to be an
element of the parameter space  , unlike general estimators/estimates for which no
such requirement exists.
7.5 Maximum Likelihood Estimators 419
Examples of Maximum Likelihood Estimators
Example
7.5.2
Lifetimes of Electronic Components. In Example 7.3.11, the observed data are X1 = 3,
X2 = 1.5, and X3 = 2.1. The random variables had been modeled as a random sample
of size 3 from the exponential distribution with parameter θ. The likelihood function
is, for θ >0,
f3(x|θ) = θ3 exp (−6.6θ) ,
where x = (2, 1.5, 2.1). The value of θ that maximizes the likelihood function f3(x|θ)
will be the same as the value of θ that maximizes log f3(x|θ), since log is an increasing
function.Therefore, it will be convenient to determine the M.L.E. by finding the value
of θ that maximizes
L(θ) = log f3(x|θ) = 3 log(θ) − 6.6θ.
Taking the derivative dL(θ)/dθ, setting the derivative to 0, and solving for θ yields
θ = 3/6.6 = 0.455. The second derivative is negative at this value of θ, so it provides
a maximum. The maximum likelihood estimate is then 0.455.  
It should be noted that in some problems, for certain observed vectors x, the
maximum value of fn(x|θ) may not actually be attained for any point θ ∈  . In such
a case, an M.L.E. of θ does not exist. For certain other observed vectors x, the
maximum value of fn(x|θ) may actually be attained at more than one point in the
space  . In such a case, the M.L.E. is not uniquely defined, and any one of these
points can be chosen as the value of the estimator ˆ θ. In many practical problems,
however, the M.L.E. exists and is uniquely defined.
We shall now illustrate the method of maximum likelihood and these various
possibilities by considering several examples. In each example, we shall attempt to
determine an M.L.E.
Example
7.5.3
Test for a Disease. Suppose that you are walking down the street and notice that the
Department of Public Health is giving a free medical test for a certain disease. The
test is 90 percent reliable in the following sense: If a person has the disease, there is a
probability of 0.9 that the test will give a positive response; whereas, if a person does
not have the disease, there is a probability of only 0.1 that the test will give a positive
response. This same test was considered in Example 2.3.1. We shall let X stand for
the result of the test, where X = 1 means that the test is positive and X = 0 means
that the test is negative. Let the parameter space be   = {0.1, 0.9}, where θ = 0.1
means that the person tested does not have the disease, and θ = 0.9 means that the
person has the disease. This parameter space was chosen so that, given θ, X has the
Bernoulli distribution with parameter θ. The likelihood function is
f (x|θ) = θx(1− θ)1−x.
If x = 0 is observed, then
f (0|θ) =
 
0.9 ifθ = 0.1,
0.1 ifθ = 0.9.
Clearly, θ = 0.1 maximizes the likelihood when x = 0 is observed. If x = 1 is observed,
then
f (1|θ) =
 
0.1 ifθ = 0.1,
0.9 ifθ = 0.9.
420 Chapter 7 Estimation
Clearly, θ = 0.9 maximizes the likelihood when x = 1 is observed. Hence, we have
that the M.L.E. is
ˆ θ =
 
0.1 ifX = 0,
0.9 ifX = 1.  
Example
7.5.4
Sampling from a Bernoulli Distribution. Suppose that the random variablesX1, . . . ,Xn
form a random sample from the Bernoulli distribution with parameter θ, which is
unknown (0 ≤ θ ≤ 1). For all observed values x1, . . . , xn, where each xi is either 0 or
1, the likelihood function is
fn(x|θ) =
!n
i=1
θxi(1− θ)1−xi . (7.5.1)
Instead of maximizing the likelihood function fn(x|θ) directly, it is again easier to
maximize log fn(x|θ):
L(θ) = log fn(x|θ) =
 n
i=1
[xi log θ + (1− xi) log(1− θ)]
=
 
 n
i=1
xi
 
log θ +
 
n −
 n
i=1
xi
 
log(1− θ).
Now calculate the derivative dL(θ)/dθ, set this derivative equal to 0, and solve
the resulting equation for θ. If
 n
i=1 xi
 ∈ {0, n}, we find that the derivative is 0 at
θ = xn, and it can be verified (for example, by examining the second derivative)
that this value does indeed maximize L(θ) and the likelihood function defined by
Eq. (7.5.1). If
 n
i=1 xi
= 0, then L(θ) is a decreasing function of θ for all θ, and hence
L achieves its maximum at θ = 0. Similarly, if
 n
i=1 xi
= n, L is an increasing function,
and it achieves its maximum at θ = 1. In these last two cases, note that the maximum
of the likelihood occurs at θ = xn. It follows, therefore, that the M.L.E. of θ is ˆ θ = Xn.
 
It follows from Example 7.5.4 that ifX1, . . . , Xn are regarded as n Bernoulli trials
and if the parameter space is   = [0, 1], then the M.L.E. of the unknown probability
of success on any given trial is simply the proportion of successes observed in the
n trials. In Example 7.5.3, we have n = 1 Bernoulli trial, but the parameter space
is   = {0.1, 0.9} rather than [0, 1], and the M.L.E. differs from the proportion of
successes.
Example
7.5.5
Sampling from a Normal Distribution with Unknown Mean. Suppose that X1, . . . , Xn
form a random sample from a normal distribution for which the mean μ is unknown
and the variance σ2 is known. For all observed values x1, . . . , xn, the likelihood
function fn(x|μ) will be
fn(x|μ) = 1
(2πσ2)n/2 exp
 
− 1
2σ2
 n
i=1
(xi
− μ)2
 
. (7.5.2)
It can be seen from Eq. (7.5.2) that fn(x|μ) will be maximized by the value of μ that
minimizes
Q(μ) =
 n
i=1
(xi
− μ)2 =
 n
i=1
x2
i
− 2μ
 n
i=1
xi
+ nμ2.
7.5 Maximum Likelihood Estimators 421
We see that Q is a quadratic in μ with positive coefficient on μ2. It follows that
Q will be minimized where its derivative is 0. If we now calculate the derivative
dQ(μ)/dμ, set this derivative equal to 0, and solve the resulting equation for μ, we
find that μ = xn. It follows, therefore, that the M.L.E. of μ is ˆμ = Xn.  
It can be seen in Example 7.5.5 that the estimator ˆμ is not affected by the value
of the variance σ2, which we assumed was known. The M.L.E. of the unknown mean
μ is simply the sample mean Xn, regardless of the value of σ2.We shall see this again
in the next example, in which both μ and σ2 must be estimated.
Example
7.5.6
Sampling from a Normal Distribution with Unknown Mean and Variance. Suppose again
that X1, . . . ,Xn form a random sample from a normal distribution, but suppose
now that both the mean μ and the variance σ2 are unknown. The parameter is then
θ = (μ, σ2). For all observed values x1, . . . , xn, the likelihood function fn(x|μ, σ2)
will again be given by the right side of Eq. (7.5.2). This function must now be
maximized over all possible values of μ and σ2, where −∞<μ<∞ and σ2 > 0.
Instead of maximizing the likelihood function fn(x|μ, σ2) directly, it is again easier
to maximize log fn(x|μ, σ2). We have
L(θ) = log fn(x|μ, σ2)
=−n
2
log(2π) − n
2
log σ2 − 1
2σ2
 n
i=1
(xi
− μ)2. (7.5.3)
We shall find the value of θ = (μ, σ2) for which L(θ) is maximum in three
stages. First, for each fixed σ2, we shall find the value μˆ (σ2) that maximizes the right
side of (7.5.3). Second, we shall find the value 2σ2 of σ2 that maximizes L(θ
 
) when
θ
  = ( ˆ μ(σ2), σ2). Finally, the M.L.E. of θ will be the random vector whose observed
value is (μˆ (2σ2), 2σ2). The first stage has already been solved in Example 7.5.5. There,
we obtained μˆ (σ2) = xn. For the second stage, we set θ
  = (xn, σ2) and maximize
L(θ
 
)=−n
2
log(2π) − n
2
log σ2 − 1
2σ2
 n
i=1
(xi
− xn)2. (7.5.4)
This can be maximized by setting its derivative with respect to σ2 equal to 0 and
solving for σ2. The derivative is
d
dσ2
L(θ
 
)=−n
2
1
σ2
+ 1
2(σ 2)2
 n
i=1
(xi
− xn)2.
Setting this to 0 yields
σ2 = 1
n
 n
i=1
(xi
− xn)2. (7.5.5)
The second derivative of (7.5.4) is negative at the value of σ2 in (7.5.5), so we have
found the maximum. Therefore, the M.L.E. of θ = (μ, σ2) is
ˆ θ = (μˆ , 2σ2) =
 
Xn,
1
n
 n
i=1
(Xi
− Xn)2
 
. (7.5.6)
Notice that the first coordinate of the M.L.E. in Eq. (7.5.6) is called the sample
mean of the data. Likewise, we call the second coordinate of this M.L.E. the sample
variance. It is not difficult to see that the observed value of the sample variance is
422 Chapter 7 Estimation
the variance of a distribution that assigns probability 1/n to each of the n observed
values x1, . . . , xn in the sample. (See Exercise 1.)  
Example
7.5.7
Sampling from aUniformDistribution. Suppose thatX1, . . . , Xn form a random sample
from the uniform distribution on the interval [0, θ], where the value of the parameter
θ is unknown (θ > 0). The p.d.f. f (x|θ) of each observation has the following form:
f (x|θ) =
  1
θ for 0 ≤ x ≤ θ,
0 otherwise.
(7.5.7)
Therefore, the joint p.d.f. fn(x|θ) of X1, . . . , Xn has the form
fn(x|θ) =
  1
θn for 0 ≤ xi
≤ θ (i = 1, . . . , n),
0 otherwise.
(7.5.8)
It can be seen from Eq. (7.5.8) that the M.L.E. of θ must be a value of θ for
which θ ≥ xi for i = 1, . . . , n and that maximizes 1/θn among all such values. Since
1/θn is a decreasing function of θ, the estimate will be the smallest value of θ such
that θ ≥ xi for i = 1, . . . , n. Since this value is θ = max{x1, . . . , xn
}, the M.L.E. of θ
is ˆ θ = max{X1, . . . , Xn
}.  
Limitations of Maximum Likelihood Estimation
Despite its intuitive appeal, the method of maximum likelihood is not necessarily
appropriate in all problems. For instance, in Example 7.5.7, the M.L.E. ˆ θ does not
seem to be a suitable estimator of θ. Since max{X1, . . . , Xn
} < θ with probability 1, it
follows that ˆ θ surely underestimates the value of θ. Indeed, if any prior distribution
is assigned to θ, then the Bayes estimator of θ will surely be greater than ˆ θ. The
actual amount by which the Bayes estimator exceeds ˆ θ will, of course, depend on the
particular prior distribution that is used and on the observed values of X1, . . . , Xn.
Example 7.5.7 also raises another difficulty with maximum likelihood, as we illustrate
in Example 7.5.8.
Example
7.5.8
Nonexistence of an M.L.E. Suppose again thatX1, . . . , Xn form a random sample from
the uniform distribution on the interval [0, θ]. However, suppose now that instead of
writing the p.d.f. f (x|θ) of the uniform distribution in the form given in Eq. (7.5.7),
we write it in the following form:
f (x|θ) =
  1
θ for 0 < x < θ,
0 otherwise.
(7.5.9)
The only difference between Eq. (7.5.7) and Eq. (7.5.9) is that the value of
the p.d.f. at each of the two endpoints 0 and θ has been changed by replacing the
weak inequalities in Eq. (7.5.7) with strict inequalities in Eq. (7.5.9). Therefore,
either equation could be used as the p.d.f. of the uniform distribution. However,
if Eq. (7.5.9) is used as the p.d.f, then an M.L.E. of θ will be a value of θ for which
θ >xi for i = 1, . . . , n and which maximizes 1/θn among all such values. It should be
noted that the possible values of θ no longer include the value θ = max{x1, . . . , xn
},
because θ must be strictly greater than each observed value xi (i = 1, . . . , n). Because
θ can be chosen arbitrarily close to the value max{x1, . . . , xn
} but cannot be chosen
equal to this value, it follows that the M.L.E. of θ does not exist.  
In all of our previous discussions about p.d.f.’s, we emphasized the fact that it is
irrelevant whether the p.d.f. of the uniform distribution is chosen to be equal to 1/θ
7.5 Maximum Likelihood Estimators 423
over the open interval 0 <x < θ or over the closed interval 0 ≤ x ≤ θ. Now, however,
we see that the existence of an M.L.E. depends on this irrelevant and unimportant
choice. This difficulty is easily avoided in Example 7.5.8 by using the p.d.f. given by
Eq. (7.5.7) rather than that given by Eq. (7.5.9). In many other problems as well, a
difficulty of this type can be avoided simply by choosing one particular appropriate
version of the p.d.f. to represent the given distribution. However, as we shall see in
Example 7.5.10, the difficulty cannot always be avoided.
Example
7.5.9
Non-uniqueness of an M.L.E. Suppose that X1, . . . , Xn form a random sample from
the uniform distribution on the interval [θ, θ + 1], where the value of the parameter
θ is unknown (−∞< θ <∞). In this example, the joint p.d.f. fn(x|θ) has the form
fn(x|θ) =
 
1 for θ ≤ xi
≤ θ + 1, (i = 1, . . . , n),
0 otherwise.
(7.5.10)
The condition that θ ≤ xi for i = 1, . . . , n is equivalent to the condition that θ ≤
min{x1, . . . , xn
}. Similarly, the condition that xi
≤ θ + 1 for i = 1, . . . , n is equivalent
to the condition that θ ≥ max{x1, . . . , xn
} − 1. Therefore, instead of writing fn(x|θ)
in the form given in Eq. (7.5.10), we can use the following form:
fn(x|θ) =
 
1 for max{x1, . . . , xn
} − 1≤ θ ≤ min{x1, . . . , xn
},
0 otherwise.
(7.5.11)
Thus, it is possible to select as an M.L.E. any value of θ in the interval
max{x1, . . . , xn
} − 1≤ θ ≤ min{x1, . . . , xn
}. (7.5.12)
In this example, the M.L.E. is not uniquely specified. In fact, the method of
maximum likelihood provides very little help in choosing an estimate of θ. The
likelihood of every value of θ outside the interval (7.5.12) is actually 0. Therefore,
no value θ outside this interval would ever be estimated, and all values inside the
interval are M.L.E.’s.  
Example
7.5.10
Sampling from a Mixture of Two Distributions. Consider a random variable X that can
come with equal probability either from the normal distribution with mean 0 and
variance 1 or from another normal distribution with mean μ and variance σ2, where
both μ and σ2 are unknown. Under these conditions, the p.d.f. f (x|μ, σ2) of X will
be the average of the p.d.f.’s of the two different normal distributions. Thus,
f (x|μ, σ2) = 1
2
 
1
(2π)1/2 exp
 
−x2
2
 
+ 1
(2π)1/2σ
exp
 
−(x − μ)2
2σ2
 0
. (7.5.13)
Suppose now that X1, . . . , Xn form a random sample from the distribution for
which the p.d.f. is given by Eq. (7.5.13). As usual, the likelihood function fn(x|μ, σ2)
has the form
fn(x|μ, σ2) =
!n
i=1
f (xi
|μ, σ2). (7.5.14)
To find the M.L.E. of θ = (μ, σ2), we must find values of μ and σ2 for which
fn(x|μ, σ2) is maximized.
Let xk denote any one of the observed values x1, . . . , xn. If we let μ = xk and let
σ2→0, then the factor f (xk
|μ, σ2) on the right side of Eq. (7.5.14) will grow large
without bound, while each factor f (xi
|μ, σ2) for xi
 = xk will approach the value
424 Chapter 7 Estimation
1
2(2π)1/2 exp
 
−
x2
i
2
 
.
Hence, when μ = xk and σ2→0, we find that fn(x|μ, σ2)→∞.
The value 0 is not a permissible estimate of σ2, because we know in advance that
σ2 > 0. Since the likelihood function can be made arbitrarily large by choosingμ = xk
and choosing σ2 arbitrarily close to 0, it follows that the M.L.E. does not exist.
If we try to correct this difficulty by allowing the value 0 to be a permissible
estimate of σ2, then we find that there are n different M.L.E.’s of μ and σ2; namely,
ˆ θk
= (μˆ , 2σ2) = (Xk, 0) for k = 1, . . . , n.
None of these estimators seems appropriate. Consider again the description, given
at the beginning of this example, of the two normal distributions from which each
observation might come. Suppose, for example, that n = 1000, and we use the estimator
ˆ θ3 = (X3, 0). Then, we would be estimating the value of the unknown variance
to be 0; also, in effect, we would be behaving as if exactly one of the Xi ’s (namely,
X3) comes from the given unknown normal distribution, whereas all the other 999
observation values come from the normal distribution with mean 0 and variance 1.
In fact, however, since each observation was equally likely to come from either of the
two distributions, it is much more probable that hundreds of observations, rather than
just one, come from the unknown normal distribution. In this example, the method of
maximum likelihood is obviously unsatisfactory.ABayesian solution to this problem
is outlined in Exercise 10 in Sec. 12.5.  
Finally, we shall mention one point concerning the interpretation of the M.L.E.
The M.L.E. is the value of θ that maximizes the conditional p.f. or p.d.f. of the data X
given θ. Therefore, the maximum likelihood estimate is the value of θ that assigned
the highest probability to seeing the observed data. It is not necessarily the value of
the parameter that appears to be most likely given the data. To say how likely are
different values of the parameter, one would need a probability distribution for the
parameter. Of course, the posterior distribution of the parameter (Sec. 7.2) would
serve this purpose, but no posterior distribution is involved in the calculation of the
M.L.E. Hence, it is not legitimate to interpret the M.L.E. as the most likely value of
the parameter after having seen the data.
For example, consider a situation covered by Example 7.5.4. Suppose that we
are going to flip a coin a few times, and we are concerned with whether or not it
has a slight bias toward heads or toward tails. Let Xi
= 1 if the ith flip is heads and
Xi
= 0 if not. If we obtain four heads and one tail in the first five flips, the observed
value of the M.L.E. will be 0.8. But it would be difficult to imagine a situation in
which we would feel that the most likely value of θ, the probability of heads, is as
large as 0.8 based on just five tosses of what appeared a priori to be a typical coin.
Treating the M.L.E. as if it were the most likely value of the parameter is very much
the same as ignoring the prior information about the rare disease in the medical test
of Examples 2.3.1 and 2.3.3. If the test is positive in these examples, we found (in
Example 7.5.3) that the M.L.E. takes the value ˆ θ = 0.9, which corresponds to having
the disease. However, if the prior probability that you have the disease is as small
as in Example 2.3.1, the posterior probability that you have the disease (θ = 0.9)
is still small even after the positive test result. The test is not accurate enough to
completely overcome the prior information. So too with our coin tossing; five tosses
are not enough information to overcome prior beliefs about the coin being typical.
Only when the data contain much more information than is available a priori would
7.5 Maximum Likelihood Estimators 425
it be approximately correct to think of the M.L.E. as the value that we believe the
parameter is most likely to be near. This could happen either when the M.L.E. is
based on a lot of data or when there is very little prior information.
Summary
The maximum likelihood estimate of a parameter θ is that value of θ that provides
the largest value of the likelihood function fn(x|θ) for fixed data x. If δ(x) denotes the
maximum likelihood estimate, then ˆ θ = δ(X) is the maximum likelihood estimator
(M.L.E.). We have computed the M.L.E. when the data comprise a random sample
from a Bernoulli distribution, a normal distribution with known variance, a normal
distribution with both parameters unknown, or the uniform distribution on the
interval [0, θ] or on the interval [θ, θ + 1].
Exercises
1. Let x1, . . . , xn be distinct numbers. Let Y be a discrete
random variable with the following p.f.:
f (y) =
 
1
n if y ∈ {x1, . . . , xn
},
0 otherwise.
Prove that Var(Y ) is given by Eq. (7.5.5).
2. It is not known what proportion p of the purchases of a
certain brand of breakfast cereal are made by women and
what proportion are made by men. In a random sample of
70 purchases of this cereal, it was found that 58 were made
bywomenand 12 were made by men. Find the M.L.E. of p.
3. Consider again the conditions in Exercise 2, but suppose
also that it is known that 1
2
≤ p ≤ 2
3 . If the observations
in the random sample of 70 purchases are as given
in Exercise 2, what is the M.L.E. of p?
4. Suppose that X1, . . . , Xn form a random sample from
the Bernoulli distribution with parameter θ, which is unknown,
but it is known that θ lies in the open interval
0 < θ <1. Show that the M.L.E. of θ does not exist if every
observed value is 0 or if every observed value is 1.
5. Suppose that X1, . . . , Xn form a random sample from
a Poisson distribution for which the mean θ is unknown,
(θ > 0).
a. Determine the M.L.E. of θ, assuming that at least
one of the observed values is different from 0.
b. Show that the M.L.E. of θ does not exist if every
observed value is 0.
6. Suppose that X1, . . . , Xn form a random sample from
a normal distribution for which the mean μ is known, but
the variance σ2 is unknown. Find the M.L.E. of σ2.
7. Suppose that X1, . . . , Xn form a random sample from
an exponential distribution for which the value of the
parameter β is unknown (β > 0). Find the M.L.E. of β.
8. Suppose that X1, . . . , Xn form a random sample from
a distribution for which the p.d.f. f (x|θ) is as follows:
f (x|θ) =
 
eθ−x for x >θ,
0 for x ≤ θ.
Also, suppose that the value of θ is unknown (−∞< θ <
∞).
a. Show that the M.L.E. of θ does not exist.
b. Determine another version of the p.d.f. of this same
distribution for which the M.L.E. of θ will exist, and
find this estimator.
9. Suppose thatX1, . . . , Xn form a random sample from a
distribution for which the p.d.f. f (x|θ) is as
follows:
f (x|θ) =
 
θxθ−1 for 0 < x <1,
0 otherwise.
Also, suppose that the value of θ is unknown (θ > 0). Find
the M.L.E. of θ.
10. Suppose that X1, . . . , Xn form a random sample from
a distribution for which the p.d.f. f (x|θ) is as follows:
f (x|θ) = 1
2
e
−|x−θ| for −∞< x <∞.
Also, suppose that the value of θ is unknown (−∞ <
θ <∞). Find the M.L.E. of θ. Hint: Compare this to the
problem of minimizing M.A.E as in Theorem 4.5.3.
426 Chapter 7 Estimation
11. Suppose that X1, . . . , Xn form a random sample from
the uniform distribution on the interval [θ1, θ2], where
both θ1 and θ2 are unknown (−∞< θ1< θ2 <∞). Find the
M.L.E.’s of θ1 and θ2.
12. Suppose that a certain large population contains k
different types of individuals (k ≥ 2), and let θi denote
the proportion of individuals of type i, for i = 1, . . . , k.
Here, 0 ≤ θi
≤ 1 and θ1 + . . . + θk
= 1. Suppose also that
in a random sample of n individuals from this population,
exactly ni individuals are of type i, where n1 + . . . + nk
=
n. Find the M.L.E.’s of θ1, . . . , θk.
13. Suppose that the two-dimensional vectors (X1, Y1),
(X2, Y2), . . . , (Xn, Yn) form a random sample from a bivariate
normal distribution for which the means of X and
Y are unknown but the variances of X and Y and the correlation
between X and Y are known. Find the M.L.E.’s of
the means.
7.6 Properties of Maximum Likelihood Estimators
In this section, we explore several properties of M.L.E.’s, including:
. The relationship between the M.L.E. of a parameter and the M.L.E. of a
function of that parameter
. The need for computational algorithms
. The behavior of the M.L.E. as the sample size increases
. The lack of dependence of the M.L.E. on the sampling plan
We also introduce a popular alternative method of estimation (method of moments)
that sometimes agrees with maximum likelihood, but can sometimes be
computationally simpler.
Invariance
Example
7.6.1
Lifetimes of ElectronicComponents. In Example 7.1.1, the parameter θ was interpreted
as the failure rate of electronic components. In Example 7.4.8, we found a Bayes
estimate of ψ = 1/θ, the average lifetime. Is there a corresponding method for
computing the M.L.E. of ψ?  
Suppose that X1, . . . , Xn form a random sample from a distribution for which
either the p.f. or the p.d.f. is f (x|θ), where the value of the parameter θ is unknown.
The parameter may be one-dimensional or a vector of parameters. Let ˆ θ denote the
M.L.E. of θ. Thus, for all observed values x1, . . . , xn, the likelihood function fn(x|θ)
is maximized when θ = ˆ θ.
Suppose now that we change the parameter in the distribution as follows: Instead
of expressing the p.f. or the p.d.f. f (x|θ) in terms of the parameter θ, we shall express
it in terms of a new parameter ψ = g(θ), where g is a one-to-one function of θ. Is
there a relationship between the M.L.E. of θ and the M.L.E. of ψ?
Theorem
7.6.1
Invariance Property of M.L.E.’s. If ˆ θ is the maximum likelihood estimator of θ and if g
is a one-to-one function, then g( ˆ θ) is the maximum likelihood estimator of g(θ).
Proof The new parameter space is  , the image of   under the function g. We
shall let θ = h(ψ) denote the inverse function. Then, expressed in terms of the new
parameter ψ, the p.f. or p.d.f. of each observed value will be f [x|h(ψ)], and the
likelihood function will be fn[x|h(ψ)].
The M.L.E. ˆψ of ψ will be equal to the value of ψ for which fn[x|h(ψ)]
is maximized. Since fn(x|θ) is maximized when θ = ˆ θ, it follows that fn[x|h(ψ)] is
7.6 Properties of Maximum Likelihood Estimators 427
maximized when h(ψ) = ˆ θ. Hence, the M.L.E. ˆψ must satisfy the relation h( ˆ ψ) = ˆ θ
or, equivalently, ˆψ = g( ˆ θ).
Example
7.6.2
Lifetimes of Electronic Components. According to Theorem 7.6.1, the M.L.E. of ψ is
one over the M.L.E. of θ. In Example 7.5.2, we computed the observed value of
ˆ θ = 0.455. The observed value of ˆψ would then be 1/0.455= 2.2. This is a bit smaller
than the Bayes estimate using squared error loss of 2.867 found in Example 7.4.8.
 
The invariance property can be extended to functions that are not one-to-one.
For example, suppose that we wish to estimate the mean μ of a normal distribution
when both the mean and the variance are unknown. Then μ is not a one-to-one
function of the parameter θ = (μ, σ2). In this case, the function we wish to estimate
is g(θ) = μ.There is a way to define the M.L.E. of a function of θ that is not necessarily
one-to-one. One popular way is the following.
Definition
7.6.1
M.L.E. of a Function. Let g(θ) be an arbitrary function of the parameter, and let G be
the image of   under the function g. For each t ∈ G, define Gt
= {θ : g(θ) = t} and
define
L
∗
(t) = max
θ∈Gt
log fn(x|θ).
Finally, define the M.L.E. of g(θ) to be ˆt where
L
∗
(ˆt) = max
t∈G
L
∗
(t ). (7.6.1)
The following result shows how to find the M.L.E. of g(θ) based on Definition 7.6.1.
Theorem
7.6.2
Let ˆ θ be an M.L.E. of θ, and let g(θ) be a function of θ. Then an M.L.E. of g(θ) is
g( ˆ θ).
Proof We shall prove that ˆt = g( ˆ θ) satisfies (7.6.1). Since L
∗
(t) is the maximum of
log fn(x|θ) over θ in a subset of  , and since log fn(x| ˆ θ) is the maximum over all θ,
we know that L
∗
(t) ≤ log fn(x| ˆ θ) for all t ∈ G. Let ˆt = g( ˆ θ). We are done if we can
show that L
∗
(ˆt) = log fn(x| ˆ θ). Note that ˆ θ ∈ Gˆt . Since ˆ θ maximizes fn(x|θ) over all θ,
it also maximizes fn(x|θ) over θ ∈ Gˆt . Hence, L
∗
(ˆt) = log fn(x| ˆ θ) and ˆt = g( ˆ θ) is an
M.L.E. of g(θ).
Example
7.6.3
Estimating the Standard Deviation and the Second Moment. Suppose that X1, . . . , Xn
form a random sample from a normal distribution for which both the mean μ and the
variance σ2 are unknown. We shall determine the M.L.E. of the standard deviation
σ and the M.L.E. of the second moment of the normal distribution E(X2). It was
found in Example 7.5.6 that the M.L.E. of θ = (μ, σ2) is θˆ = (μˆ , 2σ2). From the
invariance property, we can conclude that the M.L.E. ˆσ of the standard deviation
is simply the square root of the sample variance. In symbols, ˆσ = (2σ2)1/2. Also, since
E(X2) = σ2 + μ2, the M.L.E. of E(X2) will be 2σ2 + ˆμ2.  
Consistency
Consider an estimation problem in which a random sample is to be taken from a
distribution involving a parameter θ. Suppose that for every sufficiently large sample
428 Chapter 7 Estimation
size n, that is, for every value of n greater than some given minimum number, there
exists a unique M.L.E. of θ. Then, under certain conditions, which are typically
satisfied in practical problems, the sequence of M.L.E.’s is a consistent sequence of
estimators of θ. In other words, in such problems the sequence of M.L.E.’s converges
in probability to the unknown value of θ as n→∞.
We have remarked in Sec. 7.4 that under certain general conditions the sequence
of Bayes estimators of a parameter θ is also a consistent sequence of estimators.
Therefore, for a given prior distribution and a sufficiently large sample size n, the
Bayes estimator and the M.L.E. of θ will typically be very close to each other, and
both will be very close to the unknown value of θ.
We shall not present any formal details of the conditions that are needed to
prove this result. (Details can be found in chapter 7 of Schervish, 1995.) We shall,
however, illustrate the result by considering again a random sampleX1, . . . , Xn from
the Bernoulli distribution with parameter θ, which is unknown (0 ≤ θ ≤ 1). It was
shown in Sec. 7.4 that if the given prior distribution of θ is a beta distribution, then
the difference between the Bayes estimator of θ and the sample mean Xn converges
to 0 as n→∞. Furthermore, it was shown in Example 7.5.4 that the M.L.E. of θ is
Xn. Thus, as n→∞, the difference between the Bayes estimator and the M.L.E. will
converge to 0. Finally, the law of large numbers (Theorem 6.2.4) says that the sample
mean Xn converges in probability to θ as n→∞. Therefore, both the sequence of
Bayes estimators and the sequence of M.L.E.’s are consistent sequences.
Numerical Computation
In many problems there exists a unique M.L.E. ˆ θ of a given parameter θ, but this
M.L.E. cannot be expressed in closed form as a function of the observations in the
sample. In such a problem, for a given set of observed values, it is necessary to
determine the value of ˆ θ by numerical computation.We shall illustrate this situation
by two examples.
Example
7.6.4
Sampling from a Gamma Distribution. Suppose thatX1, . . . , Xn form a random sample
from the gamma distribution for which the p.d.f. is as follows:
f (x|α) = 1
 (α)
xα−1e
−x for x >0. (7.6.2)
Suppose also that the value of α is unknown (α > 0) and is to be estimated.
The likelihood function is
fn(x|α) = 1
 n(α)
 
!n
i=1
xi
 α−1
exp
 
−
 n
i=1
xi
 
. (7.6.3)
The M.L.E. of α will be the value of α that satisfies the equation
∂ log fn(x|α)
∂α
= 0. (7.6.4)
When we apply Eq. (7.6.4) in this example, we obtain the following equation:
 
 
(α)
 (α)
= 1
n
 n
i=1
log xi . (7.6.5)
Tables of the function  
 
(α)/ (α), which is called the digamma function, are
included in various published collections of mathematical tables. The digamma function
is also available in several mathematical software packages. For all given values
7.6 Properties of Maximum Likelihood Estimators 429
of x1, . . . , xn, the unique value of α that satisfies Eq. (7.6.5) must be determined either
by referring to these tables or by carrying out a numerical analysis of the digamma
function. This value will be the M.L.E. of α.  
Example
7.6.5
Sampling from a Cauchy Distribution. Suppose thatX1, . . . , Xn form a random sample
from a Cauchy distribution centered at an unknown pointθ (−∞<θ <∞), for which
the p.d.f. is as follows:
f (x|θ) = 1
π
3
1+ (x − θ)2
4 for −∞< x <∞. (7.6.6)
Suppose also that the value of θ is to be estimated.
The likelihood function is
fn(x|θ) = 1
πn
"n
i=1
3
1+ (xi
− θ)2
4 . (7.6.7)
Therefore, the M.L.E. of θ will be the value that minimizes
!n
i=1
#
1+ (xi
− θ)2
$
. (7.6.8)
For most values of x1, . . . , xn, the value of θ that minimizes the expression (7.6.8)
must be determined by a numerical computation.  
An alternative to exact solution of Eq. (7.6.4) is to start with a heuristic estimator
of α and then apply Newton’s method.
Definition
7.6.2
Newton’s Method. Let f (θ) be a real-valued function of a real variable, and suppose
that we wish to solve the equation f (θ) = 0. Let θ0 be an initial guess at the solution.
Newton’s method replaces the initial guess with the updated guess
θ1 = θ0 − f (θ0)
f  (θ0)
.
The rationale behind Newton’s method is illustrated in Fig. 7.7. The function
f (θ) is the solid curve. Newton’s method approximates the curve by a line tangent to
the curve, that is, the dashed line passing through the point (θ0, f (θ0)), indicated by
the circle. The approximating line crosses the horizontal axis at the revised guess θ1.
Typically, one replaces the intial guess with the revised guess and iterates Newton’s
method until the results stabilize.
Figure 7.7 Newton’s
method to approximate the
solution to f (θ) = 0. The
initial guess is θ0, and the
revised guess is θ1.
Illustration of Newton’s Method
0.2
22.0 21.5 21.0 20.5 0
0.4
0.6
0.8
10
u
u1
u0
f(u)
430 Chapter 7 Estimation
Example
7.6.6
Sampling from a Gamma Distribution. In Example 7.6.4, suppose that we observe
n = 20 gamma random variables X1, . . . ,X20 with parameters α and 1. Suppose that
the observed values are such that 1
20
 20
i=1 log(xi) = 1.220 and 1
20
 20
i=1 xi
= 3.679.We
wish to use Newton’s method to approximate the M.L.E. A sensible initial guess is
based on the fact that E(Xi) = α. This suggests using α0 = 3.679, the sample mean.
The function f (α) is ψ(α) − 1.220, where ψ is the digamma function. The derivative
f
 
(α) is ψ
 
(α), which is known as the trigamma function. Newton’s method updates
the intial guess α0 to
α1 = α0 − ψ(α0) − 1.220
ψ (α0)
= 3.679 − 1.1607 − 1.220
0.3120
= 3.871.
Here, we have used statistical software that computes both the digamma and
trigamma functions. After two more iterations, the approximation stabilizes at 3.876.
 
Newton’s method can fail terribly if f
 
(θ)/f (θ) gets close to 0 between θ0 and the
actual solution to f (θ) = 0. There is a multidimensional version of Newton’s method,
which we will not present here. There are also many other numerical methods for
maximizing functions. Any text on numerical optimization, such as Nocedal and
Wright (2006), will describe some of them.
Method of Moments
Example
7.6.7
Sampling from a Gamma Distribution. Suppose that X1, . . . , Xn form a random sample
from the gamma distribution with parameters α and β. In Example 7.6.4, we
explained how one could find the M.L.E. of α if β were known. The method involved
the digamma function, which is unfamiliar to many people. A Bayes estimate would
also be difficult to find in this example because we would have to integrate a function
that includes a factor of 1/ (α)n. Is there no other way to estimate the vector
parameter θ in this example?  
The method of moments is an intuitive method for estimating parameters when
other, more attractive, methods may be too difficult. It can also be used to obtain an
initial guess for applying Newton’s method.
Definition
7.6.3
Method of Moments. Assume that X1, . . . ,Xn form a random sample from a distribution
that is indexed by a k-dimensional parameter θ and that has at least k
finite moments. For j = 1, . . . , k, let μj (θ) = E(X
j
1
|θ). Suppose that the function
μ(θ) = (μ1(θ), . . . , μk(θ)) is a one-to-one function of θ. Let M(μ1, . . . , μk) denote
the inverse function, that is, for all θ,
θ = M(μ1(θ), . . . , μk(θ)).
Define the sample moments by mj
= 1
n
 n
i=1 X
j
i for j = 1, . . . , k. The method of
moments estimator of θ is M(m1, . . . , mj ).
The usual way of implementing the method of moments is to set up the k equations
mj
= μj (θ) and then solve for θ.
Example
7.6.8
Sampling from a Gamma Distribution. In Example 7.6.4, we considered a sample of
size n from the gamma distribution with parameters α and 1. The mean of each
7.6 Properties of Maximum Likelihood Estimators 431
such random variable is μ1(α) = α. The method of moments estimator is then ˆα =
m1, the sample mean. This was the initial guess used to start Newton’s method in
Example 7.6.6.  
Example
7.6.9
Sampling from a Gamma Distribution with Both Parameters Unknown. Theorem 5.7.5
tells us that the first two moments of the gamma distribution with parameters α and
β are
μ1(θ) = α
β
,
μ2(θ) = α(α + 1)
β2
.
The method of moments says to replace the right-hand sides of these equations by
the sample moments and then solve for α and β. In this case, we get
ˆα
=
m21
m2 − m21
,
ˆ β = m1
m2 − m21
as the method of moments estimators. Note that m2 − m21
is just the sample variance.
 
Example
7.6.10
Sampling from aUniformDistribution. Suppose thatX1, . . . , Xn form a random sample
from the uniform distribution on the interval [θ, θ + 1], as in Example 7.5.9. In that
example, we found that the M.L.E. is not unique and there is an interval of M.L.E.’s
max{x1, . . . , xn
} − 1≤ θ ≤ min{x1, . . . , xn
}. (7.6.9)
This interval contains all of the possible values of θ that are consistent with the observed
data.We shall now apply the method of moments, which will produce a single
estimator. The mean of each Xi is θ + 1/2, so the method of moments estimator is
Xn
− 1/2. Typically, one would expect the observed value of the method of moments
estimator to be a number in the interval (7.6.9). However, that is not always the case.
For example, if n = 3 and X1 = 0.2, X2 = 0.99, X3 = 0.01 are observed, then (7.6.9) is
the interval [−0.01, 0.01], while X3 = 0.4. The method of moments estimate is then
−0.1, which could not possibly be the true value of θ.  
There are several examples in which method of moments estimators are also
M.L.E.’s. Some of these are the subjects of exercises at the end of this section.
Despite occasional problems such as Example 7.6.10, the method of moments
estimators will typically be consistent in the sense of Definition 7.4.6.
Theorem
7.6.3
Suppose that X1, X2, . . . are i.i.d. with a distribution indexed by a k-dimensional parameter
vector θ. Suppose that the first k moments of that distribution exist and are
finite for all θ. Suppose also that the inverse function M in Definition 7.6.3 is continuous.
Then the sequence of method of moments estimators based on X1, . . . , Xn is
a consistent sequence of estimators of θ.
Proof The law of large numbers says that the sample moments converge in probability
to the moments μ1(θ), . . . , μk(θ). The generalization of Theorem 6.2.5 to
432 Chapter 7 Estimation
functions of k variables implies that M evaluated at the sample moments (i.e., the
method of moments estimator) converges in probability to θ.
M.L.E.’s and Bayes Estimators
Bayes estimators and M.L.E.’s depend on the data solely through the likelihood
function. They use the likelihood function in different ways, but in many problems
they will be very similar. When the function f (x|θ) satisfies certain smoothness
conditions (as a function of θ), it can be shown that the likelihood function will tend to
look more and more like a normal p.d.f. as the sample size increases. More specifically,
as n increases, the likelihood function starts to look like a constant (not depending
on θ, but possibly depending on the data) times
exp
 
− 1
2Vn(θ)/n
(θ − ˆ θ)2
 
, (7.6.10)
where ˆ θ is the M.L.E. and Vn(θ) is a sequence of random variables that typically
converges as n→∞to a limit that we shall call v∞(θ).When n is large, the function
in (7.6.10) rises quickly to its peak as θ approaches ˆ θ and then drops just as quickly as θ
moves away from ˆ θ. Under these conditions, so long as the prior p.d.f. of θ is relatively
flat compared to the very peaked likelihood function, the posterior p.d.f. will look a
lot like the likelihood multiplied by the constant needed to turn it into a p.d.f. The
posterior mean of θ will then be approximately ˆ θ. In fact, the posterior distribution of
θ will be approximately the normal distribution with mean ˆ θ and variance Vn( ˆ θ)/n. In
similar fashion, the distribution of the maximum likelihood estimator (given θ) will
be approximately the normal distribution with mean θ and variance v∞(θ)/n. The
conditions and proofs needed to make these claims precise are beyond the scope of
this text but can be found in chapter 7 of Schervish (1995).
Example
7.6.11
Sampling from an Exponential Distribution. Suppose that X1, X2, . . . are i.i.d. having
the exponential distribution with parameter θ. Let Tn
= n
i=1 Xi . Then the M.L.E. of
θ is ˆ θn
= n/Tn. (This was found in Exercise 7 in Sec. 7.5.) Because 1/ ˆ θn is an average
of i.i.d. random variables with finite variance, the central limit theorem tells us that
the distribution of 1/ ˆ θn is approximately normal. The mean and variance, in this case,
of that approximate normal distribution are, respectively, 1/θ and 1/(θ2n). The delta
method (Theorem 6.3.2) says that ˆ θ then has approximately the normal distribution
with mean θ and variance θ2/n. In the notation above, we have Vn(θ) = θ2.
Next, let the prior distribution of θ be the gamma distribution with parameters
α and β. Theorem 7.3.4 says that the posterior distribution of θ will be the gamma
distribution with parameters α + n and β + tn. We conclude by showing that this
gamma distribution is approximately a normal distribution. Assume for simplicity
that α is an integer. Then the posterior distribution of θ is the same as the distribution
of the sum of α + n i.i.d. exponential random variables with parameter β + tn. Such
a sum has approximately the normal distribution with mean (α + n)/(β + tn) and
variance (α + n)/(β + tn)2. If α and β are small, the approximate mean is then nearly
n/tn
= ˆ θ, and the approximate variance is then nearly n/t2
n
= ˆ θ2/n = Vn( ˆ θ)/n.  
Example
7.6.12
Prussian Army Deaths. In Example 7.3.14, we found the posterior distribution of θ,
the mean number of deaths per year by horsekick in Prussian army units based
on a sample of 280 observations. The posterior distribution was found to be the
gamma distribution with parameters 196 and 280. By the same argument used in
7.6 Properties of Maximum Likelihood Estimators 433
Figure 7.8 Posterior p.d.f.
together with p.d.f. of M.L.E.
and approximating normal
p.d.f. in Example 7.6.13. For
the p.d.f of the M.L.E., the
value of θ = 3/6.6 is used to
make the p.d.f.’s as similar as
possible.
0
0.5
1 2 3 4
1.0
1.5
2.0
u
Density
Posterior
M.L.E.
Normal
Example 7.6.11, this gamma distribution is approximately the distribution of the sum
of 196 i.i.d. exponential random variables with parameter 280. The distribution of
this sum is approximately the normal distribution with mean 196/280 and variance
196/2802.
Using the same data as in Example 7.3.14, wecan find the M.L.E. of θ, which is the
average of the 280 observations (according to Exercise 5 in Sec. 7.5). The distribution
of the average of 280 i.i.d. Poisson random variables with mean θ is approximately
the normal distribution with mean θ and variance θ/280 according to the central limit
theorem. We then have Vn(θ) = θ in the earlier notation. The maximum likelihood
estimate with the observed data is ˆ θ = 196/280 the mean of the posterior distribution.
The variance of the posterior distribution is also Vn( ˆ θ)/n = ˆ θ/280.  
There are two common situations in which posterior distributions and distributions
of M.L.E.’s are not such similar normal distributions as in the preceding
discussion. One is when the sample size is not very large, and the other is when the
likelihood function is not smooth.Anexample with small sample size is our electronic
components example.
Example
7.6.13
Lifetimes of Electronic Components. In Example 7.3.12, we have a sample of n = 3
exponential random variables with parameter θ. The posterior distribution found
there was the gamma distribution with parameters 4 and 8.6. The M.L.E. is ˆ θ =
3/(X1 + X2 + X3), which has the distribution of 1 over a gamma random variable
with parameters 3 and 3θ. Figure 7.8 shows the posterior p.d.f. along with the p.d.f.
of the M.L.E. assuming that θ = 3/6.6, the observed value of the M.L.E. The two
p.d.f.’s, although similar, are still different. Also, both p.d.f.’s are similar to, but still
different from, the normal p.d.f. with the same mean and variance as the posterior,
which also appears on the plot.  
An example of an unsmooth likelihood function involves the uniform distribution
on the interval [0, θ].
Example
7.6.14
Sampling from a Uniform Distribution. In Example 7.5.7, we found the M.L.E. of θ
based on a sample of size n from the uniform distribution on the interval [0, θ]. The
M.L.E. is ˆ θ = max{X1, . . . ,Xn
}. We can find the exact distribution of ˆ θ using the
result in Example 3.9.6. The p.d.f. of Y = ˆ θ is
gn(y|θ) = n[F(y|θ)]n−1f (y|θ), (7.6.11)
434 Chapter 7 Estimation
where f (.|θ) is the p.d.f. of the uniform distribution on [0, θ] and F(.|θ) is the
corresponding c.d.f. Substituting these well-known functions into Eq. (7.6.11) yields
the p.d.f. of Y = ˆ θ:
gn(y|θ) = n
 
y
θ
 n−1 1
θ
= n
yn−1
θn
,
for 0 < y < θ. This p.d.f. is not the least bit like a normal p.d.f. It is very asymmetric
and has its maximum at the largest possible value of the M.L.E. In fact, one can
compute the mean and variance of ˆ θ, respectively, as
E( ˆ θ) = n
n + 1
θ,
Var( ˆ θ) = n
(n + 1)2(n + 2)
θ2.
The variance goes down like 1/n2 instead of like 1/n in the approximately normal
examples we saw earlier.
If n is large, the posterior distribution of θ will have a p.d.f. that is approximately
the likelihood function times the constant needed to make it into a p.d.f. The likelihood
is in Eq. (7.5.8). Integrating that function over θ to obtain the needed constant
leads to the following approximate posterior p.d.f. of θ:
ξ(θ|x) ≈
⎧⎨
⎩
(n − 1) ˆ θn−1
θn
for θ > ˆ θ,
0 otherwise.
The mean and variance of this approximate posterior distribution are, respectively,
(n − 1) ˆ θ/(n − 2) and (n − 1) ˆ θ2/[(n − 2)2(n − 3)]. The posterior mean is still nearly
equal to the M.L.E. (but a little larger), and the posterior variance decreases at a
rate like 1/n2, as does the variance of the M.L.E. But the posterior distribution is not
the least bit normal, as the p.d.f. has its maximum at the smallest possible value of θ
and decreases from there.  
The EM Algorithm
There are a number of complicated situations in which it is difficult to compute the
M.L.E. Many of these situations involve forms of missing data. The term “missing
data” can refer to several different types of information. The most obvious would be
observations that we had planned or hoped to observe but were not observed. For
example, imagine that we planned to collect both heights and weights for a sample of
athletes. For reasons that might be beyond our control, it is possible that we observed
both heights and weights for most of the athletes, but only heights for one subset of
atheletes and only weights for another subset. If we model the heights and weights
as having a bivariate normal distribution, we might want to compute the M.L.E. of
the parameters of that distribution. For a complete collection of pairs, Exercise 24
in this section gives formulas for the M.L.E. It is not difficult to see how much more
complicated it would be to compute the M.L.E. in the situation described above with
missing data.
The EM algorithm is an iterative method for approximating M.L.E.’s when
missing data are making it difficult to find the M.L.E.’s in closed form. One begins
(as in most iterative procedures) at stage 0 with an initial parameter vector θ(0). To
move from stage j to stage j + 1, one first writes the full-data log-likelihood, which
is what the logarithm of the likelihood function would be if we had observed the
7.6 Properties of Maximum Likelihood Estimators 435
missing data. The values of the missing data appear in the full-data log-likelihood as
random variables rather than as observed values. The “E” step of the EM algorithm
is the following: Compute the conditional distribution of the missing data given
the observed data as if the parameter θ were equal to θ(j ), and then compute the
conditional mean of the full-data log-likelihood treating θ as constant and the missing
data as random variables. The E step gets rid of the unobserved random variables
from the full-data log-likelihood and leaves θ where it was. For the “M” step, choose
θ(j+1) to maximize the expected value of the full-data log-likelihood that you just
computed. The M step takes you to stage j + 1. Ideally, the maximization step is no
harder than it would be if the missing data had actually been observed.
Example
7.6.15
Heights and Weights. Suppose that we try to observe n = 6 pairs of heights and
weights, but we get only three complete vectors plus one lone weight and two lone
heights. We model the pairs as bivariate normal random vectors, and we want to
find the M.L.E. of the parameter vector (μ1, μ2, σ2
1, σ2
2, ρ). (This example is for
illustrative purposes. One cannot expect to get a good estimate of a five-dimensional
parameter vector with only nine observed values and no prior information.) The
data are in Table 7.1. The missing weights are X4,2 and X5,2. The missing height
is X6,1. The full-data log-likelihood is the sum of the logarithms of six expressions
of the form Eq. (5.10.2) each with one of the rows of Table 7.1 substituted for the
dummy variables (x1, x2). For example, the term corresponding to the fourth row of
Table 7.1 is
− log(2πσ1σ2) − 1
2
log(1− ρ2) − 1
2(1− ρ2)
 

68 − μ1
σ1
 2
− 2ρ


68 − μ1
σ1
 

X4,2 − μ2
σ2
 
+


X4,2 − μ2
σ2
 2
 
.
(7.6.12)
As an initial parameter vector we choose a na¨ıve estimate computed from the observed
data:
θ(0) = (μ(0)
1 , μ(0)
2 , σ
2(0)
1 , σ
2(0)
2 , ρ(0)) = (69.60, 194.75, 2.87, 14.82, 0.1764).
This consists of the M.L.E.’s based on the marginal distributions of the two coordinates,
together with the sample correlation computed from the three complete
observations.
Table 7.1 Heights and weights for Example
7.6.15. The missing values are
given random variable names.
Height Weight
72 197
70 204
73 208
68 X4,2
65 X5,2
X6,1 170
436 Chapter 7 Estimation
The E step pretends that θ = θ(0) and computes the conditional mean of the fulldata
log-likelihood given the observed data. For the fourth row of Table 7.1, the
conditional distribution of X4,2 given the observed data and θ = θ(0) can be found
from Theorem 5.10.4 to be the normal distribution with mean
194.75 + 0.1764 × (14.82)1/2


68 − 69.60
2.871/2
 
= 193.3
and variance (1 − 0.17642)14.822 = 212.8. The conditional mean of (X4,2 − μ2)2
would then be 212.8 + (193.3 − μ2)2. The conditional mean of the expression in
(7.6.12) would then be
− log(2πσ1σ2) − 1
2
log(1− ρ2) − 1
2(1− ρ2)
 

68 − μ1
σ1
 2
− 2ρ


68 − μ1
σ1
 

193.3 − μ2
σ2
 
+


193.3 − μ2
σ2
 2
+ 212.8
σ2
2
 
.
The point to notice about this last expression is that, except for the last term 212.8/σ 2
2 ,
it is exactly the contribution to the log-likelihood that we would have obtained ifX4,2
had been observed to equal 193.3, its conditional mean. Similar calculations can be
done for the other two observations with missing coordinates. Each will produce
a contribution to the log-likelihood that is the conditional variance of the missing
coordinate divided by its variance plus what the log-likelihood would have been if the
missing value had been observed to equal its conditional mean.This makes theMstep
almost identical to finding the M.L.E. for a completely observed data set. The only
difference from the formulas in Exercise 24 is the following: For each observation
that is missing X, add the conditional variance of X given Y to
 n
i=1(Xi
− Xn)2 in
both the formula for 2σ2
1 and ρˆ. Similarly, for each observation that is missing Y , add
the conditional variance of Y given X to
 n
i=1(Yi
− Y n)2 in both the formula for 2σ2
2
and ρˆ.
We now illustrate the first iteration of the EM algorithm with the data of this
example. We already have θ(0), and we can compute the log-likelihood function
from the observed data at θ(0) as −31.359. To begin the algorithm, we have already
computed the conditional mean and variance of the missing second coordinate from
the fourth row of Table 7.1. The corresponding conditional means and variances for
the fifth and sixth rows are 190.6 and 212.8 for the fifth row and 68.76 and 7.98 for the
sixth row. For the E step, we replace the missing observations by their conditional
means and add the conditional variances to the sums of squared deviations. For theM
step, we insert the values just computed into the formulas of Exercise 24 as described
above. The new vector is
θ(1) = (69.46, 193.81, 2.88, 14.83, 0.3742),
and the log-likelihood is −31.03. After 32 iterations, the estimate and log-likelihood
stop changing. The final estmate is
θ(32) = (68.86, 189.71, 3.15, 15.03, 0.8965),
with log-likelihood −29.66.  
Example
7.6.16
Mixture of Normal Distributions. A very popular use of the EM algorithm is in fitting
mixture distributions. Let X1, . . . , Xn be random variables such that each one is
7.6 Properties of Maximum Likelihood Estimators 437
sampled either from the normal distribution with mean μ1 and variance σ2 (with
probability p) or from the normal distribution with mean μ2 and variance σ2 (with
probability 1− p), where μ1<μ2. The restriction that μ1<μ2 is to make the model
identifiable in the following sense. If μ1= μ2 is allowed, then every value of p leads to
the same joint distribution of the observable data. Also, if neither mean is constrained
to be below the other, then switching the two means and changing p to 1− p will
produce the same joint distribution for the observable data. The restriction μ1<μ2
ensures that every distinct parameter vector produces a different joint distribution
for the observable data.
The data in Fig. 7.4 have the typical appearance of a distribution that is a mixture
of two normals with means not very far apart. Because we have assumed that the
variances of the two distributions are the same, we will not have the problem that
arose in Example 7.5.10.
The likelihood function from observations X1 = x1, . . . , Xn
= xn is
!n
i=1
 
p
(2π)1/2σ
exp
 
−(xi
− μ1)2
2σ2
 
+ 1− p
(2π)1/2σ
exp
 
−(xi
− μ2)2
2σ2
  
. (7.6.13)
The parameter vector is θ = (μ1, μ2, σ2, p), and maximizing the likelihood as written
is a challenge. However, we can introduce missing observations Y1, . . . , Yn where
Yi
= 1 if Xi was sampled from the distribution with mean μ1 and Yi
= 0 if Xi was
sampled from the distribution with mean μ2. The full-data log-likelihood can be
written as the sum of the logarithm of the marginal p.f. of the missing Y data plus the
logarithm of the conditional p.d.f. of the observed X data given the Y data. That is,
 n
i=1
Yi log(p) +
 
n −
 n
i=1
Yi
 
log(1− p) − n
2
log(2πσ2)
− 1
2σ2
 n
i=1
#
Yi(xi
− μ1)2 + (1− Yi)(xi
− μ2)2
$
.
(7.6.14)
At stage j with estimate θ(j ) of θ, the E step first finds the conditional distribution
of Y1, . . . , Yn given the observed data and θ = θ(j ). Since (X1, Y1), . . . , (Xn, Yn) are
independent pairs, we can find the conditional distribution separately for each pair.
The joint distribution of (Xi, Yi) is a mixed distribution with p.f./p.d.f.
f (xi, yi
|θ(j )) = pyi(1− p)1−yi
(2π)1/2σ(j )
exp


− 1
σ2(j )
#
yi(xi
− μ
(j )
1 )2 + (1− yi)(xi
− μ
(j )
2 )2
$ 
.
The marginal p.d.f. of Xi is the ith factor in (7.6.13). It is straightforward to determine
that the conditional distribution of Yi given the observed data is the Bernoulli
distribution with parameter
q
(j )
i
=
p(j ) exp


−(xi
−μ
(j )
1 )2
2σ2(j )
 
p(j ) exp


−(xi
−μ
(j )
1 )2
2σ2(j )
 
+ (1− p(j )) exp


−(xi
−μ
(j )
2 )2
2σ2(j )
 . (7.6.15)
438 Chapter 7 Estimation
Because the full-data log-likelihood is a linear function of the Yi ’s, the E step simply
replaces each Yi in (7.6.14) by q
(j )
i . The result is
 n
i=1
q
(j )
i log(p) +
 
n −
 n
i=1
q
(j )
i
 
log(1− p) − n
2
log(2πσ2)
− 1
2σ2
 n
i=1
#
q
(j )
i (xi
− μ1)2 + (1− q
(j )
i )(xi
− μ2)2
$
.
(7.6.16)
Maximizing (7.6.16) is straightforward. Since p appears in only the first two terms,
we see that p(j+1) is just the average of the q
(j )
i ’s. Also, μ
(j+1)
1 is the weighted average
of the Xi ’s with weights q
(j )
i . Similarly, μ
(j+1)
2 is the weighted average of the Xi ’s with
weights 1− q
(j )
i . Finally,
σ2(j+1) = 1
n
 n
i=1
#
q
(j )
i (xi
− μ
(j+1)
1 )2 + (1− q
(j )
i )(xi
− μ
(j+1)
2 )2
$
. (7.6.17)
We will illustrate the first E and M steps using the data in Example 7.3.10. For
the initial parameter vector θ(0), we will let μ(0)
1 be the average of the 10 lowest
observations andμ(0)
2 be the average of the 10 highest observations.We set p(0) = 1/2,
and σ2(0) is the average of the sample variance of the 10 lowest observations and the
sample variance of the 10 highest observations. This makes
θ(0) = (μ(0)
1 , μ(0)
2 , σ2(0), p(0)) = (−7.65, 7.36, 46.28, 0.5).
For each of the 20 observed values xi , we compute q(0)
i . For example, x10 =−4.0.
According to (7.6.15),
q(0)
10
=
0.5 exp
 
−(−4.0+7.65)2
2×46.28
 
0.5 exp
 
−(−4.0+7.65)2
2×46.28
 
+ 0.5 exp
 
−(−4.0−7.36)2
2×46.28
  = 0.7774.
A similar calculation for x8 = 9.0 yields q(0)
8
= 0.0489. The initial log-likelihood, calculated
as the logarithm of (7.6.13), is −75.98. The average of the 20 q(0)
i values is
p(1) = 0.4402. The weighted average of the data values using the q(0)
i ’s as weights is
μ(1)
1
=−7.736, and the weighted average using the 1− q(0)
i ’s is μ(1)
2
= 6.3068. Using
(7.6.17), we get σ2(1) = 56.5491. The log-likelihood rises to −75.19. After 25 iterations,
the results settle on θ(25) = (−21.9715, 2.6802, 48.6864, 0.1037) with a final
log-likelihood of −72.84. The histogram from Fig. 7.4 is reproduced in Fig. 7.9 together
with the p.d.f. of an observation from the fitted mixture distribution, namely,
f (x) = 0.1037
(2π × 48.6864)1/2 exp
 
−(x + 21.9715)2
2 × 48.6864
 
+ 1− 0.1037
(2π × 48.6864)1/2 exp
 
−(x − 2.6802)2
2 × 48.6864
 
.
In addition, the fitted p.d.f. based on a single normal distribution is also shown in
Fig. 7.9. The mean and variance of that single normal distribution are 0.1250 and
110.6809, respectively.  
7.6 Properties of Maximum Likelihood Estimators 439
230 220 210 10 20
2
4
6
8
10
0
Laboratory calories minus label calories
Number of foods
Figure 7.9 Histogram of data from Example 7.3.10 together
with fitted p.d.f. from Example 7.6.16 (solid curve). The p.d.f.
has been scaled up to match the fact that the histogram gives
counts rather than an estimated p.d.f. Also, the dashed curve
gives the estimated p.d.f. for a single normal distribution.
One can prove that the log-likelihood increases with each iteration of the EM
algorithm and that the algorithm converges to a local maximum of the likelihood
function. As with other numerical maximization routines, it is difficult to guarantee
convergence to a global maximum.
Sampling Plans
Suppose that an experimenter wishes to take observations from a distribution for
which the p.f. or the p.d.f. is f (x|θ) in order to gain information about the value
of the parameter θ. The experimenter could simply take a random sample of a
predetermined size from the distribution. Instead, however, he may begin by first
observing a few values at random from the distribution and noting the cost and the
time spent in taking these observations. He may then decide to observe a few more
values at random from the distribution and to study all the values thus far obtained.
At some point, the experimenter will decide to stop taking observations and will
estimate the value of θ from all the observed values that have been obtained up
to that point. He might decide to stop because either he feels that he has enough
information to be able to make a good estimate of θ or he cannot afford to spend
any more money or time on sampling.
In this experiment, the number n of observations in the sample is not fixed
beforehand. It is a random variable whose value may very well depend on the
magnitudes of the observations as they are obtained.
Suppose that an experimenter contemplates using a sampling plan in which, for
every n, the decision of whether or not to stop sampling after n observations have
been collected is a function of the n observations seen so far. Regardless of whether
the experimenter chooses such a sampling plan or decides to fix the value of n before
440 Chapter 7 Estimation
any observations are taken, it can be shown that the likelihood function based on the
observed values is proportional (as a function of θ) to
f (x1|θ) . . . f (xn
|θ).
In such a situation, the M.L.E. of θ will depend only on the likelihood function and
not on what type of sampling plan is used. In other words, the value of ˆ θ depends
only on the values x1, . . . , xn that are actually observed and does not depend on the
plan (if there was one) that was used by the experimenter to decide when to stop
sampling.
To illustrate this property, suppose that the intervals of time, in minutes, between
arrivals of successive customers at a certain service facility are i.i.d. random variables.
Suppose also that each interval has the exponential distribution with parameter θ,
and that a set of observed intervals X1, . . . , Xn form a random sample from this
distribution. It follows from Exercise 7 of Sec. 7.5 that the M.L.E. of θ will be
ˆ θ = 1/Xn. Also, since the mean μ of the exponential distribution is 1/θ, it follows
from the invariance property of M.L.E.’s that ˆμ = Xn. In other words, the M.L.E. of
the mean is the average of the observations in the sample.
Consider now the following three sampling plans:
1. An experimenter decides in advance to take exactly 20 observations, and the
average of these 20 observations turns out to be 6. Then the M.L.E. of μ is
ˆμ
= 6.
2. An experimenter decides to take observations X1, X2 . . . until she obtains a
value greater than 10. She finds thatXi < 10 for i = 1, . . . , 19 and thatX20 > 10.
Hence, sampling terminates after 20 observations. If the average of these 20
observations is 6, then the M.L.E. is again ˆμ= 6.
3. An experimenter takes observations one at a time, with no particular plan in
mind, until either she is forced to stop sampling or she gets tired of sampling.
She is certain that neither of these causes (being forced to stop or getting tired)
depends in any way on μ. If for either reason she stops as soon as she has taken
20 observations and if the average of the 20 observations is 6, then the M.L.E.
is again ˆμ = 6.
Sometimes, an experiment of this type must be terminated during an interval
when the experimenter is waiting for the next customer to arrive. If a certain amount
of time has elapsed since the arrival of the last customer, this time should not be
omitted from the sample data, even though the full interval to the arrival of the next
customer has not been observed. Suppose, for example, that the average of the first 20
observations is 6, the experimenter waits another 15 minutes but no other customer
arrives, and then she terminates the experiment. In this case,we know that the M.L.E.
of μ would have to be greater than 6, since the value of the 21st observation must
be greater than 15, even though its exact value is unknown. The new M.L.E. can
be obtained by multiplying the likelihood function for the first 20 observations by
the probability that the 21st observation is greater than 15, namely, exp(−15θ), and
finding the value of θ that maximizes this new likelihood function (see Exercise 15).
Remember that the M.L.E. is determined by the likelihood function. The only
way in which the M.L.E. is allowed to depend on the sampling plan is through the
likelihood function. If the decision about when to stop observing data is based solely
on the observations seen so far, then this information has already been included in
the likelihood function. If the decision to stop is based on something else, one needs
7.6 Properties of Maximum Likelihood Estimators 441
to evaluate the probability of that “something else” given each possible value of θ
and include that probability in the likelihood.
Other properties of M.L.E.’s will be discussed later in this chapter and in Chapter
8.
Summary
The M.L.E. of a function g(θ) is g( ˆ θ), where ˆ θ is the M.L.E. of θ. For example, if θ is
the rate at which customers are served in a queue, then 1/θ is the average service time.
The M.L.E. of 1/θ is 1 over the M.L.E. of θ. Sometimes we cannot find a closed form
expression for the M.L.E. of a parameter and we must resort to numerical methods to
find or approximate the M.L.E. In most problems, the sequence of M.L.E.’s, as sample
size increases, converges in probability to the parameter.When data are collected in
such a way that the decision to stop collecting data is based solely on the data already
observed or on other considerations that are not related to the parameter, then the
M.L.E. will not depend on the sampling plan. That is, if two different sampling plans
lead to proportional likelihood functions, then the value of θ that maximizes one
likelihood will also maximize the other.
Exercises
1. Suppose thatX1, . . . , Xn form a random sample from a
distribution with the p.d.f. given in Exercise 10 of Sec. 7.5.
Find the M.L.E. of e
−1/θ .
2. Suppose that X1, . . . , Xn form a random sample from
a Poisson distribution for which the mean is unknown.
Determine the M.L.E. of the standard deviation of the
distribution.
3. Suppose that X1, . . . , Xn form a random sample from
an exponential distribution for which the value of the
parameter β is unknown. Determine the M.L.E. of the
median of the distribution.
4. Suppose that the lifetime of a certain type of lamp
has an exponential distribution for which the value of the
parameter β is unknown. A random sample of n lamps
of this type are tested for a period of T hours and the
numberX of lamps that fail during this period is observed,
but the times at which the failures occurred are not noted.
Determine the M.L.E. of β based on the observed value
of X.
5. Suppose that X1, . . . , Xn form a random sample from
the uniform distribution on the interval [a, b], where both
endpoints a and b are unknown. Find the M.L.E. of the
mean of the distribution.
6. Suppose that X1, . . . , Xn form a random sample from
a normal distribution for which both the mean and the
variance are unknown. Find the M.L.E. of the 0.95 quantile
of the distribution, that is, of the point θ such that
Pr(X < θ) = 0.95.
7. For the conditions of Exercise 6, find the M.L.E. of
ν = Pr(X > 2).
8. Suppose that X1, . . . , Xn form a random sample from
a gamma distribution for which the p.d.f. is given by
Eq. (7.6.2). Find the M.L.E. of  
 
(α)/ (α).
9. Suppose that X1, . . . , Xn form a random sample from
a gamma distribution for which both parameters α and β
are unknown. Find the M.L.E. of α/β.
10. Suppose that X1, . . . , Xn form a random sample from
a beta distribution for which both parameters α and β are
unknown. Show that the M.L.E.’s of α and β satisfy the
following equation:
 
 
( ˆ α)
 ( ˆ α)
−  
 
( ˆ β)
 ( ˆ β)
= 1
n
 n
i=1
log Xi
1− Xi
.
11. Suppose that X1, . . . , Xn form a random sample of
size n from the uniform distribution on the interval [0, θ],
where the value of θ is unknown. Show that the sequence
of M.L.E.’s of θ is a consistent sequence.
12. Suppose that X1, . . . , Xn form a random sample from
an exponential distribution for which the value of the parameter
β is unknown. Show that the sequence of M.L.E.’s
of β is a consistent sequence.
442 Chapter 7 Estimation
13. Suppose that X1, . . . , Xn form a random sample from
a distribution for which the p.d.f. is as specified in Exercise
9 of Section 7.5. Show that the sequence of M.L.E.’s
of θ is a consistent sequence.
14. Suppose that a scientist desires to estimate the proportion
p of monarch butterflies that have a special type
of marking on their wings.
a. Suppose that he captures monarch butterflies one at
a time until he has found five that have this special
marking. If he must capture a total of 43 butterflies,
what is the M.L.E. of p?
b. Suppose that at the end of a day the scientist had
captured 58 monarch butterflies and had found only
three with the special marking. What is the M.L.E.
of p?
15. Suppose that 21 observations are taken at random
from an exponential distribution for which the mean μ is
unknown (μ > 0), the average of 20 of these observations
is 6, and although the exact value of the other observation
could not be determined, it was known to be greater than
15. Determine the M.L.E. of μ.
16. Suppose that each of two statisticians A and B must
estimate a certain parameter θ whose value is unknown
(θ > 0). Statistician A can observe the value of a random
variable X, which has the gamma distribution with parameters
α and β, where α = 3 and β = θ; statistician B
can observe the value of a random variable Y , which has
the Poisson distribution with mean 2θ. Suppose that the
value observed by statistician A is X = 2 and the value observed
by statistician B is Y = 3. Show that the likelihood
functions determined by these observed values are proportional,
and find the common value of the M.L.E. of θ
obtained by each statistician.
17. Suppose that each of two statisticians A and B must
estimate a certain parameter p whose value is unknown
(0<p <1). Statistician A can observe the value of a random
variable X, which has the binomial distribution with
parameters n = 10 and p; statistician B can observe the
value of a random variable Y , which has the negative binomial
distribution with parameters r = 4 and p. Suppose
that the value observed by statistician A is X = 4 and the
value observed by statistician B is Y = 6. Show that the
likelihood functions determined by these observed values
are proportional, and find the common value of the
M.L.E. of p obtained by each statistician.
18. Prove that the method of moments estimator for the
parameter of a Bernoulli distribution is the M.L.E.
19. Prove that the method of moments estimator for the
parameter of an exponential distribution is the M.L.E.
20. Prove that the method of moments estimator of the
mean of a Poisson distribution is the M.L.E.
21. Prove that the method of moments estimators of the
mean and variance of a normal distribution are also the
M.L.E.’s.
22. LetX1, . . . , Xn be a random sample from the uniform
distribution on the interval [0, θ].
a. Find the method of moments estimator of θ.
b. Show that the method of moments estimator is not
the M.L.E.
23. Suppose that X1, . . . , Xn form a random sample from
the beta distribution with parameters α and β. Let θ =
(α, β) be the vector parameter.
a. Find the method of moments estimator for θ.
b. Show that the method of moments estimator is not
the M.L.E.
24. Suppose that the two-dimensional vectors (X1, Y1),
(X2, Y2), . . . , (Xn, Yn) form a random sample from a bivariate
normal distribution for which the means of X and
Y , the variances of X and Y , and the correlation between
X and Y are unknown. Show that the M.L.E.’s of these five
parameters are as follows:
ˆμ
1 = Xn and ˆμ2 = Y n,
5σ2
1
= 1
n
 n
i=1
(Xi
− Xn)2 and 5σ2
2
= 1
n
 n
i=1
(Yi
− Y n)2,
ρˆ =
 n
i=1(Xi
− Xn)(Yi
− Y n)
# n
i=1(Xi
− Xn)2
$1/2 # n
i=1(Yi
− Y n)2
$1/2 .
Hint: First, rewrite the joint p.d.f. of each pair (Xi, Yi) as
the product of the marginal p.d.f. ofXi and the conditional
p.d.f. of Yi given Xi . Second, transform the parameters to
μ1, σ2
1 and
α = μ2 − ρσ2μ1
σ1
,
β = ρσ2
σ1
,
σ2
2.1
= (1− ρ2)σ 2
2 .
Third, maximize the likelihood function as a function of
the new parameters. Finally, apply the invariance property
of M.L.E.’s to find the M.L.E.’s of the original parameters.
The above transformation greatly simplifies the
maximization of the likelihood.
25. Consider again the situation described in Exercise 24.
This time, suppose that, for reasons unrelated to the values
of the parameters, we cannot observe the values of
Yn−k+1, . . . , Yn. That is, we will be able to observe all of
X1, . . . , Xn and Y1, . . . , Yn−k, but not the last k Y values.
Using the hint given in Exercise 24, find the M.L.E.’s of
μ1, μ2, σ2
1 , σ2
2 , and ρ.
7.7 Sufficient Statistics 443
  7.7 Sufficient Statistics
In the first six sections of this chapter, we presented some inference methods that
are based on the posterior distribution of the parameter or on the likelihood
function alone. There are other inference methods that are based neither on the
posterior distribution nor on the likelihood function. These methods are based on
the conditional distributions of various functions of the data (i.e., statistics) given
the parameter. There are many statistics available in a given problem, some more
useful than others. Sufficient statistics turn out to be the most useful in some sense.
Definition of a Sufficient Statistic
Example
7.7.1
Lifetimes of Electronic Components. In Examples 7.4.8 and 7.5.2, we computed estimates
of the mean lifetime for electronic components based on a sample of size three
from the distribution of lifetimes. The two estimates we computed were a Bayes estimate
(Example 7.4.8) and an M.L.E. (Example 7.5.2). Both estimates made use of
the observed data solely through the value of the statistic X1 + X2 + X3. Is there anything
special about this statistic, and if so, do such statistics exist in other problems?
 
In many problems in which a parameter θ must be estimated, it is possible to
find either an M.L.E. or a Bayes estimator that will be suitable. In some problems,
however, neither of these estimators may be suitable or available. There may not
be any M.L.E., or there may be more than one. Even when an M.L.E. is unique,
it may not be a suitable estimator, as in Example 7.5.7, where the M.L.E. always
underestimates the value of θ. Reasons why there may not be a suitable Bayes
estimator were presented at the end of Sec. 7.4. In such problems, the search for
a good estimator must be extended beyond the methods that have been introduced
thus far. In this section, we shall define the concept of a sufficient statistic, which was
introduced by R. A. Fisher in 1922, and we shall show how this concept can be used
to simplify the search for a good estimator in many problems.
Suppose that in a specific estimation problem, two statisticians A and B must
estimate the value of the parameter θ. Statistician A can observe the values of the
observations X1, . . . , Xn in a random sample, and statistician B cannot observe the
individual values of X1, . . . , Xn but can learn the value of a certain statistic T =
r(X1, . . . , Xn). In this case, statistician A can choose any function of the observations
X1, . . . , Xn as an estimator of θ (including a function of T ). But statistician B can use
only a function of T . Hence, it follows that A will generally be able to find a better
estimator than will B.
In some problems, however, B will be able to do just as well as A. In such a
problem, the single function T = r(X1, . . . , Xn) will in some sense summarize all
the information contained in the random sample, and knowledge of the individual
values of X1, . . . , Xn will be irrelevant in the search for a good estimator of θ. A
statistic T having this property is called a sufficient statistic. The formal definition of
a sufficient statistic is based on the following intuition. Suppose that one could learn
T and were then able to simulate random variables X
 
1, . . . , X
 
n such that, for every
θ, the joint distribution of X
 
1, . . . , X
 
n was exactly the same as the joint distribution
of X1, . . . , Xn. Such a statistic T is sufficient in the sense that one could, if one felt
the need, use X
 
1, . . . , X
 
n in the same way that one would have used X1, . . . , Xn. The
process of simulating X
 
1, . . . , X
 
n is called an auxiliary randomization.
444 Chapter 7 Estimation
Definition
7.7.1
Sufficient Statistic. Let X1, . . . , Xn be a random sample from a distribution indexed
by a parameter θ. Let T be a statistic. Suppose that, for every θ and every possible
value t of T , the conditional joint distribution of X1, . . . , Xn given that T = t (and
θ) depends only on t but not on θ. That is, for each t , the conditional distribution of
X1, . . . , Xn given T = t and θ is the same for all θ. Then we say that T is a sufficient
statistic for the parameter θ.
Return now to the intuition introduced right before Definition 7.7.1. When
one simulates X
 
1, . . . , X
 
n in accordance with the conditional joint distribution of
X1, . . . , Xn given T = t , it follows that for each given value of θ ∈  , the joint distribution
of T,X
 
1, . . . , X
 
n will be the same as the joint distribution of T,X1, . . . , Xn. By
integrating out (or summing out) T from the joint distribution, we see that the joint
distribution of X1, . . . ,Xn is the same as the joint distribution of X
 
1, . . . ,X
 
n. Hence,
if statistician B can observe the value of a sufficient statistic T , then she can generate
n random variables X
 
1, . . . , X
 
n, which have the same joint distribution as the original
random sample X1, . . . , Xn. The property that distinguishes a sufficient statistic
T from a statistic that is not sufficient may be described as follows: The auxiliary
randomization used to generate the random variables X
 
1, . . . , X
 
n after the sufficient
statistic T has been observed does not require any knowledge about the value of θ,
since the conditional joint distribution ofX1, . . . , Xn when T is given does not depend
on the value of θ. If the statistic T were not sufficient, this auxiliary randomization
could not be carried out, because the conditional joint distribution of X1, . . . , Xn for
a given value of T would involve the value of θ, and this value is unknown.
If statistician B is concerned solely with the distribution of the estimator she
uses, we can now see why she can estimate θ just as well as can statistician A,
who observes the values of X1, . . . , Xn. Suppose that A plans to use a particular
estimator δ(X1, . . . , Xn) to estimate θ, and B observes the value of T and generates
X
 
1, . . . , X
 
n, which have the same joint distribution as X1, . . . , Xn. If B uses the
estimator δ(X
 
1, . . . , X
 
n), then it follows that the probability distribution of B’s
estimator will be the same as the probability distribution of A’s estimator. This
discussion illustrates why, when searching for a good estimator, a statistician can
restrict the search to estimators that are functions of a sufficient statistic T .We shall
return to this point in Sec. 7.9.
On the other hand, if statistician B is interested in basing her estimator on
the posterior distribution of θ, we have not yet shown why she can do just as well
as statistician A. The next result (the factorization criterion) shows why even this
is true. A sufficient statistic is sufficient for being able to compute the likelihood
function, and hence it is sufficient for performing any inference that depends on the
data only through the likelihood function. M.L.E.’s and anything based on posterior
distributions depend on the data only through the likelihood function.
The Factorization Criterion
Immediately after Example 7.2.7 and Theorems 7.3.2 and 7.3.3, we pointed out that
a particular statistic was used to compute the posterior distribution being discussed.
These statistics all had the property that they were all that was needed from the
data to be able to compute the likelihood function. This property is another way to
characterize sufficient statistics.We shall now present a simple method for finding a
sufficient statistic that can be applied in many problems. This method is based on the
following result, which was developed with increasing generality by R. A. Fisher in
1922, J. Neyman in 1935, and P. R. Halmos and L. J. Savage in 1949.
7.7 Sufficient Statistics 445
Theorem
7.7.1
Factorization Criterion. Let X1, . . . , Xn form a random sample from either a continuous
distribution or a discrete distribution for which the p.d.f. or the p.f. is f (x|θ),
where the value of θ is unknown and belongs to a given parameter space  . A
statistic T = r(X1, . . . ,Xn) is a sufficient statistic for θ if and only if the joint p.d.f.
or the joint p.f. fn(x|θ) of X1, . . . , Xn can be factored as follows for all values of
x = (x1, . . . , xn) ∈ Rn and all values of θ ∈  :
fn(x|θ) = u(x)v[r(x), θ]. (7.7.1)
Here, the functions u and v are nonnegative, the function u may depend on x but does
not depend on θ, and the function v will depend on θ but depends on the observed
value x only through the value of the statistic r(x).
Proof We shall give the proof only when the random vector X = (X1, . . . , Xn) has
a discrete distribution, in which case
fn(x|θ) = Pr(X = x|θ).
Suppose first that fn(x|θ) can be factored as in Eq. (7.7.1) for all values of x ∈ Rn
and θ ∈  . For each possible value t of T , let A(t) denote the set of all points x ∈ Rn
such that r(x) = t . For each given value of θ ∈  , we shall determine the conditional
distribution of X given that T = t . For every point x ∈ A(t),
Pr(X = x|T = t, θ) = Pr(X = x|θ)
Pr(T = t |θ)
= fn(x|θ)  
y∈A(t) fn(y|θ)
.
Since r(y) = t for every point y ∈ A(t), and since x ∈ A(t), it follows from Eq. (7.7.1)
that
Pr(X = x|T = t, θ) = u(x)  
y∈A(t) u(y)
. (7.7.2)
Finally, for every point x that does not belong to A(t),
Pr(X = x|T = t, θ) = 0. (7.7.3)
It can be seen from Eqs. (7.7.2) and (7.7.3) that the conditional distribution of X does
not depend on θ. Therefore, T is a sufficient statistic.
Conversely, suppose that T is a sufficient statistic. Then, for every given value
t of T , every point x ∈ A(t), and every value of θ ∈  , the conditional probability
Pr(X = x|T = t, θ) will not depend on θ and will therefore have the form
Pr(X = x|T = t, θ) = u(x).
If we let v(t, θ) = Pr(T = t |θ), it follows that
fn(x|θ) = Pr(X = x|θ) = Pr(X = x|T = t, θ) Pr(T = t |θ)
= u(x)v(t, θ).
Hence, fn(x|θ) has been factored in the form specified in Eq. (7.7.1).
The proof for a random sample X1, . . . , Xn from a continuous distribution
requires somewhat different methods and will not be given here.
One way to read Theorem 7.7.1 is that T = r(X) is sufficient if and only if the likelihood
function is proportional (as a function of θ) to a function that depends on the
data only through r(x). That function would be v[r(x), θ].When using the likelihood
function for finding posterior distributions, we saw that any factor not depending on
θ (such as u(x) in Eq. (7.7.1)) can be removed from the likelihood without affecting
446 Chapter 7 Estimation
the calculation of the posterior distribution. So, we have the following corollary to
Theorem 7.7.1.
Corollary
7.7.1
A statistic T = r(X) is sufficient if and only if, no matter what prior distribution we
use, the posterior distribution of θ depends on the data only through the value of T .
For each value of x for which fn(x|θ) = 0 for all values of θ ∈  , the value of the
function u(x) in Eq. (7.7.1) can be chosen to be 0. Therefore, when the factorization
criterion is being applied, it is sufficient to verify that a factorization of the form
given in Eq. (7.7.1) is satisfied for every value of x such that fn(x|θ) > 0 for at least
one value of θ ∈  .
We shall now illustrate the use of the factorization criterion by giving four
examples.
Example
7.7.2
Sampling from a Poisson Distribution. Suppose that X = (X1, . . . ,Xn) form a random
sample from a Poisson distribution for which the value of the mean θ is unknown
(θ > 0). Let r(x) = n
i=1 xi . We shall show that T = r(X) = n
i=1 Xi is a sufficient
statistic for θ.
For every set of nonnegative integers x1, . . . , xn, the joint p.f. fn(x|θ) of X1, . . . ,
Xn is as follows:
fn(x|θ) =
!n
i=1
e
−θθxi
xi!
=
 
!n
i=1
1
xi!
 
e
−nθθr(x).
Let u(x) ="n
i=1(1/xi!) and v(t, θ) = e
−nθθt . We now see that fn(x|θ) has been factored
as in Eq. (7.7.1). It follows that T = n
i=1 Xi is a sufficient statistic for θ.  
Example
7.7.3
Applying the Factorization Criterion to a Continuous Distribution. Suppose that X =
(X1, . . . , Xn) form a random sample from a continuous distribution with the following
p.d.f.:
f (x|θ) =
 
θxθ−1 for 0 < x <1,
0 otherwise.
It is assumed that the value of the parameter θ is unknown (θ > 0). Let r(x) ="n
i=1 xi .
We shall show that T = r(X) ="n
i=1 Xi is a sufficient statistic for θ.
For 0 < xi < 1 (i = 1, . . . , n), the joint p.d.f. fn(x|θ) of X1, . . . , Xn is as follows:
f (x|θ) = θn
 
!n
i=1
xi
 θ−1
= θn [r(x)]θ−1
. (7.7.4)
Furthermore, if at least one value of xi is outside the interval 0<xi < 1, then fn(x|θ) =
0 for every value of θ ∈  . The right side of Eq. (7.7.4) depends on x only through
the value of r(x). Therefore, if we let u(x) = 1 and v(t, θ) = θnt θ−1, then fn(x|θ) in
Eq. (7.7.4) can be considered to be factored in the form specified in Eq. (7.7.1). It
follows from the factorization criterion that the statistic T ="n
i=1 Xi is a sufficient
statistic for θ.  
Example
7.7.4
Sampling from a Normal Distribution. Suppose that X = (X1, . . . , Xn) form a random
sample from a normal distribution for which the mean μ is unknown and the variance
σ2 is known. Let r(x) = n
i=1 xi .We shall show that T = r(X) = n
i=1Xi is a sufficient
statistic for μ.
7.7 Sufficient Statistics 447
For −∞< xi <∞(i = 1, . . . , n), the joint p.d.f. of X is as follows:
fn(x|μ) =
!n
i=1
1
(2π)1/2σ
exp
 
−(xi
− μ)2
2σ2
 
. (7.7.5)
This equation can be rewritten in the form
fn(x|μ) = 1
(2π)n/2σn
exp
 
− 1
2σ2
 n
i=1
x2
i
 
exp
 
μ
σ2
 n
i=1
xi
− nμ2
2σ2
 
. (7.7.6)
Let u(x) be the constant factor and the first exponential factor in Eq. (7.7.6). Let
v(t, μ) = exp(μt/σ 2 − nμ2/σ 2). Then fn(x|μ) has now been factored as in Eq. (7.7.1).
It follows from the factorization criterion that T = n
i=1 Xi is a sufficient statistic for
μ.  
Since
 n
i=1 xi
= nxn, we can state equivalently that the final factor in Eq. (7.7.6)
depends on x1, . . . , xn only through the value of xn. Therefore, in Example 7.7.4
the statistic Xn is also a sufficient statistic for μ. More generally (see Exercise 13 at
the end of this section), every one-to-one function of a sufficient statistic is also a
sufficient statistic.
Example
7.7.5
Sampling from a Uniform Distribution. Suppose that X = (X1, . . . , Xn) form a random
sample from the uniform distribution on the interval [0, θ], where the value of the
parameter θ is unknown (θ > 0). Let r(x) = max{x1, . . . , xn
}. We shall show that
T = r(X) = max{X1, . . . , Xn
} is a sufficient statistic for θ.
The p.d.f. f (x|θ) of each individual observation Xi is
f (x|θ) =
  1
θ for 0 ≤ x ≤ θ,
0 otherwise.
Therefore, the joint p.d.f. fn(x|θ) of X1, . . . , Xn is
fn(x|θ) =
  1
θn for 0 ≤ xi
≤ θ, (i = 1, . . . , n),
0 otherwise.
It can be seen that if xi < 0 for at least one value of i (i = 1, . . . , n), then fn(x|θ) = 0
for every value of θ >0. Therefore, it is only necessary to consider the factorization
of fn(x|θ) for values of xi
≥ 0 (i = 1, . . . , n).
Let v[t, θ] be defined as follows:
v[t, θ]=
  1
θn if t ≤ θ,
0 ift > θ.
Notice that xi
≤ θ for i = 1, . . . , n if and only if max{x1, . . . , xn
} ≤ θ. Therefore, for
xi
≥ 0 (i = 1, . . . , n), we can rewrite fn(x|θ) as follows:
fn(x|θ) = v[r(x), θ]. (7.7.7)
Letting u(x) = 1, we see that the right side of Eq. (7.7.7) is in the form of Eq. (7.7.1).
It follows that T = max{X1, . . . , Xn
} is a sufficient statistic for θ.  
Summary
A statistic T = r(X) is sufficient if, for each t , the conditional distribution of X given
T = t and θ is the same for all values of θ. So, if T is sufficient, and one observed only
T instead of X, one could, at least in principle, simulate random variables X  with
448 Chapter 7 Estimation
the same joint distribution given θ as X. In this sense, T is sufficient for obtaining
as much information about θ as one could get from X. The factorization criterion
says that T = r(X) is sufficient if and only if the joint p.f. or p.d.f. can be factored as
f (x|θ) = u(x)v[r(x), θ] for some functions u and v. This is the most convenient way
to identify whether or not a statistic is sufficient.
Exercises
Instructions for Exercises 1 to 10: In each of these exercises,
assume that the random variables X1, . . . , Xn
form a random sample of size n from the distribution
specified in that exercise, and show that the statistic T
specified in the exercise is a sufficient statistic for the
parameter.
1. The Bernoulli distribution with parameter p, which is
unknown (0<p <1); T =
 n
i=1 Xi .
2. The geometric distribution with parameter p, which is
unknown (0<p <1); T =
 n
i=1 Xi .
3. The negative binomial distribution with parameters r
and p, where r is known and p is unknown (0 <p <1);
T =
 n
i=1 Xi .
4. The normal distribution for which the mean μ is known
and the variance σ2 > 0 is unknown; T =
 n
i=1(Xi
− μ)2.
5. The gamma distribution with parameters α and β,
where the value of α is known and the value of β is unknown
(β > 0); T = Xn.
6. The gamma distribution with parameters α and β,
where the value of β is known and the value of α is unknown
(α > 0); T =
"n
i=1 Xi .
7. The beta distribution with parameters α and β, where
the value of β is known and the value of α is unknown
(α > 0); T =
"n
i=1 Xi .
8. The uniform distribution on the integers 1, 2, . . . , θ,
as defined in Sec. 3.1, where the value of θ is unknown
(θ = 1, 2, . . .); T = max{X1, . . . , Xn
}.
9. The uniform distribution on the interval [a, b], where
the value of a is known and the value of b is unknown
(b > a); T = max{X1, . . . , Xn
}.
10. The uniform distribution on the interval [a, b], where
the value of b is known and the value of a is unknown
(a < b); T = min{X1, . . . , Xn
}.
11. Assume that X1, . . . , Xn form a random sample from
a distribution that belongs to an exponential family of
distributions as defined in Exercise 23 of Sec. 7.3. Prove
that T = n
i=1 d(Xi) is a sufficient statistic for θ.
12. Suppose that a random sample X1, . . . , Xn is drawn
from the Pareto distribution with parameters x0 and α.
(See Exercise 16 in Sec. 5.7.)
a. If x0 is known and α >0 unknown, find a sufficient
statistic.
b. If α is known and x0 unknown, find a sufficient statistic.
13. Suppose that X1, . . . , Xn form a random sample from
a distribution for which the p.d.f. is f (x|θ), where the value
of the parameter θ belongs to a given parameter space  .
Suppose that T = r(X1, . . . , Xn) and T
  = r
 
(X1, . . . , Xn)
are two statistics such that T
  is a one-to-one function of
T ; that is, the value of T
  can be determined from the
value of T without knowing the values of X1, . . . , Xn, and
the value of T can be determined from the value of T
 
without knowing the values of X1, . . . , Xn. Show that T
 
is a sufficient statistic for θ if and only if T is a sufficient
statistic for θ.
14. Suppose that X1, . . . , Xn form a random sample from
the gamma distribution specified in Exercise 6. Show that
the statistic T =
 n
i=1 log Xi is a sufficient statistic for the
parameter α.
15. Suppose that X1, . . . , Xn form a random sample from
the beta distribution with parameters α and β, where the
value of α is known and the value of β is unknown (β > 0).
Show that the following statistic T is a sufficient statistic
for β:
T = 1
n
 
 n
i=1
log
1
1− Xi
 4
.
16. Let θ be a parameter with parameter space   equal
to an interval of real numbers (possibly unbounded). Let
X have p.d.f. or p.f. fn(x|θ) conditional on θ. Let T = r(X)
be a statistic. Assume that T is sufficient. Prove that, for
every possible prior p.d.f. for θ, the posterior p.d.f. of θ
given X = x depends on x only through r(x).
17. Let θ be a parameter, and let X be discrete with p.f.
fn(x|θ) conditional on θ. Let T = r(X) be a statistic. Prove
that T is sufficient if and only if, for every t and every x
such that t = r(x), the likelihood function from observing
T = t is proportional to the likelihood function from
observing X = x.
7.8 Jointly Sufficient Statistics 449
  7.8 Jointly Sufficient Statistics
When a parameter θ is multidimensional, sufficient statistics will typically need to
be multidimensional as well. Sometimes, no one-dimensional statistic is sufficient
even when θ is one-dimensional. In either case, we need to extend the concept of
sufficient statistic to deal with cases in which more than one statistic is needed in
order to be sufficient.
Definition of Jointly Sufficient Statistics
Example
7.8.1
Sampling from a Normal Distribution. Return to Example 7.7.4, in whichX = (X1, . . . ,
Xn) form a random sample from the normal distribution with meanμand variance σ2.
This time, assume that both coordinates of the parameter θ = (μ, σ2) are unknown.
The joint p.d.f. of X is still given by the right side of Eq. (7.7.5). But now, we would
refer to the joint p.d.f. as fn(x|θ). With both μ and σ2 unknown, there no longer
appears to be a single statistic that is sufficient.  
We shall continue to suppose that the variables X1, . . . , Xn form a random sample
from a distribution for which the p.d.f. or the p.f. is f (x|θ), where the parameter θ
must belong to some parameter space  . However, we shall now explicitly consider
the possibility that θ may be a vector of real-valued parameters. For example, if the
sample comes from a normal distribution for which both the mean μ and the variance
σ2 are unknown, then θ would be a two-dimensional vector whose components
are μ and σ2. Similarly, if the sample comes from a uniform distribution on some
interval [a, b] for which both endpoints a and b are unknown, then θ would be a twodimensional
vector whose components are a and b. We shall, of course, continue to
include the possibility that θ is a one-dimensional parameter.
In almost every problem in which θ is a vector, as well as in some problems in
which θ is one-dimensional, there does not exist a one-dimensional statistic T that is
sufficient. In such a problem it is necessary to find two or more statistics T1, . . . , Tk
that together are jointly sufficient statistics in a sense that will now be described.
Suppose that in a given problem the statistics T1, . . . , Tk are defined by k different
functions of the vector of observations X = (X1, . . . , Xn). Specifically, let Ti
= ri(X)
for i = 1, . . . , k. Loosely speaking, the statistics T1, . . . , Tk are jointly sufficient statistics
for θ if a statistician who learns only the values of the k functions r1(X), . . . , rk(X)
can estimate every component of θ and every function of the components of θ, as
well as one who observes the n individual values of X1, . . . , Xn. More formally, we
have the following definition.
Definition
7.8.1
Jointly Sufficient Statistics. Suppose that for each θ and each possible value (t1, . . . , tk)
of (T1, . . . , Tk), the conditional joint distribution of (X1, . . . , Xn) given (T1, . . . , Tk) =
(t1, . . . , tk) does not depend on θ. Then T1, . . . , Tk are called jointly sufficient statistics
for θ.
A version of the factorization criterion exists for jointly sufficient statistics. The
proof will not be given, but it is similar to the proof of Theorem 7.7.1.
Theorem
7.8.1
Factorization Criterion for Jointly Sufficient Statistics. Let r1, . . . , rk be functions of n
real variables. The statistics Ti
= ri(X), i = 1, . . . , k, are jointly sufficient statistics for
θ if and only if the joint p.d.f. or the joint p.f. fn(x|θ) can be factored as follows for
450 Chapter 7 Estimation
all values of x ∈ Rn and all values of θ ∈  :
fn(x|θ) = u(x)v[r1(x), . . . , rk(x), θ]. (7.8.1)
Here the functions u and v are nonnegative, the function u may depend on x but does
not depend on θ, and the function v will depend on θ but depends on x only through
the k functions r1(x), . . . , rk(x).
Example
7.8.2
Jointly Sufficient Statistics for the Parameters of a Normal Distribution. Suppose that
X1, . . . , Xn form a random sample from a normal distribution for which both the
mean μ and the variance σ2 are unknown. The joint p.d.f. of X1, . . . , Xn is given by
Eq. (7.7.6), and it can be seen that this joint p.d.f. depends on x only through the
values of
 n
i=1 xi and
 n
i=1 x2
i . Therefore, by the factorization criterion, the statistics
T1 = n
i=1 Xi and T2 = n
i=1 X2
i are jointly sufficient statistics for μ and σ2.  
Suppose now that in a given problem the statistics T1, . . . , Tk are jointly sufficient
statistics for some parameter vector θ. If k other statistics T
 
1, . . . , T
 
k are obtained
from T1, . . . , Tk by a one-to-one transformation, then it can be shown that T
 
1, . . . , T
 
k
will also be jointly sufficient statistics for θ.
Example
7.8.3
Another Pair of Jointly Sufficient Statistics for the Parameters of a Normal Distribution.
Suppose again that X1, . . . , Xn form a random sample from a normal distribution
for which both the mean μ and the variance σ2 are unknown. Let T
 
1
= ˆμ, the
sample mean, and let T
 
2
= 2σ2, the sample variance. Thus,
T
 
1
= Xn and T
 
2
= 1
n
 n
i=1
(Xi
− Xn)2.
We shall show that T
 
1 and T
 
2 are jointly sufficient statistics for μ and σ2.
Let T1 and T2 be the jointly sufficient statistics for μ and σ2 derived in Example
7.8.2. Then
T
 
1
= 1
n
T1 and T
 
2
= 1
n
T2 − 1
n2
T 2
1 .
Also, equivalently,
T1 = nT
 
1 and T2 = n(T
 
2
+ T
 2
1 ).
Hence, the statistics T
 
1 and T
 
2 are obtained from the jointly sufficient statistics T1 and
T2 by a one-to-one transformation. It follows, therefore, that T
 
1 and T
 
2 themselves
are jointly sufficient statistics for μ and σ2.  
We have now shown that the jointly sufficient statistics for the unknown mean
and variance of a normal distribution can be chosen to be either T1 and T2, as given
in Example 7.8.2, or T
 
1 and T
 
2, as given in Example 7.8.3.
Example
7.8.4
Jointly Sufficient Statistics for the Parameters of a Uniform Distribution. Suppose that
X1, . . . , Xn form a random sample from the uniform distribution on the interval
[a, b], where the values of both endpoints a and b are unknown (a <b).The joint p.d.f.
fn(x|a, b) ofX1, . . . , Xn will be 0 unless all the observed values x1, . . . , xn lie between
a and b; that is, fn(x|a, b) = 0 unless min{x1, . . . , xn
} ≥ a and max{x1, . . . , xn
} ≤ b.
7.8 Jointly Sufficient Statistics 451
Furthermore, for every vector x such that min{x1, . . . , xn
} ≥ a and max{x1, . . . , xn
} ≤
b, we have
fn(x|a, b) = 1
(b − a)n
.
For each two numbers y and z, we shall let h(y, z) be defined as follows:
h(y, z) =
 
1 for y ≤ z,
0 for y >z.
For every value of x ∈ Rn, we can then write
fn(x|a, b) = h[a, min{x1, . . . , xn
}] h[max{x1, . . . , xn
}, b]
(b − a)n
.
Since this expression depends on x only through the values of min{x1, . . . , xn
}
and max{x1, . . . , xn
}, it follows that the statistics T1 = min{X1, . . . , Xn
} and T2 =
max{X1, . . . , Xn
} are jointly sufficient statistics for a and b.  
Minimal Sufficient Statistics
In a given problem, we want to try to find a sufficient statistic or a set of jointly
sufficient statistics for θ, because the values of such statistics summarize all the
relevant information about θ contained in the random sample.When a set of jointly
sufficient statistics are known, the search for a good estimator of θ is simplified
because we need consider only functions of these statistics as possible estimators.
Therefore, in a given problem it is desirable to find, not merely any set of jointly
sufficient statistics, but the simplest set of jointly sufficient statistics. That is, we want
the set of sufficient statistics that requires us to consider the smallest collection of
posible estimators. (We make this more precise in Defintion 7.8.3.) For example, it
is correct but completely useless to say that in every problem the n observations
X1, . . . , Xn are jointly sufficient statistics.
We shall now describe another set of jointly sufficient statistics that exist in every
problem and are slightly more useful.
Definition
7.8.2
Order Statistics. Suppose that X1, . . . , Xn form a random sample from some distribution.
Let Y1 denote the smallest value in the random sample, let Y2 denote the next
smallest value, let Y3 denote the third smallest value, and so on. In this way, Yn denotes
the largest value in the sample, and Yn−1 denotes the next largest value. The
random variables Y1, . . . , Yn are called the order statistics of the sample.
Now let y1 ≤ y2 ≤ . . . ≤ yn denote the values of the order statistics for a given
sample. If we are told the values of y1, . . . , yn, then we know that these n values
were obtained in the sample. However,we do not know which one of the observations
X1, . . . , Xn actually yielded the value y1, which one actually yielded the value y2, and
so on. All we know is that the smallest of the values of X1, . . . , Xn was y1, the next
smallest value was y2, and so on.
Theorem
7.8.2
Order Statistics Are Sufficient in Random Samples. Let X1, . . . , Xn form a random
sample from a distribution for which the p.d.f. or the p.f. is f (x|θ). Then the order
statistics Y1, . . . , Yn are jointly sufficient for θ.
452 Chapter 7 Estimation
Proof Let y1 ≤ y2 ≤ . . . ≤ yn denote the values of the order statistics. The joint p.d.f.
or joint p.f. of X1, . . . , Xn has the following form:
fn(x|θ) =
!n
i=1
f (xi
|θ). (7.8.2)
Since the order of the factors in the product on the right side of Eq. (7.8.2) is
irrelevant, Eq. (7.8.2) could just as well be rewritten in the form
fn(x|θ) =
!n
i=1
f (yi
|θ).
Hence, fn(x|θ) depends on x only through the values of y1, . . . , yn. It follows, therefore,
that the order statistics Y1, . . . , Yn are jointly sufficient statistics for θ.
In words, Theorem 7.8.2 says that it is sufficient to know the set of n numbers that
were obtained in the sample, and it is not necessary to know which particular one of
these numbers was, for example, the value of X3.
To see how the order statistic is simpler than the full data vector in the sense
of having fewer possible estimators, note that X3 is an estimator based on the full
data vector, but X3 cannot be determined from the order statistics. Hence X3 is not
an estimator that we would need to consider if we based our inference on the order
statistics. The same is true of all of the averages of the form (Xi1
+ . . . + Xik
)/k for
{i1, . . . , ik
} a proper subset of {1, . . . , n}, as well as many other functions. On the
other hand, every estimator based on the order statistics is also a function of the full
data.
In each of the examples that have been given in this section and in Sec. 7.7, we
considered a distribution for which either there was a single sufficient statistic or there
were two statistics that were jointly sufficient. For some distributions, however, the
order statistics Y1, . . . , Yn are the simplest set of jointly sufficient statistics that exist,
and no further reduction in terms of sufficient statistics is possible.
Example
7.8.5
Sufficient Statistics for the Parameter of a Cauchy Distribution. Suppose thatX1, . . . , Xn
form a random sample from a Cauchy distribution centered at an unknown point
θ (−∞< θ <∞). The p.d.f. f (x|θ) of this distribution is given by Eq. (7.6.6), and the
joint p.d.f. fn(x|θ) of X1, . . . ,Xn is given by Eq. (7.6.7). It can be shown that the only
jointly sufficient statistics that exist in this problem are the order statistics Y1, . . . , Yn
or some other set of n statistics T1, . . . , Tn that can be derived from the order statistics
by a one-to-one transformation. The details of the argument will not be given here.
 
These considerations lead us to the concepts of a minimal sufficient statistic and a
minimal set of jointly sufficient statistics.Asufficient statistic T is a minimal sufficient
statistic if every function of T , which itself is a sufficient statistic, is a one-to-one
function of T . Formally, we shall use the following definition, which is equivalent to
the informal definition just given.
Definition
7.8.3
Minimal (Jointly) Sufficient Statistic(s). A statistic T is a minimal sufficient statistic
if T is sufficient and is a function of every other sufficient statistic. A vector T =
(T1, . . . , Tk) of statistics are minimal jointly sufficient statistics if the coordinates of
T are jointly sufficient statistics and T is a function of every other jointly sufficient
statistics.
7.8 Jointly Sufficient Statistics 453
In Example 7.8.5, the order statistics Y1, . . . , Yn are minimal jointly sufficient
statistics.
Maximum Likelihood Estimators and Bayes Estimators
as Sufficient Statistics
For the next two theorems, let X1, . . . , Xn form a random sample from a distribution
for which the p.f. or the p.d.f. is f (x|θ), where the value of the parameter θ is unknown
and one-dimensional.
Theorem
7.8.3
M.L.E. and Sufficient Statistics. Let T = r(X1, . . . , Xn) be a sufficient statistic for θ.
Then the M.L.E. ˆ θ of θ depends on the observations X1, . . . , Xn only through the
statistic T . Furthermore, if ˆ θ is itself sufficient, then it is minimal sufficient.
Proof We show first that ˆ θ is a function of every sufficient statistic. Let T = r(X) be a
sufficient statistic. The factorization criterion Theorem 7.7.1 says that the likelihood
function fn(x|θ) can be written in the form
fn(x|θ) = u(x)v[r(x), θ].
The M.L.E. ˆ θ is the value of θ for which fn(x|θ) is a maximum. It follows, therefore,
that ˆ θ will be the value of θ for which v[r(x), θ] is a maximum. Since v[r(x), θ]depends
on the observed vector x only through the function r(x), it follows that ˆ θ will also
depend on x only through the function r(x). Thus, the estimator ˆ θ is a function of
T = r(X).
Since the estimator ˆ θ is a function of the observations X1, . . . , Xn and is not a
function of the parameter θ, the estimator is itself a statistic. If ˆ θ is actually a sufficient
statistic, then it is minimal sufficient because we just showed that it is a function of
every other sufficient statistic.
Theorem 7.8.3 can be extended easily to the case in which the parameter θ is
multidimensional. If θ = (θ1, . . . , θk) is a vector of k real-valued parameters, then the
M.L.E. vector ( ˆ θ1, . . . , ˆ θk) will depend on the observations X1, . . . , Xn only through
the functions in a set of jointly sufficient statistics. If the vecotor of the estimators
ˆ θ1, . . . , ˆ θk is a set of jointly sufficient statistics, then they are minimal jointly sufficient
statistics because they are functions of every set of jointly sufficient statistics.
Example
7.8.6
Minimal Jointly Sufficient Statistics for the Parameters of a Normal Distribution. Suppose
that X1, . . . , Xn form a random sample from a normal distribution for which both
the mean μ and the variance σ2 are unknown. It was shown in Example 7.5.6 that the
M.L.E.’s ˆμ and 2σ2 are the sample mean and the sample variance. Also, it was shown
in Example 7.8.3 that ˆμ and 2σ2 are jointly sufficient statistics. Hence, ˆμ and 2σ2 are
minimal jointly sufficient statistics.  
The statistician in Example 7.8.6 can restrict the search for good estimators of μ
and σ2 to functions of minimal jointly sufficient statistics. It follows, therefore, from
Example 7.8.6 that if the M.L.E.’s ˆμ and 2σ2 themselves are not used as estimators
of μ and σ2, the only other estimators that need to be considered are functions of ˆμ
and 2σ2.
The results above concerning M.L.E.’s also pertain to Bayes estimators.
454 Chapter 7 Estimation
Theorem
7.8.4
Bayes Estimator and Sufficient Statistics. Let T = r(X) be a sufficient statistic for
θ. Then every Bayes estimator ˆ θ of θ depends on the observations X1, . . . , Xn
only through the statistic T . Furthermore, if ˆ θ is itself sufficient, then it is minimal
sufficient.
Proof Let the prior p.d.f. or p.f. of θ be ξ(θ). It follows from relation (7.2.10) and
the factorization criterion that the posterior p.d.f. ξ(θ|x) will satisfy the following
relation:
ξ(θ|x) ∝ v[r(x), θ]ξ(θ).
It can be seen from this relation that the posterior p.d.f. of θ will depend on
the observed vector x only through the value of r(x). Since the Bayes estimator of
θ with respect to a specified loss function is calculated from this posterior p.d.f., the
estimator also will depend on the observed vector x only through the value of r(x). In
other words, the Bayes estimator is a function of T = r(X). Since the Bayes estimator
ˆ θ is itself a statistic and is a function of every sufficient statistic T , if ˆ θ is also sufficient,
then it is minimal sufficient.
Theorem 7.8.4 also extends to vector parameters and jointly sufficient statistics.
Summary
Statistics T1 = r1(X), . . . , Tk
= rk(X) are jointly sufficient if and only if the joint p.f.
or p.d.f. can be factored as fn(x|θ) = u(x)v[r1(x), . . . , rk(x), θ], for some functions
u and v. It is clear from this factorization that the original data X1, . . . , Xn are
jointly sufficient. In order to be useful, a sufficient statistic should be a simpler
function than the entire data. A minimal sufficient statistic is the simplest function
that is still sufficient; that is, it is a sufficient statistic that is a function of every
sufficient statistic. Since the likelihood function is a function of every sufficient
statistic, according to the factorization criterion, a sufficient statistic that can be
determined from the likelihood function is minimal sufficient. In particular, if an
M.L.E. or Bayes estimator is sufficient, then it is minimal sufficient.
Exercises
Instructions for Exercises 1 to 4: In each exercise, assume
that the random variablesX1, . . . , Xn form a random sample
of size n from the distribution specified in the exercise,
and show that the statistics T1 and T2 specified in the exercise
are jointly sufficient statistics.
1. A gamma distribution for which both parameters α
and β are unknown (α >0 and β >0); T1 ="n
i=1 Xi and
T2 = n
i=1 Xi .
2. A beta distribution for which both parameters α and
β are unknown (α >0 and β >0); T1 =
"n
i=1 Xi and T2 =
"n
i=1(1− Xi).
3. A Pareto distribution (see Exercise 16 of Sec. 5.7)
for which both parameters x0 and α are unknown (x0 >
0 and α >0); T1 = min{X1, . . . , Xn
} and T2 ="n
i=1 Xi .
4. The uniform distribution on the interval [θ, θ + 3],
where the value of θ is unknown (−∞ < θ <∞); T1 =
min{X1,
. . . , Xn
} and T2 = max{X1, . . . , Xn
}.
5. Suppose that the vectors (X1, Y1), (X2, Y2), . . . ,
(Xn, Yn) form a random sample of two-dimensional vectors
from a bivariate normal distribution for which the
means, the variances, and the correlation are unknown.
S how that the following five statistics are jointly sufficient: n
i=1 Xi ,
 n
i=1 Yi ,
 n
i=1 X2
i ,
 n
i=1 Y 2
i , and
 n
i=1 XiYi .
6. Consider a distribution for which the p.d.f. or the p.f.
is f (x|θ), where the parameter θ is a k-dimensional vector
belonging to some parameter space  . It is said that
the family of distributions indexed by the values of θ in
7.9 Improving an Estimator 455
  is a k-parameter exponential family, or a k-parameter
Koopman-Darmois family, if f (x|θ) can be written as follows
for θ ∈   and all values of x:
f (x|θ) = a(θ)b(x) exp
 
 k
i=1
ci(θ)di(x)
 
.
Here, a and c1, . . . , ck are arbitrary functions of θ, and b
and d1, . . . , dk are arbitrary functions of x. Suppose now
thatX1, . . . , Xn form a random sample from a distribution
which belongs to a k-parameter exponential family of this
type, and define the k statistics T1, . . . , Tk as follows:
Ti
=
 n
j=1
di(Xj ) for i = 1, . . . , k.
Show that the statistics T1, . . . , Tk are jointly sufficient
statistics for θ.
7. Show that each of the following families of distributions
is a two-parameter exponential family as defined in
Exercise 6:
a. The family of all normal distributions for which both
the mean and the variance are unknown
b. The family of all gamma distributions for which both
α and β are unknown
c. The family of all beta distributions for which both α
and β are unknown
8. Suppose that X1, . . . , Xn form a random sample from
an exponential distribution for which the value of the
parameter β is unknown (β >0). Is the M.L.E. of β a
minimal sufficient statistic?
9. Suppose that X1, . . . , Xn form a random sample from
the Bernoulli distribution with parameter p, which is unknown
(0 ≤ p ≤ 1). Is the M.L.E. of p a minimal sufficient
statistic?
10. Suppose that X1, . . . , Xn form a random sample from
the uniform distribution on the interval [0, θ], where the
value of θ is unknown (θ >0). Is the M.L.E. of θ a minimal
sufficient statistic?
11. Suppose that X1, . . . , Xn form a random sample from
a Cauchy distribution centered at an unknown point θ
(−∞ < θ <∞). Is the M.L.E. of θ a minimal sufficient
statistic?
12. Suppose that X1, . . . , Xn form a random sample from
a distribution for which the p.d.f. is as follows:
f (x|θ) =
 
2x
θ2 for 0 ≤ x ≤ θ,
0 otherwise.
Here, the value of the parameter θ is unknown (θ > 0).
Determine the M.L.E. of the median of this distribution,
and show that this estimator is a minimal sufficient statistic
for θ.
13. Suppose that X1, . . . , Xn form a random sample from
the uniform distribution on the interval [a, b], where both
endpoints a and b are unknown. Are the M.L.E.’s of a and
b minimal jointly sufficient statistics?
14. For the conditions of Exercise 5, the M.L.E.’s of the
means, the variances, and the correlation are given in
Exercise 24 of Sec. 7.6. Are these five estimators minimal
jointly sufficient statistics?
15. Suppose that X1, . . . , Xn form a random sample from
the Bernoulli distribution with parameter p, which is unknown,
and that the prior distribution of p is a certain
specified beta distribution. Is the Bayes estimator of p
with respect to the squared error loss function a minimal
sufficient statistic?
16. Suppose that X1, . . . , Xn form a random sample from
a Poisson distribution for which the value of the mean λ is
unknown, and that the prior distribution of λ is a certain
specified gamma distribution. Is the Bayes estimator of λ
with respect to the squared error loss function a minimal
sufficient statistic?
17. Suppose that X1, . . . , Xn form a random sample from
a normal distribution for which the value of the mean μ
is unknown and the value of the variance is known, and
the prior distribution of μ is a certain specified normal
distribution. Is the Bayes estimator ofμwith respect to the
squared error loss function a minimal sufficient statistic?
  7.9 Improving an Estimator
In this section, we show how to improve upon an estimator that is not a function of
a sufficient statistic by using an estimator that is a function of a sufficient statistic.
The Mean Squared Error of an Estimator
Example
7.9.1
Customer Arrivals. A store owner is interested in the probability p that exactly one
customer will arrive during a typical hour. She models customer arrivals as a Poisson
process with rate θ per hour and observes how many customers arrive during each
456 Chapter 7 Estimation
of n hours, X1, . . . , Xn. She converts each Xi to Yi
= 1 if Xi
= 1 and Yi
= 0 if Xi
 = 1.
Then Y1, . . . , Yn is a random sample from the Bernoulli distribution with parameter
p. The store owner then estimates p by δ(X) = n
i=1 Yi/n. Is this a good estimator? In
particular, if the store owner wants to minimize mean squared error, is there another
estimator that we can show is better?  
In general, suppose that X = (X1, . . . , Xn) form a random sample from a distribution
for which the p.d.f. or the p.f. is f (x|θ), where the parameter θ must belong
to some parameter space  . In this section, θ can be a one-dimensional parameter
or a vector of parameters. For each random variable Z = g(X1, . . . , Xn), we shall let
Eθ(Z) denote the expectation of Z calculated with respect to the joint p.d.f. or joint
p.f. fn(x|θ). If we were thinking of θ as a random variable, then Eθ(Z) = E(Z|θ). For
example, if fn(x|θ) is a p.d.f., then
Eθ(Z) =
  ∞
−∞
. . .
  ∞
−∞
g(x)fn(x|θ) dx1 . . . dxn.
We shall suppose that the value of θ is unknown and that we want to estimate
some function h(θ). If θ is a vector, h(θ) might be one of the coordinates or a function
of all coordinates, and so on.We shall assume that the squared error loss function is
to be used. Also, for each given estimator δ(X) and every given value of θ ∈  , we
shall let R(θ, δ) denote the M.S.E. of δ calculated with respect to the given value of
θ. Thus,
R(θ, δ) = Eθ ([δ(X) − h(θ)]2). (7.9.1)
If we do not assign a prior distribution to θ, then it is desired to find an estimator δ
for which the M.S.E. R(θ, δ) is small for every value of θ ∈   or, at least, for a wide
range of values of θ.
Suppose now that T is a vector of jointly sufficient statistics for θ. In the remainder
of this section we shall refer to T simply as the sufficient statistic. If T is
one-dimensional, just pretend that we wrote it as T . Consider a statistician A who
plans to use a particular estimator δ(X). In Sec. 7.7 we remarked that another statistician
B who learns only the value of the sufficient statistic T can generate, by means of
an auxiliary randomization, an estimator that will have exactly the same distribution
as δ(X) and, in particular, will have the same mean squared error as δ(X) for every
value of θ ∈  . We shall now show that even without using an auxiliary randomization,
statistician B can find an estimator δ0 that depends on the observations X only
through the sufficient statistic T and is at least as good an estimator as δ in the sense
that R(θ, δ0) ≤ R(θ, δ), for every value of θ ∈  .
Conditional Expectation When a Sufficient Statistic Is Known
We shall define the estimator δ0(T) by the following conditional expectation:
δ0(T) = Eθ [δ(X)|T]. (7.9.2)
Since T is a sufficient statistic, the conditional joint distribution of X1, . . . , Xn for
each given value of T is the same for every value of θ ∈  . Therefore, for any given
value of T, the conditional expectation of the function δ(X) will be the same for
every value of θ ∈  . It follows that the conditional expectation in Eq. (7.9.2) will
depend on the value of T but will not actually depend on the value of θ. In other
words, the function δ0(T) is indeed an estimator of θ because it depends only on the
observations X and does not depend on the unknown value of θ. For this reason, we
7.9 Improving an Estimator 457
can omit the subscript θ on the expectation symbol E in Eq. (7.9.2), and we can write
the relation as follows:
δ0(T) = E[δ(X)|T]. (7.9.3)
We can now prove the following theorem, which was established independently
by D. Blackwell and C. R. Rao in the late 1940s.
Theorem
7.9.1
Let δ(X) be an estimator, let T be a sufficient statistic for θ, and let the estimator
δ0(T) be defined as in Eq. (7.9.3). Then for every value of θ ∈  ,
R(θ, δ0) ≤ R(θ, δ). (7.9.4)
Furthermore, if R(θ, δ) <∞, there is strict inequality in (7.9.4) unless δ(X) is a
function of T.
Proof If the M.S.E. R(θ, δ) is infinite for a given value of θ ∈  , then the relation
(7.9.4) is automatically satisfied. We shall assume, therefore, that R(θ, δ) <∞. It
follows from part (a) of Exercise 4 in Sec. 4.4 that
Eθ ([δ(X) − θ]2) ≥ (Eθ [δ(X)]− θ)2,
and it can be shown that this same relationship must also hold if the expectations are
replaced by conditional expectations given T. Therefore,
Eθ ([δ(X) − θ]2|T) ≥ (Eθ [δ(X)|T]− θ)2 = [δ0(T) − θ]2. (7.9.5)
It now follows from relation (7.9.5) that
R(θ, δ0) = Eθ [{δ0(T) − θ}2]≤ Eθ
{Eθ [{δ(X) − θ}2|T]}
= Eθ [{δ(X) − θ}2]= R(θ, δ),
where the next-to-last equality follows from Theorem 4.7.1, the law of total probability
for expectations. Hence, R(θ, δ0) ≤ R(θ, δ) for every value of θ ∈  .
Finally, suppose that R(θ, δ) <∞ and that δ(X) is not a function of T. That is,
there is no function g(T) such that Pr(δ(X) = g(T)|T) = 1. Then part (b) of Exercise 4
in Sec. 4.4 (conditional on T) says that there is strict inequality in (7.9.4).
Example
7.9.2
Customer Arrivals. Return now to Example 7.9.1. Let θ stand for the rate of customer
arrivals in units per hour. Then X forms a random sample from the Poisson distribution
with mean θ. Example 7.7.2 shows us that a sufficient statistic is T = n
i=1 Xi .
The distribution of T is the Poisson distribution with mean nθ.We shall now compute
δ0(T ) = E[δ(X)|T ],
where δ(X) = n
i=1 Yi/n was defined in Example 7.9.1. (Recall that Yi
= 1 if Xi
= 1
and Yi
= 0 if Xi
 = 1 so that δ(X) is the proportion of hours in which exactly one
customer arrives.) For each i and each possible value t of T , it is easy to see that
E(Yi
|T =t)=Pr(Xi
=1|T =t)= Pr(Xi
= 1, T = t)
Pr(T = t)
=
Pr
 
Xi
= 1,
 
j  =i Xj
= t − 1
 
Pr(T = t)
.
458 Chapter 7 Estimation
For t = 0, Pr(Xi
= 1|T = 0) = 0 trivially. For t > 0, we see that
Pr(T = t) = e
−nθ(nθ)t
t !
,
Pr
⎛
⎝Xi
= 1,
 
j  =i
Xj
= t − 1
⎞
⎠ = e
−θθ × e
−[n−1]θ ([n − 1]θ)t−1
(t − 1)!
= e
−nθ [n − 1]t−1θt
(t − 1)!
.
The ratio of these two probabilities is
E(Yi
|T = t) = t
n


1− 1
n
 t−1
. (7.9.6)
It follows that
δ0(t) = E[δ0(x)|T = t ]= E
 
1
n
 n
i=1
Yi
     
T = t
 
= 1
n
 n
i=1
E(Yi
|T = t).
According to Eq. (7.9.6), all E(Yi
|T = t) are the same, so δ0(t) is the right-hand side
of Eq. (7.9.6). That δ0(T ) is better than δ(X) under squared error loss follows from
Theorem 7.9.1.  
A result similar to Theorem 7.9.1 holds if R(θ, δ) is defined as the M.A.E. of
an estimator for a given value of θ ∈   instead of the M.S.E. of δ. In other words,
suppose that R(θ, δ) is defined as follows:
R(θ, δ) = Eθ (|δ(X) − θ|). (7.9.7)
Then it can be shown (see Exercise 10 at the end of this section) that Theorem 7.9.1
is still true.
Definition
7.9.1
Inadmissible/Admissible/Dominates. Suppose that R(θ, δ) is defined by either Eq.
(7.9.1) or Eq. (7.9.7). It is said that an estimator δ is inadmissible if there exists
another estimator δ0 such that R(θ, δ0) ≤ R(θ, δ) for every value of θ ∈   and there
is strict inequality in this relation for at least one value of θ ∈  . Under these conditions,
it is also said that the estimator δ0 dominates the estimator δ. An estimator δ0
is admissible if there is no other estimator that dominates δ0.
In the terminology of Definition 7.9.1, Theorem 7.9.1 can be summarized as
follows: An estimator δ that is not a function of the sufficient statistic T alone must
be inadmissible. Theorem 7.9.1 also explicitly identifies an estimator δ0 = E(δ(X)|T)
that dominates δ. However, this part of the theorem is somewhat less useful in a
practical problem, because it is usually very difficult to calculate the conditional
expectation E(δ(X)|T). Theorem 7.9.1 is valuable mainly because it provides further
strong evidence that we can restrict our search for a good estimator of θ to those
estimators that depend on the observations only through a sufficient statistic.
Example
7.9.3
Estimating the Mean of aNormal Distribution. Suppose thatX1, . . . , Xn form a random
sample from a normal distribution for which the mean μ is unknown and the variance
is known, and let Y1 ≤ . . . ≤ Yn denote the order statistics of the sample, as defined
in Sec. 7.8. If n is an odd number, then the middle observation Y(n+1)/2 is called the
sample median. If n is an even number, then each value between the two middle
observations Yn/2 and Y(n/2)+1 is a sample median, but the particular value 1
2 [Yn/2 +
Y(n/2)+1] is often referred to as the sample median.
7.9 Improving an Estimator 459
Since the normal distribution from which the sample is drawn is symmetric with
respect to the pointμ, the median of the normal distribution isμ.Therefore,we might
consider the use of the sample median, or a simple function of the sample median,
as an estimator of μ. However, it was shown in Example 7.7.4 that the sample mean
Xn is a sufficient statistic for μ. It follows from Theorem 7.9.1 that every function
of the sample median that might be used as an estimator of μ will be dominated by
some other function of Xn. In searching for an estimator of μ, we need consider only
functions of Xn.  
Example
7.9.4
Estimating the Standard Deviation of a Normal Distribution. Suppose that X1, . . . , Xn
form a random sample from a normal distribution for which both the mean μ and
the variance σ2 are unknown, and again let Y1 ≤ . . . ≤ Yn denote the order statistics
of the sample. The difference Yn
− Y1 is called the range of the sample, and we might
consider using some simple function of the range as an estimator of the standard
deviation σ. However, it was shown in Example 7.8.2 that the statistics
 n
  i=1 Xi and n
i=1 X2
i are jointly sufficient for the parameters μ and σ2. Therefore, every function
of the range that might be used as an estimator of σ will be dominated by a function
of
 n
i=1 Xi and
 n
i=1 X2
i .  
Example
7.9.5
Failure Times of Ball Bearings. Suppose that we wish to estimate the mean failure time
of the ball bearings described in Example 5.6.9 based on the sample of 23 observed
failure times. Let Y1, . . . , Y23 be the observed failure times (not the logarithms).We
might consider using the average Y n
= 1
23
 23
i=1 Yi as an estimator. Suppose that we
continue to model the logarithmsXi
= log(Yi) as normal random variables with mean
θ and variance 0.25. Then Yi has the lognormal distribution with parameters θ and
0.25. From Eq. (5.6.15), the mean of Yi is exp(θ + 0.125), the mean failure time.
However, we know that Xn is sufficient. Since Y n is not a function of Xn, there is
a function of Xn that improves on Y n as an estimator of the mean failure time. We
can actually find which function that is. First, write
E(Y n
|Xn) = 1
n
 n
i=1
E(Yi
|Xn). (7.9.8)
In Exercise 15 of Sec. 5.10, you proved that the conditional distribution of Xi given
Xn
= xn is the normal distribution with mean xn and variance 0.25(1− 1/n) for every
i. It follows that, for each i, the conditional distribution of Yi givenXn is the lognormal
distribution with parametersXn and 0.25(1− 1/n). Hence, it follows from Eq. (5.6.15)
that the conditional mean of Yi given Xn is exp[Xn
+ 0.125(1− 1/n)] for all i, and
Eq. (7.9.8) equals exp[Xn
+ 0.125(1− 1/n)] as well.  
Limitation of the Use of Sufficient Statistics
When the foregoing theory of sufficient statistics is applied in a statistical problem,
it is important to keep in mind the following limitation. The existence and the form
of a sufficient statistic in a particular problem depend critically on the form of the
function assumed for the p.d.f. or the p.f.Astatistic that is a sufficient statistic when it
is assumed that the p.d.f. is f (x|θ) may not be a sufficient statistic when it is assumed
that the p.d.f. is g(x|θ), even though g(x|θ) may be quite similar to f (x|θ) for every
value of θ ∈  . Suppose that a statistician is in doubt about the exact form of the p.d.f.
in a specific problem but assumes for convenience that the p.d.f. is f (x|θ); suppose
also that the statistic T is a sufficient statistic under this assumption. Because of the
460 Chapter 7 Estimation
statistician’s uncertainty about the exact form of the p.d.f., he may wish to use an
estimator of θ that performs reasonably well for a wide variety of possible p.d.f.’s,
even though the selected estimator may not meet the requirement that it should
depend on the observations only through the statistic T.
An estimator that performs reasonably well for a wide variety of possible p.d.f.’s,
even though it may not necessarily be the best available estimator for any particular
family of p.d.f.’s, is often called a robust estimator.We shall consider robust estimators
further in Chapter 10.
The preceding discussion also raises another useful point to keep in mind. In
Sec. 7.2, we introduced sensitivity analysis as a way to study the effect of the choice
of prior distribution on an inference. The same idea can be applied to any feature of
a statistical model that is chosen by a statistician. In particular, the distribution for
the observations given the parameters, as defined through f (x|θ), is often chosen for
convenience rather than through a careful analysis. One can perform an inference
repeatedly using different distributions for the observable data. The comparison of
the resulting inferences from each choice is another form of sensitivity analysis.
Summary
Suppose that T is a sufficient statistic, and we are trying to estimate a parameter with
squared error loss. Suppose that an estimator δ(X) is not a function of T. Then δ can
be improved by using δ0(T), the conditional mean of δ(X) given T. Because δ0(T) has
the same mean as δ(X) and its variance is no larger, it follows that δ0(T) has M.S.E.
that is no larger than that of δ(X).
Exercises
1. Suppose that the random variables X1, . . . , Xn form a
random sample of size n (n ≥ 2) from the normal distribution
with mean 0 and unknown variance θ. Suppose also
that for every estimator δ(X1, . . . , Xn), the M.S.E. R(θ, δ)
is defined by Eq. (7.9.1). Explain why the sample variance
is an inadmissible estimator of θ.
2. Suppose that the random variables X1, . . . , Xn form
a random sample of size n (n ≥ 2) from the uniform distribution
on the interval [0, θ], where the value of the
parameter θ is unknown (θ >0) and must be estimated.
Suppose also that for every estimator δ(X1, . . . , Xn), the
M.S.E. R(θ, δ) is defined by Eq. (7.9.1). Explain why the
estimator δ1(X1, . . . , Xn) = 2Xn is inadmissible.
3. Consider again the conditions of Exercise 2, and let the
estimator δ1 be as defined in that exercise. Determine the
value of the M.S.E. R(θ, δ1) for θ >0.
4. Consider again the conditions of Exercise 2. Let Yn
=
max{X1, . . . , Xn
} and consider the estimator δ2(X1, . . . ,
Xn) = Yn.
a. Determine the M.S.E. R(θ, δ2) for θ >0.
b. Show that for n = 2, R(θ, δ2) = R(θ, δ1) for θ >0.
c. Show that for n ≥ 3, the estimator δ2 dominates the
estimator δ1.
5. Consider again the conditions of Exercises 2 and 4.
Show that there exists a constant c
∗ such that the estimator
c
∗
Yn dominates every other estimator having the form cYn
for c  = c
∗.
6. Suppose that X1, . . . ,Xn form a random sample of size
n (n ≥ 2) from the gamma distribution with parameters α
and β, where the value of α is unknown (α > 0) and the
value of β is known. Explain why Xn is an inadmissible estimator
of the mean of this distribution when the squared
error loss function is used.
7. Suppose that X1, . . . , Xn form a random sample from
an exponential distribution for which the value of the parameter
β is unknown (β > 0) and must be estimated by
using the squared error loss function. Let δ be the estimator
such that δ(X1, . . . , Xn) = 3 for all possible values of
X1, . . . , Xn.
a. Determine the value of the M.S.E. R(β, δ) forβ >0.
b. Explain why the estimator δ must be admissible.
7.10 Supplementary Exercises 461
8. Suppose that a random sample of n observations is
taken from a Poisson distribution for which the value of
the mean θ is unknown (θ > 0), and the value of β = e
−θ
must be estimated by using the squared error loss function.
Since β is equal to the probability that an observation from
this Poisson distribution will have the value 0, a natural
estimator of β is the proportion ˆ β of observations in the
random sample that have the value 0. Explain why ˆ β is an
inadmissible estimator of β.
9. For every random variable X, show that |E(X)| ≤
E(|X|).
10. Let X1, . . . , Xn form a random sample from a distribution
for which the p.d.f. or the p.f. is f (x|θ), where θ ∈  .
Suppose that the value of θ must be estimated, and that
T is a sufficient statistic for θ. Let δ be an arbitrary estimator
of θ, and let δ0 be another estimator defined by the
relation δ0 = E(δ|T ). Show that for every value of θ ∈  ,
Eθ (|δ0 − θ|) ≤ Eθ (|δ − θ|).
11. Suppose that the variables X1, . . . , Xn form a random
sample from a distribution for which the p.d.f. or the p.f.
is f (x|θ), where θ ∈  , and let ˆ θ denote the M.L.E. of
θ. Suppose also that the statistic T is a sufficient statistic
for θ, and let the estimator δ0 be defined by the relation
δ0 = E( ˆ θ|T ). Compare the estimators ˆ θ and δ0.
12. Suppose that X1, . . . , Xn form a sequence of n Bernoulli
trials for which the probability p of success on any
given trial is unknown (0 ≤ p ≤ 1), and let T =
 n
i=1 Xi .
Determine the form of the estimator E(X1|T ).
13. Suppose that X1, . . . , Xn form a random sample from
a Poisson distribution for which the value of the mean θ is
unknown (θ > 0). Let T =
 n
i=1 Xi , and for i = 1, . . . , n,
let the statistic Yi be defined as follows:
Yi
=
 
1 ifXi
= 0,
0 ifXi > 0.
Determine the form of the estimator E(Yi
|T ).
14. Consider again the conditions of Exercise 8. Determine
the form of the estimator E( ˆ β|T ). You may wish to
use results obtained while solving Exercise 13.
15. Find the M.L.E. of exp(θ + 0.125) in Example 7.9.5.
Both the M.L.E. and the estimator in Example 7.9.5 have
the form exp(Xn
+ c) for some constant c. Find the value c
so that the estimator exp(Xn
+ c) has the smallest possible
M.S.E.
16. In Example 7.9.1, find the formula for p in terms of
θ, the mean of each Xi . Also find the M.L.E. of p and
show that the estimator δ0(T ) in Example 7.9.2 is nearly
the same as the M.L.E. if n is large.
7.10 Supplementary Exercises
1. A program will be run with 25 different sets of input.
Let θ stand for the probability that an execution error will
occur during a single run.We believe that, conditional on
θ, each run of the program will encounter an error with
probability θ and that the different runs are independent.
Prior to running the program, we believe that θ has the
uniform distribution on the interval [0, 1]. Suppose that
we get errors during 10 of the 25 runs.
a. Find the posterior distribution of θ.
b. If we wanted to estimate θ by ˆ θ using squared error
loss, what would our estimate ˆ θ be?
2. Suppose that X1, . . . , Xn are i.i.d. with Pr(Xi
= 1) = θ
and Pr(Xi
=0)=1− θ, where θ is unknown (0≤θ ≤1). Find
the M.L.E. of θ2.
3. Suppose that the proportion θ of bad apples in a large
lot is unknown and has the following prior p.d.f.:
ξ(θ) =
 
60θ2(1− θ)3 for 0 < θ <1,
0 otherwise.
Suppose that a random sample of 10 apples is drawn from
the lot, and it is found that three are bad. Find the Bayes
estimate of θ with respect to the squared error loss function.
4. Suppose that X1, . . . , Xn form a random sample from
a uniform distribution with the following p.d.f.:
f (x|θ) =
 
1
θ for θ ≤ x ≤ 2θ,
0 otherwise.
Assuming that the value of θ is unknown (θ > 0), determine
the M.L.E. of θ.
5. Suppose that X1 and X2 are independent random variables,
and that Xi has the normal distribution with mean
biμ and variance σ2
i for i = 1, 2. Suppose also that b1, b2,
σ2
1, and σ2
2 are known positive constants, and that μ is an
unknown parameter. Determine the M.L.E. of μ based on
X1 and X2.
6. Let ψ(α) =  
 
(α)/ (α) for α >0 (the digamma function).
Show that
ψ(α + 1) = ψ(α) + 1
α
.
462 Chapter 7 Estimation
7. Suppose that a regular light bulb, a long-life light bulb,
and an extra-long-life light bulb are being tested. The lifetime
X1 of the regular bulb has the exponential distribution
with mean θ, the lifetime X2 of the long-life bulb has
the exponential distribution with mean 2θ, and the lifetime
X3 of the extra-long-life bulb has the exponential
distribution with mean 3θ.
a. Determine the M.L.E. of θ based on the observations
X1, X2, and X3.
b. Let ψ = 1/θ, and suppose that the prior distribution
ofψ is the gamma distribution with parameters α and
β. Determine the posterior distribution of ψ given
X1, X2, and X3.
8. Consider a Markov chain with two possible states s1
and s2 and with stationary transition probabilities as given
in the following transition matrix P:
s1 s2
P = s1
s2
 
θ 1− θ
3/4 1/4
 
,
where the value of θ is unknown (0 ≤ θ ≤ 1). Suppose that
the initial state X1 of the chain is s1, and let X2, . . . , Xn+1
denote the state of the chain at each of the next n successive
periods. Determine the M.L.E. of θ based on the
observations X2, . . . , Xn+1.
9. Suppose that an observation X is drawn from a distribution
with the following p.d.f.:
f (x|θ) =
 
1
θ for 0 < x < θ,
0 otherwise.
Also, suppose that the prior p.d.f. of θ is
ξ(θ) =
 
θe
−θ for θ >0
0 otherwise.
Determine the Bayes estimator of θ with respect to (a) the
mean squared error loss function and (b) the absolute
error loss function.
10. Suppose that X1, . . . , Xn form n Bernoulli trials with
parameter θ = (1/3)(1+ β), where the value of β is unknown
(0 ≤ β ≤ 1). Determine the M.L.E. of β.
11. The method of randomized response is sometimes
used to conduct surveys on sensitive topics. A simple version
of the method can be described as follows:Arandom
sample of n persons is drawn from a large population. For
each person in the sample there is probability 1/2 that the
person will be asked a standard question and probability
1/2 that the person will be asked a sensitive question. Furthermore,
this selection of the standard or the sensitive
question is made independently from person to person.
If a person is asked the standard question, then there is
probability 1/2 that she will give a positive response; however
if she is asked the sensitive question, then there is
an unknown probability p that she will give a positive response.
The statistician can observe only the total number
X of positive responses that were given by the n persons
in the sample. He cannot observe which of these persons
were asked the sensitive question or how many persons in
the sample were asked the sensitive question. Determine
the M.L.E. of p based on the observation X.
12. Suppose that a random sample of four observations is
to be drawn from the uniform distribution on the interval
[0, θ], and that the prior distribution of θ has the following
p.d.f.:
ξ(θ) =
 
1
θ2 for θ ≥ 1,
0 otherwise.
Suppose that the values of the observations in the sample
are found to be 0.6, 0.4, 0.8, and 0.9. Determine the
Bayes estimate of θ with respect to the squared error loss
function.
13. For the conditions of Exercise 12, determine the
Bayes estimate of θ with respect to the absolute error loss
function.
14. Suppose that X1, . . . , Xn form a random sample from
a distribution with the following p.d.f.:
f (x|β, θ) =
 
βe
−β(x−θ) for x ≥ θ,
0 otherwise,
where β and θ are unknown (β > 0, −∞ < θ <∞). Determine
a pair of jointly sufficient statistics.
15. Suppose that X1, . . . , Xn form a random sample from
the Pareto distribution with parameters x0 and α (see Exercise
16 of Sec. 5.7), where x0 is unknown and α is known.
Determine the M.L.E. of x0.
16. Determine whether the estimator found in Exercise
15 is a minimal sufficient statistic.
17. Consider again the conditions of Exercise 15, but suppose
now that both parameters x0 and α are unknown.
Determine the M.L.E.’s of x0 and α.
18. Determine whether the estimators found in Exercise
17 are minimal jointly sufficient statistics.
19. Suppose that the random variable X has a binomial
distribution with an unknown value of n and a known
value of p (0 <p <1). Determine the M.L.E. of n based
on the observation X. Hint: Consider the ratio
f (x|n + 1, p)
f (x|n, p)
.
20. Suppose that two observations X1 and X2 are drawn
at random from a uniform distribution with the following
p.d.f.:
f (x|θ) =
  1
2θ for 0 ≤ x ≤ θ or 2θ ≤ x ≤ 3θ,
0 otherwise,
7.10 Supplementary Exercises 463
where the value of θ is unknown (θ > 0). Determine the
M.L.E. of θ for each of the following pairs of observed
values of X1 and X2:
a. X1 = 7 and X2 = 9
b. X1 = 4 and X2 = 9
c. X1 = 5 and X2 = 9
21. Suppose that a random sample X1, . . . ,Xn is to be
taken from the normal distribution with unknown mean
θ and variance 100, and the prior distribution of θ is the
normal distribution with specified mean μ0 and variance
25. Suppose that θ is to be estimated using the squared
error loss function, and the sampling cost of