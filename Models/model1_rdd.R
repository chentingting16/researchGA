library(car)
library(lme4)
library(stats)
library(tidyverse)
library(MuMIn)

#commit rdd
# 1、number of mergecommit
loandata1=data.frame(read.csv('C:/Users/ChenTingting/Desktop/Acitons/R_data/rdd_mergecommit.csv' ,header = 1))
loandata1$pid <- as.character(loandata1$pid)
loandata1$language <- as.factor(loandata1$language)
head(loandata1)
fit_merge_commit <- lmer(log(merge_commits) ~ log(total_commit)+log(nonmerge_commits)+ageAtActions+log(contributorsize)+time+time_after_intervention+interventionTRUE+(1|pid)+(1|language),data=loandata1)
summary(fit_merge_commit)
AIC(fit_merge_commit)
anova(fit_merge_commit)
r.squaredGLMM(fit_merge_commit)
vif(fit_merge_commit)     

# 2、number of nonmerge commits
loandata2=data.frame(read.csv('C:/Users/ChenTingting/Desktop/Acitons/R_data/rdd_nonmergecommit.csv' ,header = 1))
loandata2$pid <- as.character(loandata2$pid)
loandata2$language <- as.factor(loandata2$language)
head(loandata2)
fit_nonmerge_commit <- lmer(log(nonmerge_commits) ~ log(total_commit) + ageAtActions + time +  log(contributorsize)+ time_after_intervention + interventionTRUE  + workflow + (1 | pid) + (1 | language),data=loandata2)
summary(fit_nonmerge_commit)
AIC(fit_nonmerge_commit)
anova(fit_nonmerge_commit)
r.squaredGLMM(fit_nonmerge_commit)
vif(fit_nonmerge_commit)     



#issue rdd
# 1、number of issues closed
loandata4=data.frame(read.csv('C:/Users/ChenTingting/Desktop/Acitons/R_data/rdd_issue_close.csv' ,header = 1))
loandata4$pid <- as.character(loandata4$pid)
loandata4$language <- as.factor(loandata4$language)
head(loandata4)
fit_issue_closed <- lmer(log(closedissues)~log(total_commit)+ageAtActions+ log(contributorsize)+time+time_after_intervention+interventionTRUE+(1|pid)+(1|language),data=loandata4)
summary(fit_issue_closed)
plot(fit_issue_closed)
AIC(fit_issue_closed)
anova(fit_issue_closed)
r.squaredGLMM(fit_issue_closed)
vif(fit_issue_closed)    

# 2、mean issue latency
loandata5=data.frame(read.csv('C:/Users/ChenTingting/Desktop/Acitons/R_data/rdd_issue_latency.csv' ,header = 1))
loandata5$pid <- as.character(loandata5$pid)
loandata5$language <- as.factor(loandata5$language)
head(loandata5)
fit_issue_latency <- lmer(log(AVGlatency)~log(total_commit)+log(contributorsize)+ageAtActions+time+time_after_intervention+interventionTRUE+workflow+(1|pid)+(1|language),data=loandata5)
summary(fit_issue_latency)
plot(fit_issue_latency)
AIC(fit_issue_latency)
anova(fit_issue_latency)
r.squaredGLMM(fit_issue_latency)
vif(fit_issue_latency)    



#pr rdd
# 1、number of pr closed
loandata7=data.frame(read.csv('C:/Users/ChenTingting/Desktop/Acitons/R_data/rdd_pr_close.csv' ,header = 1))
loandata7$pid <- as.character(loandata7$pid)
loandata7$language <- as.factor(loandata7$language)
head(loandata7)
fit_pr_closed <- lmer(log(pr)~log(total_commit)+ ageAtActions +log(contributorsize) +time+time_after_intervention+interventionTRUE+(1|pid)+(1|language),data=loandata7)
summary(fit_pr_closed)
plot(fit_pr_closed)
AIC(fit_pr_closed)
anova(fit_pr_closed)
r.squaredGLMM(fit_pr_closed)
vif(fit_pr_closed) 

# 2、mean issue latency
loandata8=data.frame(read.csv('C:/Users/ChenTingting/Desktop/Acitons/R_data/rdd_pr_latency.csv' ,header = 1))
loandata8$pid <- as.character(loandata8$pid)
loandata8$language <- as.factor(loandata8$language)
head(loandata8)
fit_pr_latency <- lmer(log(latency)~log(total_commit)+ageAtActions+log(contributorsize)+time+time_after_intervention+interventionTRUE+(1|pid)+(1|language),data=loandata8)
summary(fit_pr_latency)
plot(fit_pr_latency)
AIC(fit_pr_latency)
anova(fit_pr_latency)
r.squaredGLMM(fit_pr_latency)
vif(fit_pr_latency)
