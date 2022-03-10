#ODIN SMART APP

##Presentation
  Imagine an environment. An environment where you can direct your life with a single device or even an application you have installed on your phone. You can learn the charging status of your car, as well as an environment where you can track the location of your car and the nearest charging stations. You don't need the TV remote anymore. Your remote control can now disappear wherever it wants because you no longer need it. You can turn your home's lights on and off, and tell them what time to turn on and off. You can apply the same process to your curtains or anything that may be related to light. Forgot to turn off the power supplies when leaving the house? this is no longer a problem. this app will do that for you. Apart from these, you can access security cameras even when you are away from your home. This way, your mind will not be left behind. This application is also very suitable for development and any feature you can think of can be added.

##Technical Part
  In practice, attention was paid to the concept of clean code in general. Code repetitions are avoided as much as possible. The customized MVVM pattern is blended with the BLoC structure. The testability of the written codes has been meticulously emphasized. TDD was not implemented due to time constraints, but unit tests were written later. Firebase Authentication and Firebase Realtime Database are generally used as services. A different url is used just to access the weather data. The database structure used in the service structure is presented in the application as "assets/db.json". The concept of Abstraction from the Application has not been used in general due to time constraints, but it will be easy to transition to a structure where this abstraction is used more intensively through the folder structure designed in accordance with the Clean Architecture. It is designed in such a way that the devices integrated into the application have a connection to the internet through a manager and communicate from there. For example, all these devices can be managed by a device connected to the power input. It is also designed that it communicates via a chip developed for complex systems such as television and vehicles, and this is done over the internet. In addition, the bluetooth feature could be used for some devices, but since we needed the device for testing, this was suspended and communication on the internet was taken as a basis. While the main screen is loading, data is drawn from the remote data source for almost all features. In order for this to work healthily and quickly, the concepts of Multi-Threading and Isolate were used while extracting data. A live video on Youtube was chosen as camera tests.

##Packages Used in the Application

###Firebase Services:
- firebase_core
- firebase_auth
###Localization:
- easy_localization
###State Management
- flutter_bloc
###Location Services
- google_maps_flutter
- geolocator
###Dependency Injection
- get_it
###Remote Datasource
- http
###Presenting Video Streams
- youtube_player_flutter
###Test
- mockito

##Upgradeable Parts

- The structure was created for local languages, but it was not used due to time constraints.
- Considered to manage power sources separately, but not done due to time constraints
- TouchPad feature was considered for Remote Controller but not made due to time constraints
- It was planned to add different devices, but could not be done due to time constraints.
- A quick study was carried out as a design. Icons, sizes and colors may change in the future, but the general architecture is considered appropriate.


##Screenshots
