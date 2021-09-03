# GA Replication package

Our reproducibility package (data and scripts) for GA study (Our [QRS'21](https://qrs21.techconf.org/) paper). 

## Quantitative study

### Data

#### Basic information of popular projects
- project_info.csv: starrank, id, name, fork,	url, size, stargazers_count, watchers_count, language, has_issues, has_projects, has_downloads, forks_count, open_issues_count,	forks, watchers,	default_branch,	withaction,	age,	contributorsize,	ownertype
 
#### Configuration data
- javaActionSequence.csv: action, jobnum, id

#### RDD data
- rdd_mergecommit.csv: pid, total_commit, total_nonmerge_commit, merge_commits,	ageAtActions,	contributorsize, time, interventionTRUE, time_after_intervention, merge_commits, language	
- rdd_nonmergecommit.csv: pid, total_commit, total_nonmerge_commit, nonmerge_commits,	ageAtActions,	contributorsize, time, interventionTRUE, time_after_intervention, merge_commits, language	
- rdd_issue_close.csv: pid,	total_commit,	total_nonmerge_commit, closedissues, contributorsize,	time,	interventionTRUE,	time_after_intervention, language,actionsadoptage
- rdd_issue_latency.csv: pid,	AVGlatency,	time,	language,	workflow,	total_commit,	total_nonmerge_commit, ageAtActions, contributorsize,	interventionTRUE,	time_after_intervention
- rdd_pr_close.csv: pid, time, pr, contributorsize,	ageAtActions,	total_commit, total_nonemerge_commit,	interventionTRUE,	time_after_intervention, language
- rdd_pr_latency.csv: pid, time, latency, contributorsize, ageAtActions, total_commit, total_nonemerge_commit, interventionTRUE, time_after_intervention,	language

### Models

Data tables and R scripts.

- Model-1: Popular sequences model
- Model-2: RDD model
