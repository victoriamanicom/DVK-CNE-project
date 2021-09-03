# Cloud Native Engineer - Practical Project - DevOps
### Danny Martin, Katie Barrett, Victoria Manicom
QAC SFIA2 Project
=================

Project brief:
--------------

Engineer a Continuous Integration pipeline to encompass all of the technologies learned in the DevOps training and successfully deploy the application.

-   Continuous Integration

-   Containerisation

-   Cloud Solutions

-   Infrastructure Management

-   Orchestration

This project tested our ability to efficiently deploy a working Flask application making use of an architecture comprising 2 services.

The technologies we used in this project:

-   Project Management: Jira Scrum board

-   Version Control: Git

-   CI Server: Jenkins

-   Cloud Server: AWS EC2

-   Database Server: AWS RDS

-   Containerisation: Docker

-   Reverse Proxy: NGINX

* * * * *

### Project Management/Version Control:

#### Risk Assessment:

As part of the design phase we generated a risk assessment to analyse potential risks to our project and discussed control measures that we could put in place to mitigate these factors. It influenced our application structure and design, and helped us to prioritise our issue and epics within our Jira board.

|

Description

 |

Evaluation

 |

Likelihood

 |

Impact Level

 |

Responsibility

 |

Response

 |

Control Measures

 |
|

1\. Application's virtual machine goes down

 |

Application goes offline

 |

Low

 |

High

 |

AWS

 |

Recreate infrastructure on another machine

 |

Use infrastructure as code to quickly recreate machine & store all code in VCS

 |
|

2\. Merge conflicts compromise build

 |

Deployed product may be compromised

 |

Low

 |

Medium

 |

Developers

 |

Revert production to most recent stable version

 |

Regular commits. Automate tests before any deployment & restrict access to development branch

 |
|

3\. Developers lose internet connection

 |

Causes breaks in the workflow

 |

High

 |

Low

 |

Developers

 |

Reconnect to internet and call, ensure team is in contact via other mediums to ensure work can continue.

 |

Work near router, use ethernet cable when possible, reduce other machines using the router.

 |
|

4\. Covid Vaccine

 |

Developers requiring Covid 19 vaccinations, may cause illness

 |

Low

 |

Medium (Team of three, would affect team of two more)

 |

Developers

 |

Keep team members informed if you are unable to perform tasks, rest and get well.

 |

Forward planning so that remaining team members can continue with the work until reunited.

 |
|

5\. Insecure security group settings

 |

Security groups should only allow access to the minimum necessary ports, passwords and credentials to be kept private.

 |

Low

 |

High

 |

Developers

 |

In the event of a security breach temporarily take down the EC2 and change the passwords. Evaluate security settings and improve where necessary.

 |

Ensure passwords and credentials are kept private, ensure passwords are strong, put backend and databases in private networks, minimise port access on public networks to only those necessary.

 |
|

6\. Application's virtual machine is overwhelmed

 |

Application's virtual machine is unable to keep up with demand.

 |

Medium

 |

High

 |

Developers

 |

Application scales up and down as needed.

 |

Auto scaling groups with suitable CPU, selection of an appropriate initial size EC2.

 |
|

7\. Reliance on one lead computer to build/deploy application

 |

If lead computer goes down, whole team unable to work.

 |

Low

 |

High

 |

Developers

 |

Lead computer choice must be based on availability of team member and good internet

 |

Ensure that any documents can be shared/ access to shared github and resources, in worse case code can be taken and redeployed on new virtual machine.

 |

To ensure the risk assessment was utilised we created a daily incident report to allow us to reassess where necessary. As incidents occurred we adapted our working style to prevent future incidents. For example, to reduce disruption to workflow, we  ensured that more than one team member had access to the documentation and was added as a contributor to our GitHub repository so that work could continue if a team member was called out to a one-to-one meeting.

|

Date

 |

Incident

 |

Effect

 |

Response

 |

Result

 |
|

31/08/2021

 |

KB's internet kept dropping throughout the day

 |

Losing connection to video call, disrupting workflow

 |

Reset internet at end of day

 |

Connectivity issues eliminated for following days

 |
|

01/09/2021

 |

KB and DM called out of call for one-to-one

 |

Disruption of workflow

 |

KB kept one-to-one short, planned for VM one-to-one (VM has main machine) to stop disruption, have allocated work that KB and DM can complete with main machine access

 |

