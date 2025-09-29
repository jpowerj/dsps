---
numbering: false
---

# Preface

Digitization of DeGroot and Schervish, *Probability and Statistics (Fourth Edition)*, by Jeff Jacobs, Assistant Teaching Professor of Data Science and Analytics, Georgetown University.

### Changes in the Digitized Version

To match the notation we're using in DSAN 5100, I have made the following changes (which could be undone via a find-and-replace, if you want to change the format back to the original textbook format):

<!-- * The book uses capital letters like $X$ to denote random variables, and then lowercase versions of the same letters like $x$ to denote the **values** that random variables can take on. To match the notation we use in class, I have updated these cases to instead use the letter $v$ to denote some particular **value** that a random variable can take on.
    * So, for example, I write the CDF of a random variable $X$ as $f_X(v) = \Pr(X \leq v)$, rather than $f_X(x) = \Pr(X \leq x)$. -->
* The book uses the term **probability function**, and the abbreviation **p.f.**, to refer to the function $p_X(x)$ that gives us the probability that a discrete random variable $X$ takes on the value $x$. To match the notation we use in class, I have changed this throughout to use the term **probability mass function**, and the abbreviation **pmf**.
* Similarly, I make sure to use (lowercased) **pdf** to refer to the **probability density function**, and **CDF** (uppercased) to refer to the **cumulative density function**.

### Changes to the Fourth Edition

* I have reorganized many main results that were included in the body of the text by labeling them as theorems in order to facilitate students in finding and referencing these results.
* I have pulled the important defintions and assumptions out of the body of the text and labeled them as such so that they stand out better.
* When a new topic is introduced, I introduce it with a motivating example before delving into the mathematical formalities. Then I return to the example to illustrate the newly introduced material.
* I moved the material on the law of large numbers and the central limit theorem to a new @sec-6. It seemed more natural to deal with the main large-sample results together.
* I moved the section on Markov chains into @sec-3. Every time I cover this material with my own students, I stumble over not being able to refer to random variables, distributions, and conditional distributions. I have actually postponed this material until after introducing distributions, and then gone back to cover Markov chains. I feel that the time has come to place it in a more natural location. I also added some material on stationary distributions of Markov chains.
* I have moved the lengthy proofs of several theorems to the ends of their respective sections in order to improve the flow of the presentation of ideas.
* I rewrote @sec-7-1 to make the introduction to inference clearer.
* I rewrote @sec-9-1 as a more complete introduction to hypothesis testing, including likelihood ratio tests. For instructors not interested in the more mathematical theory of hypothesis testing, it should now be easier to skip from @sec-9-1 directly to @sec-9-5.

Some other changes that readers will notice:

* I have replaced the notation in which the intersection of two sets $A$ and $B$ had been represented $AB$ with the more popular $A \cap B$. The old notation, although mathematically sound, seemed a bit arcane for a text at this level.
* I added the statements of Stirling's formula and Jensen's inequality.
* I moved the law of total probability and the discussion of partitions of a sample
space from @sec-2-3 to @sec-2-1.
* I define the cumulative distribution function (CDF) as the prefered name of what used to be called only the distribution function (DF).
* I added some discussion of histograms in @sec-3 and @sec-6.
* I rearranged the topics in @sec-3-8 and @sec-3-9 so that simple functions of random variables appear first and the general formulations appear at the end to make it easier for instructors who want to avoid some of the more mathematically challenging parts.
* I emphasized the closeness of a hypergeometric distribution with a large number of available items to a binomial distribution.
* I gave a brief introduction to Chernoff bounds. These are becoming increasingly important in computer science, and their derivation requires only material that is already in the text.
* I changed the definition of confidence interval to refer to the random interval rather than the observed interval. This makes statements less cumbersome, and it corresponds to more modern usage.
* I added a brief discussion of the method of moments in @sec-7-6.
* I added brief introductions to Newton's method and the EM algorithm in @sec-7.
* I introduced the concept of pivotal quantity to facilitate construction of confidence intervals in general.
* I added the statement of the large-sample distribution of the likelihood ratio test statistic. I then used this as an alternative way to test the null hypothesis that two normal means are equal when it is not assumed that the variances are equal.
* I moved the Bonferroni inequality into the main text (@sec-1) and later (@sec-11) used it as a way to construct simultaneous tests and confidence intervals.

