# Forensic Challenges and Data

Howdy All! Every so often—never mind how often precisely—having signed myself up for or having nothing particular to interest me in my other hobbies, I thought I would create some Forensics CTFs, Challenges, Data, etc and wade into giving back to the forensics community. It is a way I have of driving off the stagnation of life and reinvigorating my love of this field.

Enclosed are my challenges, faults and all.

I have attempted to keep this repo neat, tidy, and aproachable. Get started by reading the tables of contents, and navigating to a challenge.



# Table of Contents

| Date        | Title                                    | Challenge Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| ----------- | ---------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Fall 2020   | Central New York Hackathon Forensics CTF | A collection of 6 CTF style questions based on a simple IR scenario. The case involves a Windows Server and a Windows 10 Workstation. Players learn about the importance of timestamps, conversion, processes, eventlogs, execution artifacts, timelining, working with triage data, and more! Raw data in both KAPE Collections and Redline packages are provided as well for both systems. [Readme Here.](Central%20New%20York%20Hackathons/2020-Fall/2020-FORENSICS-START-HERE.MD) |
| Spring 2021 | Central New York Hackathon Forensics CTF | A collection of 6 CTF style questions based on a Jenkins Data Directory. The case has a few log analysis questions, however mainly focuses on the Jenkins Pipelines/Jobs data present. Raw Data for the Ubuntu server via a CyLR collection, and a memory capture via AVML are present. The Docker logs and /var/jenkins_home directory are available for the Jenkins Docker Container.  [Readme Here.](Central%20New%20York%20Hackathons/2021-Spring/2021-SPRING-START-HERE.md)     |



# Additional Stuff / Links

| Links                                                                                               | Notes                                                                                                                                                                               |
| --------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Lessons Learned](Lessons_learned.md)                                                            | I will not claim to have a lot of knowledge or really even have good challenges. I try to keep a running list of all the stuff I have learned.                                      |
| [Homelab Setup](https://medium.com/@liamcs98/functional-proxmox-homelab-framework-1bc7a68cc559)   | I documented my homelab configuration here. The main purpose of my homelab these days is to run an environment to these challenges, and host infrastructure for attack and defense. |
| [AVML](https://github.com/microsoft/avml)                                                         | AVML is Microsoft’s Linux Memory Capture tool.                                                                                                                                      |
| [KAPE](https://www.kroll.com/en/insights/publications/cyber/kroll-artifact-parser-extractor-kape) | KAPE is a fantastic collector and parsing tool.                                                                                                                                     |
| [CyLR](https://github.com/orlikoski/CyLR)                                                         | While CyLR is no longer actively maintained, it is still a really fast, easy, lightweight collection tool.                                                                          |
| [Redline](https://www.fireeye.com/services/freeware/redline.html)                                 | Redline is both a very decent collection tool and powerfull analysis platform. This makes timeline analysis pretty easy and fun.                                                    |