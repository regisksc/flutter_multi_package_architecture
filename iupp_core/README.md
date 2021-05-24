# core

A new Flutter package project.

# Testing

**Here at Zup we strongly endorse the test culture.** 

We do not force tests to cover a predetermined amount of code coverage. We believe it is the responsibility of the developer to test the parts of the code that he thinks are important.

We expect from our contributors *unit tests*, *widget tests* and *integration tests*. 

To facilitate the test, there is a script inside the scripts directory, called `runTests.sh`, executing it is enough to run all the tests of the module in question. This script also generate code coverage statistics and this info is generated on the coverage folder. For the script to run properly you need to have `lcov` installed on your machine.

# Logging
Our core provides a set of methods for logging values ​​and events to the console. A set of methods have been created to log specific events. 

We have 4 specific events:

 - logInfo: used to log general info    ![enter image description here](https://i.imgur.com/ZznNF8g.png)

 - logDebug: used to log info related to debug![enter image description here](https://i.imgur.com/YxeZUie.png)

 - logWarning: used to log info to catch the devs atention![enter image description here](https://i.imgur.com/FQruePe.png)

 - logError: used to log errors logs![enter image description here](https://i.imgur.com/dUj0xEi.png)


Feel free to add any logs you think are important to your module. The logs are only shown in debug mode, so we are free from the risk of logging excessive data in a productive environment.