Minimal disruption

 |
|

02/09/2021

 |

DM Covid vaccine appointment in middle of workday

 |

Disruption to workflow with one team member missing

 |

Moved appointment to outside working hours

 |

No disruption to workflow

 |

We placed each risk into a matrix, which enabled us to see what risk needed higher prioritisation and where control measures needed to be strict. Combining our risk assessment and our matrix assisted us in creating detailed issues on our Jira board.

#### Jira/Git:![](https://lh5.googleusercontent.com/v_7OEVkzB9SOgCK7NZ7Tj4aWNzNQLVubHey1QYqir25AMSa_h2ox2MKUZqpBmj8gBlBQWW8dMrAsrp1oYRvwlJ_KFd1Tlaz0AizGOjsdWYRdAq5HH6euPhMpfLbbLxLhLFyUrlpA=s0)

Before starting any builds in this project we created a shared Jira board modelled as a Scrum board and set out our epics for the project (Planning, Building, Testing, Deploying). We connected our GitHub repository to our Jira board so we could make smart commits throughout the project to keep our progress clear.\
![](https://lh3.googleusercontent.com/3neXGQPcq72-_vGK2ArzuLqzAl18_2-NKRxYs2PjsmJAef-BzRwRMJQ3DdRZUneAaWheomNhu7mpxbPVfyxipQSNZ5mNNlFVFJ06cIhkKGDosqfIzcNHjpsLXTa4R-2I39_wGqmT=s0)

We prioritised our epics to make sure we were focusing our efforts in the right place and spending appropriate amounts of time on each area. We also created child and linked issues to make sure that we were aware if one part of the project needed to be completed before another.\
![](https://lh3.googleusercontent.com/LLrO_2rjmvzYckm0PzqhSzZ0qh8yYADPeE8kxwnSMZYpk0HYgXNZND-IsUX_tJPQgxl1qPyC2d5CXl69Hsahq0Tr920CjOQHiF5BS-W6lNoX8a0D7rc15hlBbf1LveMLAFgtM9BY=s0)

We carried out sprints over the project to split the work into sections, e.g. we created a sprint for our EC2 set-up to ensure that we had everything we needed installed on our EC2 and all the correct security settings before moving on to avoid any issues in the future.

We used Jira's built in reports to assess our efficiency and sprint allocations. Looking at our first sprint's burn-down chart we could see that our story point allocations weren't as accurate as we had thought so in future we used the planning poker application to allocate our story points which in future sprints meant we followed the sprint's guideline more closely.

1st sprint's burn-down chart:![](https://lh5.googleusercontent.com/NbFM80Q9W4ClrgK6j1r4yPmv-fOGMwdFoWoRdCCwj7ewQ80p98hrUlPHbLVJ6S_kRg9WXsDfisbPvmC4XgHSyQvLES9N7Tmpi7zAh2PPpA_yy1j4x4lWnrJiCEMkVA_z8GRQ8cm8=s0)

5th sprint's burn-down chart:![](https://lh4.googleusercontent.com/gSaqrDlkco8Q64mNJ2mboXRznSx1tuQtyz1oIELPJPCGDK2bfR6aM_54DvzmeEXW_HoeJKIOPlePinG6tLP03skIMhVvDB__nkKRreiGNNkDDQJGmBtCIO18d-NSioqny5bevVDQ=s0)

Throughout the project we regularly committed our source code to Git with smart commits for our Jira board, including useful comments to show what update was made with each version.\
![](https://lh4.googleusercontent.com/6zw5gmKDwUoTqcq_QFnFoZvPUZTQ98tm8V4m2oRr7yAkTtEG17OCiZ2xIJ-Vc1vaGFhasXLsCSW2jN1FfPGdFbkktBxvMvR6Ck9gXggqRwzVETKs-INliEm57jhr16x8aQAryS4R=s0)

We used a feature branch model matched to our Jira sprints to allow us to work on the different areas of our project without disturbing the main source code base. This meant that the main branch never contained broken code, which was advantageous to our continuous integration environment.\
![](https://lh3.googleusercontent.com/HwN9P71ObF8LqlLI9JJwu9YbwbvzjiCpZRykV3KMb9S-nHkF-wesL7JeThF93wwvQYRfiRpwQziLmmxWp5PU2H2jV2RQVseHSD-oADvjzHQkkz_GbYhG5pbNBd-nzSNsZa7npVMe=s0)![](https://lh4.googleusercontent.com/fP_wHQRFvan0UtKQ-DVcZJDpVs6qYUUIqwH-j4UVm-8qTMOeXXkNDNkbveExPCqPcbSKsmLNWbpcPXaNXOWxWYDljmZrYevp0pFRMjjGF4T8J36Ip_gL05fsZEc6IdAkJk64S1Oh=s0)

We implemented branch protection rules to force peer reviews on any pull requests made, ensuring that the updates were correct before approval.

![](https://lh3.googleusercontent.com/oClN4iastsN_WuXfhOVGv6F5uqOZLy9b2e0FadGK01vZ7aZhiVdfS1ieaaiKtQXs0EGJ2-jACbZO1O-8Ime4GC4FVRcDjebb0AsmpTqSJMxScTXPjVEz-KXq5Mc8bT7Vb-uIWhUO=s0)

* * * * *

### Cloud Infrastructure:

We used AWS to provision all required resources, with a custom VPC which allowed us to keep our RDS private. We restricted access to our resources with an Internet Gateway only connected to our public subnet and kept our security group inbound rules tight to ensure security of the Cloud Infrastructure.![](https://lh3.googleusercontent.com/yC27QQiHgqtX48lQqkML_leoLMbLvDb5SdF1EaiEA623V0CoK4QaMIbly1kJZjSc4Rfc9D-txK_cP7VZRF9tZ37GqtePO2RVwJlNRDMVjNzgJrRcl9fXHL6beeiiJ7yIZChJt-Zx=s0)

* * * * *

### Build-Test-Deploy:

#### CI Server/Containerisation![](https://lh4.googleusercontent.com/f-T3Lf-8bRztYP9928-SfcxBrxf4JCUgPsvQ9PxfZ5K2AXMHPCZ4Y9hz6l6tHsamoLy8J07aXOY7VJdEZ-7WljQI1GwwZPfDPcVTpU8KxELTfD-ykpk8VTFaCUyJ30mz11hzhCxR=s0)

Prerequisites:

-   Docker, Docker-Compose, Jenkins, NGINX installed on EC2

-   Managed Database Server

We started by building the docker containers, frontend and backend, creating the individual Dockerfiles to create the docker images. The connection to our RDS was created through our docker-compose.yaml file in the root directory. The NGINX reverse proxy enabled user access on port 80 (as opposed to 5000), and increased security by restricting direct access to the application.

We automated the process through a Jenkins Pipeline project and a customised Jenkinsfile with three stages (Build, Test, Deploy). The application was unit tested using pytest and we archived artifacts for our test coverage reports.\
![](https://lh3.googleusercontent.com/fuzvlP8olxizfxd49Z8sRfaY9nHMy2_y5UI9Yh_PSyV1D1sjrbVOUzGWYnkUjLy0NdmmUCvobvKVH10SYdOWY2XIG1a5XvCJjXe5bvqvK3mZgZv6x2goCP1ytx5EWtz-Qlfnc_3A=s0)![](https://lh4.googleusercontent.com/ycADq8PLz8VCXV9h5DzdWkBm6S6At8CBqoFMGgep4PTQY5mLD226q1NPpB_7aLqc8Hkb5vBUpHiZCaj5DvR158ZdIprXeu7yFkF9rT4lbXwr8KnppUW4tzfmpokuGJiA_jIXiw4M=s0)

We set up global credentials within Jenkins for secret text strings, like our Database password, so that our passwords would be encrypted in our source code.\
![](https://lh3.googleusercontent.com/7uyiCekibjpz4-kptUOsm0izGoyJR3BI2WjNchQNRVCVsWshWrvH6mduXXYCRZ1nnsVNEmOtEeDyFGHa2a1vOMN_AFUiVMxV4nxSEt0UHI6-Zy9AOfUD9_J3NFqAKZFRko5U59Uo=s0)![](https://lh6.googleusercontent.com/Qw_RXjp6j7vQWEiBU7yHqodZXxNo-GOwJ9PgZ_AyQVi8ADmkX13fRasV5fU2L9eOgJVLB8nsySE21-I3Wp5nhU7-T7tw4x0T8QdzWEnpT2p18N1pcHNuDWAXLTq_wKp9YQksYL6J=s0)

We implemented a webhook to our GitHub repository so that we could achieve full automation and perform rolling updates triggered by pushes to main with no disruptions to the application.
