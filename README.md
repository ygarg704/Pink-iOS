# Pink+

Code Snippets and supporting documentation for the Pink+.

To beta test the app using TestFlight, click [here](https://testflight.apple.com/join/EtgAcnax).

## About Pink+

![App Screenshots](https://raw.githubusercontent.com/skhiearth/Pink-iOS/master/Screenshots/App%20Screenshots.png?token=AIZPUXILU7AU4PJERQU4HW27QPX34)

### VIDEO WALKTHROUGHS:

For a detailed video explanation with voice-over, click [here](https://www.youtube.com/watch?v=L1d9DSalAQ0).

For App Walkthrough, working demo and overview of features, click [here](https://www.youtube.com/watch?v=G9onOfe3vEs&t=22s).

### INSPIRATION: 
Health being a critical component of our lives, especially in the current scenario, we have been inspired by numerous scientific and technological efforts across the globe to address the concerns revolving around Breast cancer thereby, igniting us into developing our app Pink+ 

### APP STRUCTURE: (Pink+ functionalities)
1. Wellness: Provides symptom logging, risk assessment, and ML-based diagnosis using Cytology Reports and screening examinations using Blood Test
 Reports. 
2. Support groups: They're divided on the basis of location and user segment. We believe this can help link together people of same interests together, and also help bring people who can help each other under a common umbrella. To ensure we still achieve our wider goal of catering to a global population, both kinds of divisions have a global room, accessible to all.
3. Survivor stories: Platform for survivors to share their poignant stories and guide patients in support groups that'll help others on a similar journey.
4. Breast cancer education: We can reduce the stigma of Breast cancer through enhanced cancer education. The intended purpose of this section is for professionals to upload educational content about Breast Cancer
5. Campaigns: To have comprehensive global coverage, we chose four ways that’ll have an effective outreach and will raise awareness about detection, treatment, and the need for a reliable, permanent cure.

### IMPLEMENTATION:
* Mobile Application and Watch Tracker: iOS, watchOS and iPadOS written in Swift with CocoaPods dependencies
* Database: Firebase Realtime Database
* UI Elements: Sketch and Adobe XD

### CHALLENGES:
* Even after repeated hyper-parameter tuning, we couldn’t push the accuracy past 75%.

### ACCOMPLISHMENTS:
* A custom blockchain is implemented in-app using Swift to store user health data record, further strengthening data security
* ML Models: Flask app deployed on Heroku
* Minified Gail-Model: First of its kind, written natively in Swift, accuracy within 1% of BCRAT
* Creating a forum, collaborate, for researchers, scientists and people alike to discuss and collaborate
* Instagram Filter: Has been approved by Instagram and is now a part of the public library 
* Individuals can use Symptom Logging to log their day-to-day health and share it with anyone, using any application of their choice, be it Mail or Instant Messaging.

### WHAT WE LEARNT:
* Data analysis  
* Coordination 
* Perseverance

### FUTURE ROADMAP:
1. Fundraising: Collaborative scheme is one of the ways by which we shall raise funds. Following 3C Model (Cooperation, Coordination, Collaboration) we shall create a global crowdfunding community for non-profitable organisations, donors, and companies. Moving the needle requires identification of a potential collaborative partner, in our case, the following could be our channel partners: 
 * Pharmaceutical companies
 * Med apps
 * Surgical instrument manufacturer
 * Diagnostic companies (including online)
 * National & International NGO’s

2. Mammography: Self-diagnosing medical imaging of mammography tests using our Deep Learning models. 

3.	Multi-platform extension: 
 * Android app development 
 * Website 
 * Multi-lingual support 
 
4.	Additional campaigns: Exploring sports and gaming industry.

## Requirements

#### Hardware

* MacBook, Mac Mini, iMac, Mac Pro or any other variant running macOS 10.15.4 (Catalina) or later.
* Atleast 4GB of RAM recommended (For running on Simulator)
* An iPhone or iPad running iOS/iPadOS 14.0 or later. (For running on physical device)
* An Apple Watch running watchOS 7.0 or later. (For running on physical device)

#### Software

* Xcode version 12.0
* Xcode Command Line Tools
* CocoaPods

#### Instructions

Clone the GitHub repo on your local machine. Navigate to the project folder in the terminal and run `pod install` to install dependencies. Open the workspace in Xcode, configure the profiles and hit run for the simulator to load up. For testing the Watch Tracker, change the target to the Pink+ Tracker and hit run.

Made with ❤️ by [Aditya](https://github.com/adicadi), [Arpit](https://github.com/glitcheritzu), [Ramanuj](https://github.com/ramanujs3), [Simran](https://github.com/simmsss), [Utkarsh](https://github.com/skhiearth), and [Yash](https://github.com/ygarg704)
