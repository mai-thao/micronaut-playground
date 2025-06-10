# demo-app
Demoing the [Micronaut](https://micronaut.io/) framework with a basic web Demo App

### How to Create a Micronaut (MN) App
* Use the [Micronaut CLI](https://docs.micronaut.io/latest/guide/#cli)
  * Command syntax: `mn create-app <package> [OPTIONS]`
  * Command used for creating this demo app: `mn create-app com.example.demoapp --build=gradle --lang=kotlin`
* Alternatively, use the [Micronaut Launch](https://micronaut.io/launch/) (Web Interface)
  * Fill in the necessary details, configs, and dependencies
  * Click "Generate Project", select "Download Zip", and it'll download a zipped folder
  * Unzip the project, click into it, and run it from the command line

### How to Run the App
1) Run: `./gradlew run`
2) Open your web browser and navigate to http://localhost:8080/hello
3) You should see the String output: `Hello World`
4) Terminate the app with: Ctrl + C

### How to Build the app
1) Execute the command `./gradlew build`

### How to Test the app
1) Execute the command `./gradlew test`
