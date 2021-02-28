This project prototype currently consists of 2 models: 
Challenger which defines a challenger having attributes 
String name, 
String uid,
int points 

ChallengeMatch which defines a match between 2 challenges having attributes
Challenger contender,
Challenger defender,
bool isCompleted
Where the contender is the challenge initiater, defender is the randomly chosen challenger the match is against and isCompleted refers to the status of the match, true being the match completed by the challengers.