# Project Background
The human resources data analytics project was conducted using sample data, the structure, methodology, and approach were designed to reflect real-world business scenarios. This ensures that the insights generated and the analytical framework applied can be replicated in real organizational contexts.

This project was developed in order to better understand employee turnover dynamics and support decision-making within the human resources area. The initiative was created to provide a structure and data-driven view of employee movements over time, enabling the identification and evaluation of key factors related to hiring, retention, and termination processes.

Insights and recommendations are provided on the following key areas:
* **Turnover trends analysis over time:** Evaluation of turnover trends over time to understand changes in employee movement patterns and assess the company’s progress in workforce stability.
* **Layoffs level:** Evaluation of layoffs distribution by department and cause to understand the primary factors contributing to employee terminations.
* **Average stay time:** Analysis of average employee tenure across departments to evaluate workforce stability and identify patterns in retention over time.

An interactive Power BI dashboard can be dowload here
The SQL queries to inspect and perform quickly checks can be found here
The SQL queries to clean, organize and prepare the data for the dashboard can be found here

# Data Structure & Initial Checks
After the cleaning and organizing process the database structure consisted of four tables: human_resources, employees, termination_causes and roles, with a total row count of 1471.

<img width="3958" height="1919" alt="Imagem2" src="https://github.com/user-attachments/assets/3e57ef5c-cd15-49c3-ad1e-82b245ff96f6" />

Initially, for familiarization with the dataset and to maintain the data quality a variety of checks were conducted. The SQL queries executed in this process can be found here.

# Executive Summary
### Overview of Findings
Although the turnover rate decreased over time to a more stable level starting with a peak of 223,28% followed by 15,92%, the human resources department remains some challenges with the workforce, which still has concentrated layoffs in key departments that led us to analyze and suggest a difficulty in employee retention, especially in the early stages.

Below is the overview page from the PowerBI dashboard where you could find more examples included throughtout the report. The entire interactive dashboard can be dowloaded here

<img width="1418" height="744" alt="image" src="https://github.com/user-attachments/assets/d382d289-7782-4cc6-88c7-dd9ab1343a81" />

### Turnover Over Time:
At the beginning of the analyzed period the turnover had a higher-level behavior with a peak of 223,28% which decrease rate was 32,33% through time and targeted an acceptable level in 2010 and maintaining with a little oscillation until the end up with 15,92% of rate. This indicates an increase in an organizational workforce at the same time as the HR process has matured.

<img width="1184" height="313" alt="image" src="https://github.com/user-attachments/assets/c5750ff0-edfc-4395-8137-d824b66cdb39" />

**Obs: As was presented at the turnover analysis topic, the rate starts off to be at an acceptable level in the year 2010, therefore the analysis that will be present through this discus will be filtered by the layoffs in the period of 2010 and 2020, highlighting the positive and negative points, in addition to those presented before.**

### Layoffs by Department:
The analysis indicated that in almost every year the operational and commercial departments with the most layoffs, follow by the training department that starts to appear in the year 2011 and continues to appear in almost year until the last year of the analysis.

At the beginning of the period these departments summarized 91,67% of all layoffs and at the end of the period they summarized 73,82%, that’s represent a fall of 17,85%, however, one point to be highlight is in the 2010 just had three departments (Operational, Commercial and Logistic) that had layoffs, therefore, that could contributed for these high result at this year. Regarding the entire period analyzed the department’s Operational, Commercial and Training represent 73,82% of all layoffs and one point to be highlighted is the fact of an increase of 15,04% in layoffs at the Commercial department through the period analyzed and a decrease of 50,64% at the Operational department, however, this decrease don’t take off your high participation in all layoffs in the end of the period, basically the increase of the participation of the Commercial department and others contributed for this event.

<img width="1181" height="469" alt="image" src="https://github.com/user-attachments/assets/a4d28729-cd1b-48ad-b339-6fd48fce5b54" />