### How to Use This Book

The text is somewhat long for complete coverage in a one-year course at the undergraduate level and is designed so that instructors can make choices about which topics are most important to cover and which can be left for more in-depth study. As an example, many instructors wish to deemphasize the classical counting arguments that are detailed in Sections [-@sec-1-7]–[-@sec-1-9]. An instructor who only wants enough information to be able to cover the binomial and/or multinomial distributions can safely discuss only the definitions and theorems on permutations, combinations, and possibly multinomial coefficients. Just make sure that the students realize what these values count, otherwise the associated distributions will make no sense. The various examples in these sections are helpful, but not necessary, for understanding the important distributions. Another example is @sec-3-9 on functions of two or more random variables. The use of Jacobians for general multivariate transformations might be more mathematics than the instructors of some undergraduate courses are willing to cover. The entire section could be skipped without causing problems later in the course, but some of the more straightforward cases early in the section (such as convolution) might be worth introducing. The material in Sections [-@sec-9-2]–[-@sec-9-4] on optimal tests in one-parameter families is pretty mathematics, but it is of interest primarily to graduate students who require a very deep understanding of hypothesis testing theory. The rest of @sec-9 covers everything that an undergraduate course really needs.

In addition to the text, the publisher has an **Instructor's Solutions Manual**, available for download from the Instructor Resource Center at [www.pearsonhighered.com/irc](https://www.pearsonhighered.com/irc), which includes some specific advice about many of the sections of the text.

I have taught a year-long probability and statistics sequence from earlier editions of this text for a group of mathematically well-trained juniors and seniors. In the first semester, I covered what was in the earlier edition but is now in the first five chapters (including the material on Markov chains) and parts of @sec-6. In the second semester, I covered the rest of the new @sec-6, Chapters [-@sec-7]–[-@sec-9], Sections [-@sec-11-1]-[-@sec-11-5], and @sec-12. I have also taught a one-semester probability and random processes course for engineers and computer scientists. I covered what was in the old edition and is now in Chapters [-@sec-1]–[-@sec-6] and @sec-12, including Markov chains, but not Jacobians. This latter course did not emphasize mathematical derivation to the same extent as the course for mathematics students.

A number of sections are designated with an asterisk (*). This indicates that later sections do not rely materially on the material in that section. This designation is not intended to suggest that instructors skip these sections. Skipping one of these sections will not cause the students to miss definitions or results that they will need later. The sections are @sec-2-4, @sec-3-10, @sec-4-8, @sec-7-7, @sec-7-8, @sec-7-9, @sec-8-6, @sec-8-8, @sec-9-2, @sec-9-3, @sec-9-4, @sec-9-8, @sec-9-9, @sec-10-6, @sec-10-7, @sec-10-8, @sec-11-4, @sec-11-7, @sec-11-8, and @sec-12-5. Aside from cross-references between sections within this list, occasional material from elsewhere in the text does refer back to some of the sections in this list. Each of the dependencies is quite minor, however.

Most of the dependencies involve references from @sec-12 back to one of the optional sections. The reason for this is that the optional sections address some of the more difficult material, and simulation is most useful for solving those difficult problems that cannot be solved analytically. Except for passing references that help put material into context, the dependencies are as follows:

* The sample distribution function (@sec-10-6) is reintroduced during the discussion of the bootstrap in @sec-12-6. The sample distribution function is also a useful tool for displaying simulation results. It could be introduced as early as @exm-12-3-7 simply by covering the first subsection of @sec-10-6.
* The material on robust estimation (@sec-10-7) is revisited in some simulation exercises in @sec-12-2 (Exercises [-@exr-12-2-4], [-@exr-12-2-5], [-@exr-12-2-7], and [-@exr-12-2-8]).
* @exm-12-3-4 makes reference to the material on two-way analysis of variance (Sections [-@sec-11-7] and [-@sec-11-8]).

