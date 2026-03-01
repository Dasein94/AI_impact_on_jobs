# AI IMPACT ON JOBS BY 2030
**Which jobs are at risk of automation?**

## Dataset: [https://www.kaggle.com/datasets/khushikyad001/ai-impact-on-jobs-2030](URL)

## Overview
This exploratory analysis focuses on various jobs that can be automatized by 2030. The dataset presents a forecast using synthetic data on how much AI and the technology growth will impact jobs, chance jobs will get automatized by 2030, as well as salary, education, experience required, and skills needed to perform the job (set at random). The objective of this project is to practice excel skills by checking which jobs are at risk of automation by 2030. Furthermore, reasons of automation will be considered. 

🎯 **Research questions**
-	Q1: Are there differences on automation risk of jobs between those with more experience and education against those with less experience and education? 
-	Q2: General descriptive analysis of data patterns with other variables
   
## Structure of the project

```
📁 AI_impact_on_jobs/
├── 📄 README.md
├── 📄 Project.xlsm
├── 📕 Full report.pdf
└── 📁 VBA/
    ├── 📄 Modulo1.bas
    ├── 📄 Modulo2.bas
    ├── 📄 Modulo3.bas
    └── 📄 Hoja1.cls

```

- Project.xlsm – excel with both original and modified dataset, pivot tables, graphics, and dashboard.
- Full report.pdf – Results
- Modulo1.bas – dashboard update 
- Modulo2.bas – reset education 
- Modulo3.bas – reset experience 
- Hoja1.cls – Event-triggered automation (validation cell) 
- README.md – Project description

*Requirements – Microsoft Excel, enable macros permission* 

## Process
1.	Creation of a unique reference number (ID) for every row 
2.	Years of experience were categorized using quartile-based cut-offs *(Q1=7, Q2=15, Q3=22)* to obtain balanced experience groups
3.	Transformation of Salary ($) column to K (salary/1000) and rounded up to 1 decimal place.
4.	Analysis simplification - Creation of Overall Skill column which is an average of 10 independent skills 
5.	Checking potential duplicates
6.	Exploratory analyses using descriptive statistics and graphs 
7.	Building dashboard, validation cell to write or select a job, and macros to automatically change the graphs according to education, experience and job filters (vba code).

 <img width="904" height="313" alt="db jobs" src="https://github.com/user-attachments/assets/782df91c-0339-481e-b677-c63b2e3f77bc" />


## 📈 Key findings
- Job types that will end up automatized do not change much at varying levels of education and experience. 
- The less educated/experienced folks the more automatized the jobs become by 2030
-  Education level alone does not influence on automation risk. Low and high experience groups have slightly more automation risk than lower-mid, and upper-mid groups.
- Automation risk does not influence independently on tech growth factor, AI exposure index, salary and overall skills.
- There is more variability in AI exposure index with more education level. A positive trend between AI exposure and automation probability has been found for people with PhD & low experience.
- People with high experience & high school or master's level will have lesser salary the more automatized their jobs become by 2030
- There are non-significant small changes between overall skills and automation risk across samples.