### Average Stay Time by Department:
Furthermore, one of the insights that led us to believe the company has a problem with the hiring and onboarding process are the average stay time breakdown by department which highlights the fact of in almost all of them the company has an issue. When dealing with a result that seeks large-scale results the main insights are returned about the departments with the most layoffs quantity, however, the others also can be highlighted.

<img width="4268" height="1319" alt="Imagem1" src="https://github.com/user-attachments/assets/5e839599-52ae-4d37-b0de-47c49375f6ee" />

### Layoffs by Cause:
Throughout the period analyzed it was indicated that the high percentage of the layoffs was initiated by the company, therefore it could indicate a weakness in the hiring and onboarding process even with an acceptable retention rate, possibly related with some aspects of the human resources process, such as bad hiring process, poor candidate selection, mismatch between role and employee, and others.

With the applied analysis was found the main causes of layoffs was “Inic.Empresa s/Justa Causa”, “Transferencia p/Outra Filial” and Inic.Empregado c/Justa Causa” that represents 74,89% of all causes of layoffs which a 66,31% was generated without any just cause and 8,58% was generated with a just cause. These causes represent a high part throughout the period, however, from 2017 the company decreases your layoffs with just cause but without a decrease in all layoffs followed just appears more controlled at the end of the period.

<img width="1187" height="472" alt="image" src="https://github.com/user-attachments/assets/39cd0186-28b1-4103-85db-d497a878c0a9" />

# Results
With all analysis carried out, it was found that even with a decrease in the level of the turnover rate you’re maintaining throughout the period it doesn’t mean that the human resources department is executing good work in all aspects of the process, it has some points that need to be highlighted and improved. The company presents a problem in our hiring and onboarding process specially at the Operational, Commercial and Training departments which represent 70,73% of all layoffs at the 2020 and 73,82% throughout the period analyzed showing that isn’t a new topic at the company but has a large scale of your process for a long time, however, the decreasing in 50,64% throughout the period at the Operational department need to be highlighting but on the other hand the company need to follow the increasing of the layoffs at the Commercial department which increase 15,04% throughout the period, and the fact of the more than 74,89% of all layoffs was initiated by the company prove this issues in some aspects of the human resources department process. In other respects, the company doesn’t present any negatively compromising points, only require analysis of some aspects of its process within the main departments that make up your workforce.

In summary whether analyzed just the good level of the turnover rate and the company layoffs by department, these two information probably won`t led us to a actionable result, however,  when all information’s analyzed are crossed and the cause of layoffs are brought together with the average stay time it transform the analyze in something more actionable, highlighting that mostly of the layoffs are initiated by the company and the average time that an employee stay in each department wasn’t much that could mean some issues on the hiring and onboarding process.

# Recommendations
1.	**Reduce mismatch between the candidate’s profile and job requirements:** The applied analysis returns some issues on the hiring process; therefore, it’s recommended conduct a full review of hiring process criteria across departments, first especially those have a more impact on the layoff’s quantity (Operational, Commercial and Training) to apply across the others after.
*	Compare job description with actual jobs activities
*	Analyze profiles of terminated employees to identify patterns
*	Implement standardized selection methods (Structure interviews; Role-specific assessment)

👉 Expected impact: Reduction in company-initiated layoffs and improvement in employee fit.

2.	**Increase early-stage retention and employee adaptation:** In addition to the issues on hiring process, the onboarding process which walk side by side presents an impact on the found issues, therefore the company needs to mapping the current onboarding process trying to figure out gaps in role clarity, training effectiveness and manager support, furthermore compare the onboarding practices across departments with different results oriented to implemented a clear onboarding approach and regular performance feedback cycles.

👉 Expected impact: Increase in average stay time and reduction in early dismissals.

While these two areas represent the primary drivers of the identified issues, additional actions should be considered to support long-term improvement. These include implementing early tenure monitoring, reviewing dismissal criteria, and conducting more detailed analyses at the department level to identify specific operational or management-related challenges.

In summary, improving hiring and onboarding processes should be treated as strategic priorities, while the supporting actions will ensure greater control, consistency, and sustainability of results over time.