### Supplements

The text is accompanied by the following supplementary material:

* **Instructor's Solutions Manual** contains fully worked solutions to all exercises in the text. Available for download from the Instructor Resource Center at [www.pearsonhighered.com/irc](www.pearsonhighered.com/irc).
* **Student Solutions Manual** contains fully worked solutions to all odd exercises in the text. Available for purchase from MyPearsonStore at [www.mypearsonstore.com](www.mypearsonstore.com). (ISBN-13: 978-0-321-71598-2; ISBN-10: 0-321-71598-5)

### Acknowledgments

There are many people that I want to thank for their help and encouragement during this revision. First and foremost, I want to thank Marilyn DeGroot and Morrie's children for giving me the chance to revise Morrie's masterpiece.

I am indebted to the many readers, reviewers, colleagues, staff, and people at Addison-Wesley whose help and comments have strengthened this edition. The reviewers were:

* Andre Adler, Illinois Institute of Technology
* E.N. Barron, Loyola University
* Brian Blank,Washington University in St. Louis
* Indranil Chakraborty, University of Oklahoma
* Daniel Chambers, Boston College
* Rita Chattopadhyay, Eastern Michigan University
* Stephen A. Chiappari, Santa Clara University
* Sheng-Kai Chang, Wayne State University
* Justin Corvino, Lafayette College
* Michael Evans, University of Toronto
* Doug Frank, Indiana University of Pennsylvania
* Anda Gadidov, Kennesaw State University
* Lyn Geisler, Randolph–Macon College
* Prem Goel, Ohio State University
* Susan Herring, Sonoma State University
* Pawel Hitczenko, Drexel University
* Lifang Hsu, Le Moyne College
* Wei-Min Huang, Lehigh University
* Syed Kirmani, University of Northern Iowa
* Michael Lavine, Duke University
* Rich Levine, San Diego State University
* John Liukkonen, Tulane University
* Sergio Loch, Grand View College
* Rosa Matzkin, Northwestern University
* Terry McConnell, Syracuse University
* Hans-Georg Mueller, University of California–Davis
* Robert Myers, Bethel College
* Mario Peruggia, The Ohio State University
* Stefan Ralescu, Queens University
* Krishnamurthi Ravishankar, SUNY New Paltz
* Diane Saphire, Trinity University
* Steven Sepanski, Saginaw Valley State University
* Hen-Siong Tan, Pennsylvania University
* Kanapathi Thiru, University of Alaska
* Kenneth Troske, Johns Hopkins University
* John Van Ness, University of Texas at Dallas
* Yehuda Vardi, Rutgers University
* Yelena Vaynberg, Wayne State University
* Joseph Verducci, Ohio State University
* Mahbobeh Vezveai, Kent State University
* Brani Vidakovic, Duke University
* Karin Vorwerk, Westfield State College
* Bette Warren, Eastern Michigan University
* Calvin L. Williams, Clemson University
* Lori Wolff, University of Mississippi

The person who checked the accuracy of the book was Anda Gadidov, Kennesaw State University. I would also like to thank my colleagues at Carnegie Mellon University, especially Anthony Brockwell, Joel Greenhouse, John Lehoczky, Heidi Sestrich, and Valerie Ventura.

The people at Addison-Wesley and other organizations that helped produce the book were Paul Anagnostopoulos, Patty Bergin, Dana Jones Bettez, Chris Cummings, Kathleen DeChavez, Alex Gay, Leah Goldberg, Karen Hartpence, and Christina Lepre.

If I left anyone out, it was unintentional, and I apologize. Errors inevitably arise in any project like this (meaning a project in which I am involved). For this reason, I shall post information about the book, including a list of corrections, on my Web page, [https://www.stat.cmu.edu/~mark](https://www.stat.cmu.edu/~mark){target="_blank"}, as soon as the book is published. Readers are encouraged to send me any errors that they discover.

Mark J. Schervish

October 2020
